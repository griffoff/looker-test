- dashboard: engagement_toolkit
  title: Engagement Toolkit
  layout: tile

  filters:
  - name: filter_course
    title: 'CourseKey'
    type: field_filter
    explore: student_course_metrics
    field: student_course_metrics.coursekey
    default_value: '4874041889612715212104406380-1034-HST-103-DLA-SU15'

  elements:
  
  - name: et_time_spent_narrative
    width: 2
    title: Untitled Visualization
    listen:
      filter_course: et_report1.coursekey
    type: single_value
    model: test
    explore: et_report1
    dimensions: [et_narrative_course.narrative_course, et_narrative_discipline.narrative_discipline]
    dynamic_fields:
    - table_calculation: narrative
      label: Narrative
      expression: coalesce(${et_narrative_course.narrative_course}, ${et_narrative_discipline.narrative_discipline})
    hidden_fields: [et_narrative_course.narrative_course, et_narrative_discipline.narrative_discipline]
    sorts: [et_narrative_course.narrative_course]
    limit: 500
    show_single_value_title: false
    show_comparison: false


  - name: et_time_spent
    title: working in MindTap leads to better grades
    listen:
      filter_course: et_report1.coursekey
    type: looker_column
    model: test
    explore: et_report1
    dimensions: [et_report1.avg_score_bin, et_report1.time_spent_bin]
    pivots: [et_report1.avg_score_bin]
    measures: [et_report1.count]
    sorts: [et_report1.count desc, et_report1.avg_score_bin]
    limit: 500
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
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: ascending
    show_null_labels: false
  
