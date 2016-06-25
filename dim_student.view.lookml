- view: dim_user
  label: 'Student'
  sql_table_name: dw.dim_user
  fields:
  
  - dimension: user_guid
    type: string
    sql: ${TABLE}.USER_GUID
    primary_key: true
    links:
    - label: Analytics Diagnostic Tool
      url: https://analytics-tools.cengage.info/diagnostictool/#/user/view/production/userIdentifier/{{ value }}
    
  - measure: count
    label: 'No. of students'
    type: count
   
