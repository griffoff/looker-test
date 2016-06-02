- view: student_course_octant
  sql_table_name: DW.STUDENT_COURSE_OCTANT
  fields:

  - measure: avg_score
    type: average
    sql: ${TABLE}.AVG_SCORE

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - dimension: octant_4week
    type: string
    sql: ${TABLE}.octant_4week
  
  - dimension: octant1
    type: string
    sql: ${TABLE}.OCTANT1

  - dimension: octant2
    type: string
    sql: ${TABLE}.OCTANT2
  
  - dimension: octant3
    type: string
    sql: ${TABLE}.OCTANT3

  - dimension: octant4
    type: string
    sql: ${TABLE}.OCTANT4

  - dimension: octant5
    type: string
    sql: ${TABLE}.OCTANT5

  - dimension: octant6
    type: string
    sql: ${TABLE}.OCTANT6

  - dimension: octant7
    type: string
    sql: ${TABLE}.OCTANT7

  - dimension: octant8
    type: string
    sql: ${TABLE}.OCTANT8

  - dimension: octant9
    type: string
    sql: ${TABLE}.OCTANT9
  
  - dimension: octant10
    type: string
    sql: ${TABLE}.OCTANT10

  - dimension: octant11
    type: string
    sql: ${TABLE}.OCTANT11

  - dimension: octant12
    type: string
    sql: ${TABLE}.OCTANT12

  - dimension: octant13
    type: string
    sql: ${TABLE}.OCTANT13

  - dimension: octant14
    type: string
    sql: ${TABLE}.OCTANT14

  - dimension: octant15
    type: string
    sql: ${TABLE}.OCTANT15

  - dimension: octant16
    type: string
    sql: ${TABLE}.OCTANT16

  - dimension: octant17
    type: string
    sql: ${TABLE}.OCTANT17

  - dimension: octant18
    type: string
    sql: ${TABLE}.OCTANT18

  - dimension: octant19
    type: string
    sql: ${TABLE}.OCTANT19

  - dimension: octant20
    type: string
    sql: ${TABLE}.OCTANT20

  - dimension: octant21
    type: string
    sql: ${TABLE}.OCTANT21

  - dimension: octant22
    type: string
    sql: ${TABLE}.OCTANT22

  - dimension: octant23
    type: string
    sql: ${TABLE}.OCTANT23

  - dimension: octant24
    type: string
    sql: ${TABLE}.OCTANT24

  - dimension: octant25
    type: string
    sql: ${TABLE}.OCTANT25

  - dimension: octant26
    type: string
    sql: ${TABLE}.OCTANT26

  - dimension: octant27
    type: string
    sql: ${TABLE}.OCTANT27

  - dimension: octant28
    type: string
    sql: ${TABLE}.OCTANT28

  - dimension: octant29
    type: string
    sql: ${TABLE}.OCTANT29

  - dimension: octant30
    type: string
    sql: ${TABLE}.OCTANT30

  - dimension: user_guid
    type: string
    sql: ${TABLE}.USER_GUID

  - measure: count
    type: count
    drill_fields: []

