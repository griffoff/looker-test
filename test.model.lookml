- connection: snowflake_dw

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: dim_activity
  joins:
    - join: fact_activity
      foreign_key: dim_activity.activityid

- explore: dim_course
  joins:
    - join: dim_date
      sql_on: dim_course.startdatekey = dim_date.datekey
      relationship: many_to_one
    - join: dim_product
      relationship: many_to_one
      foreign_key: dim_course.productid

- explore: dim_date

- explore: dim_institution

- explore: dim_instructor

- explore: dim_learningobjective

- explore: dim_product

- explore: dim_productplatform

- explore: dim_relativedate

- explore: dim_scorecategory

- explore: dim_student

- explore: dim_time

- explore: fact_resourceinteraction
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
  joins:
    - join: dim_student
      sql_on: fact_activityaggregate.guid = dim_student.student_guid
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
      
- explore: fact_learningobjective
  joins:
    - join: dim_learningobjective
      foreign_key: fact_learningobjective.learningobjectiveid
      relationship: many_to_one
      
- explore: map_activity_type

- explore: student_course_metrics
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: student_course_metrics.coursekey = dim_course.coursekey
    - join: dim_product
      relationship: many_to_one
      foreign_key: dim_course.productid
    - join: dim_date
      view_label: 'Course Start Date'
      relationship: many_to_one
      foreign_key: dim_course.startdatekey
      
- explore: full_student_course_metrics
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: student_course_metrics.coursekey = dim_course.coursekey
    - join: dim_product
      relationship: many_to_one
      foreign_key: dim_course.productid
    - join: dim_date
      view_label: 'Course Start Date'
      relationship: many_to_one
      foreign_key: dim_course.startdatekey   
      
- explore: student_course_octant
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: student_course_octant.coursekey = dim_course.coursekey
    - join: dim_product
      relationship: many_to_one
      foreign_key: dim_course.productid



