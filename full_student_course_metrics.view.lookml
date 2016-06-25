- view: full_student_course_metrics
  sql_table_name: DW.FULL_STUDENT_COURSE_METRICS
  fields:

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - measure: duration
    type: average
    sql: ${TABLE}.DURATION

  - measure: flashcard_count
    type: average
    sql: ${TABLE}.FLASHCARD_COUNT
    
  - measure: search_count
    type: average
    sql: ${TABLE}.search_COUNT    

  - measure: frequency
    type: average
    sql: ${TABLE}.FREQUENCY

  - measure: gap_week
    type: average
    sql: ${TABLE}.GAP_WEEK

  - measure: highlight_count
    type: average
    sql: ${TABLE}.HIGHLIGHT_COUNT

  - measure: intensity
    type: average
    sql: ${TABLE}.INTENSITY

  - measure: login_count
    type: average
    sql: ${TABLE}.LOGIN_COUNT

  - dimension: octant
    type: string
    sql: ${TABLE}.OCTANT

  - measure: pages_read
    type: average
    sql: ${TABLE}.PAGES_READ

  - measure: reading_count
    type: average
    sql: ${TABLE}.READING_COUNT

  - measure: recency
    type: average
    sql: ${TABLE}.RECENCY

  - measure: score
    type: average
    sql: ${TABLE}.SCORE
    
  - measure: Final_score
    type: average
    sql: ${TABLE}.final_score    

  - dimension: type_of_student
    type: string
    sql: ${TABLE}.Weekly_TYPE_OF_STUDENT
    
  - dimension: type_of_student_sort
    type: number
    sql: case when Weekly_TYPE_OF_STUDENT = 'good' then 1 when Weekly_TYPE_OF_STUDENT = 'average' then 2 when Weekly_TYPE_OF_STUDENT = 'below-average' then 3 when Weekly_TYPE_OF_STUDENT = 'no-grade' then 4 when Weekly_TYPE_OF_STUDENT = 'no-interactions' then 5 end     
    
    
  - dimension: final_type_of_student
    type: string
    sql: ${TABLE}.Final_TYPE_OF_STUDENT 
    order_by_field: final_type_of_student_sort
        
  - dimension: final_type_of_student_sort
    type: number
    sql: case when final_type_of_Student = 'good' then 1 when final_type_of_Student = 'average' then 2 when final_type_of_Student = 'below-average' then 3 end 
    
  - dimension: initial_type_of_student
    type: string
    sql: ${TABLE}.Initial_Type_of_Student
    order_by_field: initial_type_of_student_sort    
    
  - dimension: initial_type_of_student_sort
    type: number
    sql: case when initial_type_of_student = 'good' then 1 when initial_type_of_student = 'average' then 2 when initial_type_of_student = 'below-average' then 3 when initial_type_of_student = 'no-grade' then 4 when initial_type_of_student = 'no-interactions' then 5 end     

  - dimension: Students_Who_End_Up 
    type: string
    sql: ${TABLE}.final_label        


  - dimension: user_guid
    type: string
    sql: ${TABLE}.USER_GUID

  - dimension: weeksname
    type: string
    sql: ${TABLE}.WEEKSNAME
    order_by_field: weeksnamesort
        
  - dimension: weeksnamesort
    type: number
    sql: split_part(weeksname, ' ', 2)::int

  - measure: count
    type: count
    drill_fields: [weeksname]
    
  - measure: highlight_diff
    type: number
    sql: (avg(case when Final_TYPE_OF_STUDENT = 'good' then highlight_count end)/avg(case when Final_TYPE_OF_STUDENT = 'below-average' then highlight_count end))-1
    value_format: 0.0%
    
  - measure: login_diff
    type: number
    sql: (avg(case when Final_TYPE_OF_STUDENT = 'good' then login_count end)/avg(case when Final_TYPE_OF_STUDENT = 'below-average' then login_count end))-1
    value_format: 0.0%
    
  - measure: flashcard_count_diff
    type: number
    sql: (avg(case when Final_TYPE_OF_STUDENT = 'good' then flashcard_count end)/avg(case when Final_TYPE_OF_STUDENT = 'below-average' then flashcard_count end))-1
    value_format: 0.0%
    
  - measure: reading_count_diff
    type: number
    sql: (avg(case when Final_TYPE_OF_STUDENT = 'good' then reading_count end)/avg(case when Final_TYPE_OF_STUDENT = 'below-average' then reading_count end))-1
    value_format: 0.0%

  - measure: good_count
    type: number
    sql: sum(case when Final_TYPE_OF_STUDENT = 'good' then 1 end)

  - measure: below_average_count
    type: number
    sql: sum(case when Final_TYPE_OF_STUDENT = 'below-average' then 1 end)
      

  - measure: Weekly_Good_Count
    type: number
    alias: WGood
    sql: sum(case when Weekly_TYPE_OF_STUDENT = 'good' then 1 end)

  - measure: Weekly_Below_Average_Count
    type: number
    alias: WBelowAverage
    sql: sum(case when Weekly_TYPE_OF_STUDENT = 'below-average' then 1 end)      

