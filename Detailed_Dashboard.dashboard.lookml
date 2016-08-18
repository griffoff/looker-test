- dashboard: detailed_dashboard
  title: Detailed Dashboard
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: Active_days_good_v_ba
    title: Activity usage of Good Students vs Below-Average
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.Active_diff]
    filters:
      full_student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_null_labels: false
    series_types: {}


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

    
    
