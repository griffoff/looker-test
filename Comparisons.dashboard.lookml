- dashboard: comparisons
  title: Comparisons
  layout: tile
  tile_size: 100

#  filters:

  elements:


  - name: Improved to Good - Recency 
    title: Improved to Good - Recency 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.recency]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: good
      student_improvement.initial_type_of_student: below-average
    sorts: [student_improvement.recency]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']
    
  - name: Degraded to Below Average - Recency 
    title: Degraded to Below Average - Recency 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.recency]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: below-average
      student_improvement.initial_type_of_student: good
    sorts: [student_improvement.recency]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']
    
  - name: Improved to Good - Frequency 
    title: Improved to Good - Frequency 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.frequency]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: good
      student_improvement.initial_type_of_student: below-average
    sorts: [student_improvement.frequency]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['21000']
    
  - name: Degraded to Below Average - Frequency 
    title: Degraded to Below Average - Frequency 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.frequency]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: below-average
      student_improvement.initial_type_of_student: good
    sorts: [student_improvement.frequency]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['21000']
    
  - name: Improved to Good - login_count 
    title: Improved to Good - login_count 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.login_count]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: good
      student_improvement.initial_type_of_student: below-average
    sorts: [student_improvement.login_count]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['5000']
    
  - name: Degraded to Below Average - login_count 
    title: Degraded to Below Average - login_count 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.login_count]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: below-average
      student_improvement.initial_type_of_student: good
    sorts: [student_improvement.login_count]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['5000'] 
    

  - name: Improved to Good - Intensity 
    title: Improved to Good - Intensity 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.intensity]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: good
      student_improvement.initial_type_of_student: below-average
    sorts: [student_improvement.intensity]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']
    
  - name: Degraded to Below Average - Intensity 
    title: Degraded to Below Average - Intensity 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.intensity]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: below-average
      student_improvement.initial_type_of_student: good
    sorts: [student_improvement.intensity]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']    
    
  - name: Improved to Good - Duration 
    title: Improved to Good - Duration 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.duration]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: good
      student_improvement.initial_type_of_student: below-average
    sorts: [student_improvement.duration]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']
    
  - name: Degraded to Below Average - Duration 
    title: Degraded to Below Average - Duration 
    type: looker_line
    model: test
    explore: student_improvement
    dimensions: [student_improvement.duration]
    measures: [student_improvement.count]
    filters:
      student_improvement.final_type_of_student: below-average
      student_improvement.initial_type_of_student: good
    sorts: [student_improvement.duration]
    limit: '5000'
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
    series_types: {}
    y_axis_max: ['500']     
  
