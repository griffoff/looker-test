- dashboard: insight
  title: Insight
  layout: tile
  tile_size: 100

#  filters:

  elements:


  - name: duration
    title: 'Duration '
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.duration, full_student_course_metrics.frequency]
    dynamic_fields:
    - table_calculation: duration_vs_frequency
      label: Duration_vs_Frequency
      expression: ${full_student_course_metrics.duration}/${full_student_course_metrics.frequency}
    filters:
      full_student_course_metrics.final_type_of_student: good,below-average
      full_student_course_metrics.weeksnamesort: '[0, 16]'
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname,
      full_student_course_metrics.final_type_of_student_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    interpolation: linear
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      good: green
      below-average: red
      good - Duration_Over_Logins: green
      below-average - Duration_Over_Logins: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
    hidden_series: []
    series_types: {}
    y_axis_max: ['.5']

    hidden_fields: [full_student_course_metrics.frequency, duration_vs_frequency]

  - name: frequency
    title: 'Frequency '
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.duration, full_student_course_metrics.frequency]
    dynamic_fields:
    - table_calculation: duration_vs_frequency
      label: Duration_vs_Frequency
      expression: ${full_student_course_metrics.duration}/${full_student_course_metrics.frequency}
    filters:
      full_student_course_metrics.final_type_of_student: good,below-average
      full_student_course_metrics.weeksnamesort: '[0, 16]'
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname,
      full_student_course_metrics.final_type_of_student_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    interpolation: linear
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      good: green
      below-average: red
      good - Duration_Over_Logins: green
      below-average - Duration_Over_Logins: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
    hidden_series: []
    series_types: {}
    y_axis_max: ['.5']
    hidden_fields: [full_student_course_metrics.duration, duration_vs_frequency]

  - name: duration_vs_frequency
    title: 'Duration vs Frequency'
    type: looker_scatter
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.duration, full_student_course_metrics.frequency]
    dynamic_fields:
    - table_calculation: duration_vs_frequency
      label: Duration_vs_Frequency
      expression: ${full_student_course_metrics.duration}/${full_student_course_metrics.frequency}
    filters:
      full_student_course_metrics.final_type_of_student: good,below-average
      full_student_course_metrics.weeksnamesort: '[0, 16]'
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname,
      full_student_course_metrics.final_type_of_student_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    interpolation: linear
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      good: green
      below-average: red
      good - Duration_Over_Logins: green
      below-average - Duration_Over_Logins: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
      good - Duration_vs_Frequency: green
      below-average - Duration_vs_Frequency: red
    hidden_series: []
    series_types: {}
    y_axis_max: []
    trend_lines: [{regression_type: linear, color: green, period: 7, series_index: 1},
      {regression_type: linear, color: red, period: 7, series_index: 2}]
    hidden_fields: [full_student_course_metrics.duration, full_student_course_metrics.frequency]


  - name: login_count
    title: 'Login Count'
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.login_count]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname,
      full_student_course_metrics.final_type_of_student_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: left
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types:
      __FILE: test/Behavior_Overview.dashboard.lookml
      __LINE_NUM: 253
    hidden_series: [average]
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      good - duration/login_count: green
      average - duration/login_count: orange
      below-average - duration/login_count: red
      good: green
      below-average: red
