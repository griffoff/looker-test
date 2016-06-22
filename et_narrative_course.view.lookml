- view: et_narrative_course
  label: 'Engagement Toolkit - Time Spent'
  sql_table_name: DW.ET_NARRATIVE_COURSE
  fields:

  - dimension: narrative_course
    label: 'Course Level Narrative'
    type: string
    sql: ${TABLE}.NARRATIVE
    html: |
      <span style="word-wrap: break-word;">{{ value }}</span>

  - dimension: title
    type: string
    hidden: true
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: []

