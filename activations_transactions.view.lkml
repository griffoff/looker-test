view: activations_transactions {
  derived_table: {
    sql:
    with cu_flags as (
        select 0 as trial, 0 as trial_change, 0 as cu, 0 as cu_pay, 'No sub or trial' as cu_flag_status
        union select 0, 1, 0, 0, 'Start trial'
        union select 1, 0, 0, 0, 'Active trial'
        union select 1, -1, 0, 0, 'Trial Expires'
        union select 1, -1, 0, 1, 'Convert trial to sub'
        union select 0, 0, 0, 1, 'Subscription without trial'
        union select 0, 0, 1, 0, 'Active Subscription'
        union select 0, 0, 1, -1, 'Subscription ends'
        union select 0, 1, 1, -1, 'Go back to trial'
      )
      ,grace_flags as (
        select 1 as grace, 0 as grace_change, 'Grace period is active' as grace_period_status
        union select 0, 0, 'No grace period/grace period inactive'
        union select 1, -1, 'Grace period ends'
        union select 0, 1, 'Grace period starts'
      )
      ,alc_flags as (
        select 0 as alc, 0 as alc_pay, 'No valid ALC payment' as alc_flag_status
        union select 0, 1, 'Add ALC Access (Access Code, IA License)'
        union select 1, 0, 'Has valid ALC access'
        union select 1, -1, 'ALC access cancelled'
      )
      ,product_access as (
        select 0 as has_product, 1 as product_access, 'add a product/enroll in a course' as product_access_change_description
        union select 1, -1, 'remove product/unenroll'
        union select 1, 1, 'add another product/enrollment'
        union select 0, 0, 'no product change - payment only (buy trial, apply access code to no course)'
      )
      ,invalid_combinations as (
        select 0 as trial, 0 as trial_change, 0 as cu, 0 as cu_pay, 0 as grace, 0 as grace_change, 0 as alc, 0 as alc_pay, 0 as has_product, 0 as product_access, 'Nothing happened!' as invalid_description
        union select null, null, null, 1, null, null, null, 1, null, null, 'Can''t add ALC and CU in one event'
        union select null, null, null, -1, null, null, null, -1, null, null, 'Can''t remove ALC and CU in one event'
        union select null, null, null, 1, null, null, null, null, null, -1, 'Can''t remove / unenroll at the same time as buying a subscription'
        /*
        union select 0,0,0,0,0, -1,1,0, 'Can''t remove / unenroll at the same time as buying a subscription'
        union select 0,0,0,0,0, 1,1,0, 'Can''t add product / enroll at the same time as buying a subscription'
        union select 0,0,0,0,0, -1,0,1, 'Can''t remove product / unenroll at the same time as applying an access code'
        union select 0,0,0,0,0, 1,0,1, 'Can''t add product / enroll at the same time as applying an access code ?? is this true?'
        union select 0,0,0,0,1,null,null,null, 'Can''t have access to a product without a method of having access (i.e. trial, sub, grace period, etc.)'
        union select null,1,null,null,null,null,1,null, 'Can''t pay for a subscription if you already have one'
        union select 1,1,null,null,null,null,null,null, 'Can''t have a trial and subscription at the same time'
        union select null, null, null, null, 0, -1, null, 0, 'Can''t remove a product if you don''t have access to one'
        union select null, null, null, null, null, -1, 1, null, 'Can''t make product access modifications while applying/removing CU payment'
        union select null, null, null, null, null, 1, 1, null, 'Can''t make product access modifications while applying/removing CU payment'
        union select null, null, null, null, null, -1, -1, null, 'Can''t make product access modifications while applying/removing CU payment'
        union select null, null, null, null, null, 1, -1, null, 'Can''t make product access modifications while applying/removing CU payment'
        union select null, null, null, null, null, -1, 0, 1, 'Can''t remove a product while paying for ALC'
        union select null, null, null, null, null, -1, 1, 1, 'Can''t remove a product while paying for ALC'
        */
      )
      select
          cu_flags.*
          ,grace_flags.*
          ,alc_flags.*
          ,product_access.*
          ,i.invalid_description
      from cu_flags
      cross join grace_flags
      cross join alc_flags
      cross join product_access
      left join invalid_combinations i on (cu_flags.trial, cu_flags.trial_change, cu_flags.cu, cu_flags.cu_pay, grace_flags.grace, grace_flags.grace_change, alc_flags.alc, alc_flags.alc_pay, product_access.has_product, product_access.product_access)
                                        = (coalesce(i.trial, cu_flags.trial)
                                          ,coalesce(i.trial_change, cu_flags.trial_change)
                                          ,coalesce(i.cu, cu_flags.cu)
                                          ,coalesce(i.cu_pay, cu_flags.cu_pay)
                                          ,coalesce(i.grace, grace_flags.grace)
                                          ,coalesce(i.grace_change, grace_flags.grace_change)
                                          ,coalesce(i.alc, alc_flags.alc)
                                          ,coalesce(i.alc_pay, alc_flags.alc_pay)
                                          ,coalesce(i.has_product, product_access.has_product)
                                          ,coalesce(i.product_access, product_access.product_access)
                                          )
      order by 1, 2, 3, 4, 5
 ;;
  }

  dimension: invalid_description {
    label: "Invalid?"
    description: "Description of invalid combination of flags"
    type: string
  }
  dimension: cu_flag_status {
    label: "CU state description"
    group_label: "CU Status"
    }
  dimension: cu {
    group_label: "CU Status"
    label: "Has Current CU Subscription"
    description: "flag representing the current state of paid CU subscription"
    type: number
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }
  dimension: trial {
    group_label: "CU Status"
    label: "Has Current CU Trial"
    description: "flag representing the currennt status of trial CU Subscription"
    type: number
    sql: ${TABLE}."TRIAL" ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }
  dimension: trial_change {
    group_label: "CU Status"
    label: "Trial Change"
    description: "flag representing the change in state of trial CU Subscription"
    type: number
    html: <p style=
          {% if value > 0 %}
          "text-align: center; color: white; background-color: lightgreen;"
          {% elsif value < 0 %}
          "text-align: center; color: white; background-color: darkred;"
          {% else %}
          "text-align: center; color: black; background-color: goldenrod;"
          {% endif %}
          >{{ rendered_value }}
          ;;
  }
  dimension: cu_pay {
    group_label: "CU Status"
    label: "Applying CU Payment"
    description: "flag representing a CU subscription transaction"
    type: number
    sql: ${TABLE}."CU_PAY" ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }

  dimension: grace_period_status {
    label: "Grace period state description"
    group_label: "Grace period status"
  }
  dimension: grace {
    label: "Grace period is active"
    group_label: "Grace period status"
    description: "flag representing the current state of the product's grace period"
    type: number
    sql: ${TABLE}."GRACE" ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }
  dimension: grace_change {
    label: "Grace period change status"
    group_label: "Grace period status"
    description: "flag representing the change in state of the product's grace period"
    type: number
    html: <p style=
          {% if value > 0 %}
          "text-align: center; color: white; background-color: lightgreen;"
          {% elsif value < 0 %}
          "text-align: center; color: white; background-color: darkred;"
          {% else %}
          "text-align: center; color: black; background-color: goldenrod;"
          {% endif %}
          >{{ rendered_value }}
          ;;
  }
  dimension: product_access_change_description {group_label: "Product access"}
  dimension: has_product {
    group_label: "Product access"
    label: "Has access to product currently"
    description: "Flag representing the current state of access to a product (through enrollment, cu trial, access code, grace period, etc.)"
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }
  dimension: product_access {
    group_label: "Product access"
    label: "Adding a product"
    description: "flag representing the net change in product access (adding/removing from dashboard, etc.)"
    type: number
    sql: ${TABLE}."PRODUCT_ACCESS" ;;
    html: <p style=
          {% if value > 0 %}
          "text-align: center; color: white; background-color: lightgreen;"
          {% elsif value < 0 %}
          "text-align: center; color: white; background-color: darkred;"
          {% else %}
          "text-align: center; color: black; background-color: goldenrod;"
          {% endif %}
          >{{ rendered_value }}
          ;;
  }

  dimension: alc_flag_status {group_label: "ALC Status" label: "ALC state description"}
  dimension: alc {
    label: "Has current valid access code"
    group_label: "ALC Status"
    description: "flag representing current status of a' la carte access"
    type: number
    sql: IFF(alc_pay = -1, 1, ${TABLE}."ALC") ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }

  dimension: alc_pay {
    group_label: "ALC Status"
    label: "Applying ALC Payment"
    description: "flag representing an a' la carte payment transaction (access code, IA license, etc.)"
    type: number
    sql: ${TABLE}."ALC_PAY" ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }

  measure: paid_access {
    group_label: "Output Calcs"
    description: "calculation representing the net change in paid access based on the other flags"
    type: max
    #sql: greatest(${alc}, ${sub}) * IFF(${product_access} = 0, (${cu_pay} + ${alc_pay}), ${product_access}) ;;
    sql: greatest(${alc}, ${cu}) * IFF(${product_access} = 0, (${cu_pay} + ${alc_pay}), ${product_access}) ;;
    html: <p style=
        {% if value > 0 %}
         "text-align: center; color: white; background-color: lightgreen;"
        {% elsif value < 0 %}
          "text-align: center; color: white; background-color: darkred;"
        {% else %}
          "text-align: center; color: black; background-color: goldenrod;"
        {% endif %}
        >{{ rendered_value }}
        ;;
  }

  measure: unpaid_access {
    group_label: "Output Calcs"
    description: " calculation representing the net change in unpaid access based on the other flags"
    type: max
    sql: greatest(${trial}, ${grace}) * ${product_access} * (${cu_pay} + ${alc_pay}) ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }

  measure: units_sold {
    group_label: "Output Calcs"
    description: " calculation representing the net change in units sold ('activations') based on the other flags"
    type: max
    sql: (${cu_pay} + ${alc_pay}) ;;
    html: <p style=
    {% if value > 0 %}
    "text-align: center; color: white; background-color: lightgreen;"
    {% elsif value < 0 %}
    "text-align: center; color: white; background-color: darkred;"
    {% else %}
    "text-align: center; color: black; background-color: goldenrod;"
    {% endif %}
    >{{ rendered_value }}
    ;;
  }

}
