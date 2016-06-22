- view: et_narrative_discipline
  label: 'Engagement Toolkit - Time Spent'
  sql_table_name: DW.ET_NARRATIVE_DISCIPLINE
  fields:

  - dimension: discipline
    type: string
    hidden: true
    sql: ${TABLE}.DISCIPLINE

  - dimension: narrative_discipline
    label: 'Discipline Level Narrative'
    type: string
    sql: ${TABLE}.NARRATIVE
    html: |
      <span style="word-wrap: break-word;">{{ value }}</span>

  - measure: count
    type: count
    drill_fields: []

