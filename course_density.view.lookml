- view: course_density
  sql_table_name: DW.COURSE_DENSITY
  fields:

  - dimension: coursekey
    type: string
    primary_key: true    
    sql: ${TABLE}.COURSEKEY

  - dimension: density
    type: string
    sql: ${TABLE}.DENSITY
    
  - dimension: density_tier    
    type: tier
    style: relational
    tiers: [0,.01,.02,.03,.04,.05,.06,.07,.08,.09,.1,.2,.3,.4,.5,.6,.7,.8,.9,1]
    sql: ${TABLE}.DENSITY      


  - measure: mdensity
    type: average
    sql: ${TABLE}.DENSITY
    
  - measure: count
    type: count
    drill_fields: []

