- dashboard: behavior_overview
  title: Behavior Overview
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: Behavior Comparison Starting Below-Average
    title: Started Below-Average ended Good. 
    description: 'Test Description'
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count_G_BA, full_student_course_metrics.highlight_diff_G_BA,
      full_student_course_metrics.login_G_BA, full_student_course_metrics.reading_count_G_BA,
      full_student_course_metrics.search_count_G_BA]
    filters:
      dim_product.discipline: ''
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear    
    
  - name: Behavior Comparison Starting Good
    title: Started Good ended Below-Average. 
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count_D_F_G, full_student_course_metrics.highlight_diff_D_F_G,
      full_student_course_metrics.login_D_F_G, full_student_course_metrics.search_count_D_F_G,
      full_student_course_metrics.reading_count_D_F_G]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    
  - name: Duration_Vs_Login_Count
    title: Duration divided by login count
    type: looker_area
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.login_count, full_student_course_metrics.duration_total]
    dynamic_fields:
    - table_calculation: duration_over_logins
      label: Duration_Over_Logins
      expression: ${full_student_course_metrics.duration_total}/${full_student_course_metrics.login_count}
    filters:
      dim_product.discipline: Business
      full_student_course_metrics.final_type_of_student: good,below-average
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname,
      full_student_course_metrics.final_type_of_student_sort]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      good - Duration_Over_Logins: green
      below-average - Duration_Over_Logins: red
    limit_displayed_rows: false
    hidden_series: [good - Full Student Course Metrics Login Count, good - Full Student Course Metrics Duration Total,
      below-average - Full Student Course Metrics Login Count, below-average - Full Student Course Metrics Duration Total]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear

  - name: Activity Comparison 
    title: Activities that improved outcome
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.initial_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.pages_read, full_student_course_metrics.login_count,
      full_student_course_metrics.search_count, full_student_course_metrics.recency,
      full_student_course_metrics.intensity, full_student_course_metrics.highlight_count,
      full_student_course_metrics.frequency, full_student_course_metrics.flashcard_count,
      full_student_course_metrics.duration]
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.initial_type_of_student,
      full_student_course_metrics.final_type_of_student_sort]
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
      good: green
      average: orange
      below-average: red
    limit_displayed_rows: false
    hidden_series: [good - Full Student Course Metrics Recency, good - Full Student Course Metrics Intensity,
      good - Full Student Course Metrics Frequency, average - Full Student Course Metrics Pages Read,
      average - Full Student Course Metrics Login Count, average - Full Student Course Metrics Search Count,
      average - Full Student Course Metrics Recency, average - Full Student Course Metrics Intensity,
      average - Full Student Course Metrics Highlight Count, average - Full Student Course Metrics Frequency,
      average - Full Student Course Metrics Flashcard Count, average - Full Student Course Metrics Avg. Duration,
      below-average - Full Student Course Metrics Recency, below-average - Full Student Course Metrics Intensity,
      below-average - Full Student Course Metrics Frequency]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false


  - name: Active_days_chart
    title: Active Days (Login Count/Days of activities)
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.Active_Days]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    series_colors:
      good: green
      below-average: red
      average: orange
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    point_style: none
    interpolation: linear

  - name: Active_days_good_v_ba
    title: Activity usage of Good Students vs Below-Average
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.Active_diff]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false


  - name: Improved_to_good_Active
    title: Improved to good activity
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.active_days_diff_G_BA]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false


  - name: Degraded_to_BA_Active
    title: Degraded to BA Active
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.active_days_count_D_F_G]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false

    
    
