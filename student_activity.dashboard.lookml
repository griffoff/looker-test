- dashboard: student_activity
  title: Student Activity
  layout: grid
  rows:
    - elements: [course_list]
      height: 200
    - elements: [student_activity, course_activity, discipline_activity]
      height: 500

  filters:
  - name: filter_start_date
    title: 'Course Start'
    type: field_filter
    explore: student_course_metrics
    field: dim_start_date.governmentdefinedacademicterm
  
  - name: filter_discipline
    title: 'Discipline'
    type: field_filter
    explore: student_course_metrics
    field: dim_product.discipline
    listen:
      filter_start_date: dim_start_date.governmentdefinedacademicterm
      
  - name: filter_course
    title: 'CourseKey'
    type: field_filter
    explore: student_course_metrics
    field: student_course_metrics.coursekey
    default_value: '4873663518396218672913941-AFB93CDDE78A809D59B6CCA292AEE0D1455DAB8AA2D43143'
    listen:
      filter_start_date: dim_start_date.governmentdefinedacademicterm
      filter_discipline: dim_product.discipline
    
  - name: filter_student
    title: 'Student'
    type: field_filter
    explore: student_course_metrics
    field: student_course_metrics.user_guid
    default_value: '02b60b80f217dfe6:103a032:11c750eeae6:-6112'
    listen:
      filter_start_date: dim_start_date.governmentdefinedacademicterm
      filter_course: student_course_metrics.coursekey

  elements:
  - name: course_list
    title: Course List
    listen:
      filter_start_date: dim_start_date.governmentdefinedacademicterm
      filter_discipline: dim_product.discipline
      filter_course: student_course_metrics.coursekey
    type: table
    model: test
    explore: student_course_metrics
    dimensions: [dim_product.discipline, dim_start_date.governmentdefinedacademicterm, dim_course.coursename, dim_course.coursekey,
      student_course_metrics.user_guid]
    measures: [student_course_metrics.score, student_course_metrics.duration, student_course_metrics.frequency,
      student_course_metrics.intensity, student_course_metrics.gap_week, student_course_metrics.pages_read,
      student_course_metrics.recency]
    sorts: [dim_product.discipline, dim_course.coursename, student_course_metrics.user_guid]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false

  - name: discipline_activity
    title: Discipline Activity
    listen:
      filter_discipline: dim_product.discipline
      filter_start_date: dim_start_date.governmentdefinedacademicterm
    type: looker_column
    model: test
    explore: student_course_metrics
    dimensions: [dim_product.discipline, student_course_metrics.weeksnamesort]
    measures: [student_course_metrics.score, student_course_metrics.duration, student_course_metrics.frequency,
      student_course_metrics.intensity]
    hidden_fields: [dim_product.discipline]
    sorts: [student_course_metrics.weeksnamesort]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: right
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      student_course_metrics.score: black
    series_labels:
      student_course_metrics.score: Avg. Score
    series_types:
      student_course_metrics.score: scatter
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_labels: [relative to class]
    y_axis_tick_density: default
    y_axis_value_format: 0%
    show_x_axis_label: true
    x_axis_label: week
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: ''
    show_null_points: true
    point_style: circle
    interpolation: linear
    

  - name: course_activity
    title: Course Activity
    listen:
      filter_course: student_course_metrics.coursekey
      filter_start_date: dim_start_date.governmentdefinedacademicterm
    type: looker_column
    model: test
    explore: student_course_metrics
    dimensions: [dim_course.coursekey, dim_course.coursename, student_course_metrics.weeksnamesort]
    measures: [student_course_metrics.score, student_course_metrics.duration, student_course_metrics.frequency,
      student_course_metrics.intensity]
    hidden_fields: [dim_product.discipline, dim_course.coursekey, dim_course.coursename]
    sorts: [student_course_metrics.weeksnamesort]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: right
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      student_course_metrics.score: black
    series_labels:
      student_course_metrics.score: Avg. Score
    series_types:
      student_course_metrics.score: scatter
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_labels: [relative to class]
    y_axis_tick_density: default
    y_axis_value_format: 0%
    show_x_axis_label: true
    x_axis_label: week
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: ''
    show_null_points: true
    point_style: circle
    interpolation: linear
    
  - name: student_activity
    title: Student Activity
    listen:
      filter_student: student_course_metrics.user_guid
      filter_start_date: dim_start_date.governmentdefinedacademicterm
    type: looker_column
    model: test
    explore: student_course_metrics
    dimensions: [dim_product.discipline, dim_course.coursekey, dim_course.coursename, student_course_metrics.weeksnamesort]
    measures: [student_course_metrics.score, student_course_metrics.duration, student_course_metrics.frequency,
      student_course_metrics.intensity]
    hidden_fields: [dim_product.discipline, dim_course.coursekey, dim_course.coursename]
    sorts: [student_course_metrics.weeksnamesort]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: left
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      student_course_metrics.score: black
    series_labels:
      student_course_metrics.score: Avg. Score
    series_types:
      student_course_metrics.score: scatter
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [relative to class]
    y_axis_tick_density: default
    y_axis_value_format: 0%
    show_x_axis_label: true
    x_axis_label: week
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: ''
    show_null_points: true
    point_style: circle
    interpolation: linear
