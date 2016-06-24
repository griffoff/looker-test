- dashboard: engagement_toolkit
  title: Engagement Toolkit
  layout: static

  filters:
  - name: filter_course
    title: 'CourseKey'
    type: field_filter
    explore: student_course_metrics
    field: student_course_metrics.coursekey
    default_value: '4874041889612715212104406380-1034-HST-103-DLA-SU15'

  elements:

  - name: et_time_spent_title
    width: 3
    height: 1
    top: 0
    left: -1
    title: Time Spent Narrative
    listen:
      filter_course: et_narrative.coursekey
    type: single_value
    model: test
    explore: et_narrative
    dimensions: [et_narrative.narrative_level]
    sorts: [et_narrative.narrative_level]
    limit: 1
    show_single_value_title: false
    show_comparison: false
    
  - name: et_time_spent_narrative
    width: 3
    height: 3
    top: 1
    left: -1
    title: MindTap grades based on hours used per week
    listen:
      filter_course: et_narrative.coursekey
    type: looker_single_record
    model: test
    explore: et_narrative
    dimensions: [et_narrative.narrative_general]
    sorts: [et_narrative.narrative_general]
    limit: 1
    show_view_names: false
    table_theme: transparent
    limit_displayed_rows: false

  - name: et_time_spent
    width: 5
    height: 3
    top: 0
    left: 2
    title: null
    listen:
      filter_course: et_report1.coursekey
    type: looker_column
    model: test
    explore: et_report1
    dimensions: [et_report1.avg_score_bin, et_report1.time_spent_bin]
    pivots: [et_report1.avg_score_bin]
    measures: [et_report1.count]
    sorts: [et_report_1.avg_score_bin, et_report1.time_spent_bin]
    limit: 15
    column_limit: 50
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 23
    font_size: ''
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    series_colors:
      90-100%: mediumseagreen
      80-90%: gold
      70-80%: orange
      60-70%: lightsteelBlue
      <60%: steelblue
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_label: Time spent per week
    ordering: none
    show_null_labels: false
  
