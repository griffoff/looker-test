- view: et_narrative
  label: 'Engagement Toolkit - Time Spent'
  sql_table_name: DW.ET_NARRATIVE
  fields:

  - dimension: narrative_general
    label: 'General Narrative'
    type: string
    sql: ${TABLE}.NARRATIVE
    html: |
      <h1 style="word-wrap: break-word;">{{ value }}</h1>

  - dimension: narrative_level
    label: 'Narrative Level'
    type: string
    sql: ${TABLE}.NARRATIVE_LEVEL
    
  - dimension: coursekey
    type: string
    hidden: true
    sql: ${TABLE}.coursekey

  - measure: count
    type: count
    drill_fields: []


