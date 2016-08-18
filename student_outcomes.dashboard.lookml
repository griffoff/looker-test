- dashboard: student_outcomes
  title: Student Outcomes
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: RFI_good
    title: RFI_Good
    type: looker_column
    model: test
    explore: student_course_metrics
    dimensions: [student_course_metrics.weeksname, student_course_metrics.octant]
    pivots: [student_course_metrics.octant]
    measures: [student_course_metrics.count]
    filters:
      student_course_metrics.type_of_student: good
      student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [student_course_metrics.weeksname, student_course_metrics.type_of_student,
      student_course_metrics.octant, student_course_metrics.octant_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      N/A: black
      '...': gray
      RFI: green
      .F.: blue
      ..I: orange

  - name: RFI_below_average
    title: RFI_Below_Average
    type: looker_column
    model: test
    explore: student_course_metrics
    dimensions: [student_course_metrics.weeksname, student_course_metrics.octant]
    pivots: [student_course_metrics.octant]
    measures: [student_course_metrics.count]
    filters:
      student_course_metrics.type_of_student: below-average
      student_course_metrics.weeksnamesort: '[0, 20]'
    sorts: [student_course_metrics.weeksname, student_course_metrics.type_of_student,
      student_course_metrics.octant, student_course_metrics.octant_sort]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: percent
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors:
      N/A: black
      '...': gray
      RFI: green
      .F.: blue
      ..I: orange


  - name: highlight_good
    title: Good 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count,
    full_student_course_metrics.search_count]
    filters:
      full_student_course_metrics.final_type_of_student: good
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9      
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: normal
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
    ordering: none
    show_null_labels: false
    y_axis_max: ['3.5']
    
  - name: highlight_below_average
    title: below-average 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count,
    full_student_course_metrics.search_count]
    filters:
      full_student_course_metrics.final_type_of_student: below-average
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9      
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: normal
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
    ordering: none
    show_null_labels: false
    y_axis_max: ['3.5']
    
  - name: highlight_average
    title: average 
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.flashcard_count, full_student_course_metrics.highlight_count,
      full_student_course_metrics.login_count, full_student_course_metrics.reading_count,
    full_student_course_metrics.search_count]
    filters:
      full_student_course_metrics.final_type_of_student: average
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9      
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: normal
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
    ordering: none
    show_null_labels: false  
    y_axis_max: ['3.5']
    
    
  
  - name: Flashcard
    title: FlashCard Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.flashcard_count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
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
    
  - name: Highlight_usage
    title: Highlight Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.highlight_count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
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
    
  - name: Search_Count
    title: Search Count by Type of Student
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.final_type_of_student, full_student_course_metrics.weeksname]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.search_count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
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
    show_view_names: false
    series_colors:
      good: green
      average: orange
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
    point_style: none
    interpolation: linear    
    
  - name: Login_usage
    title: Login Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.login_count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
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
    
  - name: PagesRead_usage
    title: PagesRead Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.pages_read]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
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

  - name: Reader_usage
    title: Reader Usage by Student Type
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.reading_count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
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
    

  - name: Duration
    title: Duration by Type of Student
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    pivots: [full_student_course_metrics.final_type_of_student]
    measures: [full_student_course_metrics.duration]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
    sorts: [full_student_course_metrics.weeksname, full_student_course_metrics.final_type_of_student]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    interpolation: linear
    

    
    
  - name: Count_Good_BelowAverage
    title: Count of Good and Below Average Students
    type: looker_line
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.Weekly_Good_Count, full_student_course_metrics.Weekly_Below_Average_Count]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
    sorts: [full_student_course_metrics.weeksname]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      full_student_course_metrics.Weekly_Below_Average_Count: red
      full_student_course_metrics.Weekly_Good_Count: green  
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
    
  - name: highlight_delta_good_over_below_average
    title: Comparing Highlight Usage Good Vs Below-Average
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.highlight_diff]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9    
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
    show_null_labels: false
    
  - name: login_delta_good_over_below_average
    title: Comparing Login Usage Good Vs Below-Average
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.login_diff]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
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
    show_null_labels: false
    
  - name: reading_delta_good_over_below_average
    title: Comparing Reading Activities Good Vs Below-Average
    type: looker_column
    model: test
    explore: full_student_course_metrics
    dimensions: [full_student_course_metrics.weeksname]
    measures: [full_student_course_metrics.reading_count_diff]
    filters:
      full_student_course_metrics.weeksname: Week 0%,Week 1%,Week 20%,Week 2,Week 3,Week 4,Week 5, Week 6, Week 7, Week 8,Week 9
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
    show_null_labels: false

      

