- dashboard: student_outcomes
  title: Student Outcomes
  layout: tile
  tile_size: 100

#  filters:

  elements:


  - name: highlight_good
    title: Good 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count]
    filters:
      full_student_course_metrics.type_of_student: good
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
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
    ordering: none
    show_null_labels: false
    
  - name: highlight_average
    title: average 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count]
    filters:
      full_student_course_metrics.type_of_student: average
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
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
    ordering: none
    show_null_labels: false
    
  - name: highlight_below_average
    title: below-average 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count]
    filters:
      full_student_course_metrics.type_of_student: below-average
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
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
    ordering: none
    show_null_labels: false  
    
    
    
  - name: highlight_delta_good_over_below_average
    title: Comparing Highlight Usage Good Vs Below-Average
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.highlight_diff]
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
    
      
  - name: Flashcard
    title: FlashCard Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.type_of_student]
    pivots: [full_student_course_metrics.type_of_student]
    measures: [full_student_course_metrics.flashcard_count]
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.type_of_student]
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
      average: orange
      good: green
      below-average: red
      no-grade: gray
      no-interactions: black
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

