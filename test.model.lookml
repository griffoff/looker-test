- connection: snowflake_prod
- label: 'Cengage Data on Snowflake'

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: dim_product
  hidden: true

- explore: dim_course
  extension: required
  joins:
    - join: dim_start_date 
      sql_on: ${dim_course.startdatekey} = ${dim_start_date.datekey}
      relationship: many_to_one
    - join: dim_end_date 
      sql_on: ${dim_course.enddatekey} = ${dim_end_date.datekey}
      relationship: many_to_one
    - join: dim_product
      relationship: many_to_one
      sql_on: ${dim_course.productid} = ${dim_product.productid}
    - join: dim_productplatform
      relationship: many_to_one
      sql_on: ${dim_course.productplatformid} = ${dim_productplatform.productplatformid}

- explore: dim_course_rs
  extension: required
  joins:
    - join: dim_start_date 
      sql_on: ${dim_course_rs.startdatekey} = ${dim_start_date.datekey}
      relationship: many_to_one
    - join: dim_end_date 
      sql_on: ${dim_course_rs.enddatekey} = ${dim_end_date.datekey}
      relationship: many_to_one
    - join: dim_product
      relationship: many_to_one
      sql_on: ${dim_course_rs.productid} = ${dim_product.productid}
    - join: dim_productplatform
      relationship: many_to_one
      sql_on: ${dim_course_rs.productplatformid} = ${dim_productplatform.productplatformid}

- explore: dim_user
  extension: required
  joins:
    - join: student_attributes
      sql_on: ${user_guid} = ${student_attributes.user_guid}
      relationship: one_to_one
      type: left_outer

- explore: fact_resourceinteraction
  label: 'Covalent - Resource Interactions'
  joins:
    - join: dim_student
      sql_on: fact_resourceinteraction.guid = dim_student.student_guid
      relationship: many_to_one
    - join: dim_course
      sql_on: fact_resourceinteraction.coursekey = dim_course.coursekey
      relationship: many_to_one
    - join: dim_institution
      foreign_key: dim_course.institutionid
      relationship: many_to_one
    - join: dim_product 
      foreign_key: dim_course.productid
      relationship: many_to_one
      
- explore: fact_activityaggregate
  label: 'Covalent - Activity Aggregates'
  joins:
    - join: dim_student
      sql_on: fact_activityaggregate.guid = dim_student.user_guid
      relationship: many_to_one
    - join: dim_course
      sql_on: fact_activityaggregate.coursekey = dim_course.coursekey
      relationship: many_to_one
    - join: dim_institution
      foreign_key: dim_course.institutionid
      relationship: many_to_one
    - join: dim_product 
      foreign_key: dim_course.productid
      relationship: many_to_one
    
- explore: fact_activity
  label: 'DevMath - Activities and Learning Objectives'
  joins:
    - join: fact_learningobjective
      sql_on: fact_activity.courseid=fact_learningobjective.courseid and fact_activity.institutionid=fact_learningobjective.institutionid and fact_activity.instructorid=fact_learningobjective.instructorid and fact_activity.studentid=fact_learningobjective.studentid and fact_activity.activityid=fact_learningobjective.activityid
      relationship: many_to_one
    - join: dim_institution
      foreign_key: fact_activity.institutionid
      relationship: many_to_one
    - join: dim_student
      foreign_key: fact_activity.studentid
      relationship: many_to_one
    - join: dim_course_rs
      foreign_key: fact_activity.courseid
      relationship: many_to_one
    - join: dim_activity
      foreign_key: fact_activity.activityid
      relationship: many_to_one
    - join: dim_product
      foreign_key: fact_activity.productid
      relationship: many_to_one
    - join: dim_date 
      foreign_key: fact_activity.activitystartdatekey
      relationship: many_to_one
    - join: dim_learningobjective
      foreign_key: fact_learningobjective.learningobjectiveid
      relationship: many_to_one
      
- explore: student_course_metrics
  label: 'Data Science - Student Course Metrics'
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
      
- explore: student_course_octant
  label: 'Data Science - Student Course Octants'
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}

- explore: rch_studentinteraction
  label: 'Data Science - All Student Interactions'
  extends: [dim_course, dim_user]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: dim_user
      relationship: many_to_one
      sql_on: ${user_guid} = ${dim_user.user_guid}
    - join: dim_relative_to_start_date
      relationship: many_to_one
      sql_on: ${day_of_course} = ${dim_relative_to_start_date.days}

- explore: et_report1
  label: 'Engagement Toolkit - Report1'
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: et_narrative
      relationship: many_to_one
      sql_on: ${coursekey} = ${et_narrative.coursekey}
    - join: full_student_course_metrics
      relationship: one_to_one
      sql_on: ${coursekey} = ${full_student_course_metrics.coursekey} and ${user_guid} = ${full_student_course_metrics.user_guid}
    
- explore: et_narrative
  label: 'Engagement Toolkit - Narratives'
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: et_report1
      relationship: one_to_many
      sql_on: ${coursekey} = ${et_report1.coursekey}
      
- explore: full_student_course_metrics
  label: 'Data Science - Full Student Course Metrics'
  extends: [dim_course, dim_user]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: dim_user
      sql_on: ${user_guid} = ${dim_user.user_guid}
      relationship: many_to_one
  