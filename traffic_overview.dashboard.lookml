- dashboard: quiz_results__httpsbit_lymdpnext18
  title: Quiz Results - https://bit.ly/mdp-next18
  layout: newspaper
  elements:
  - title: Answers Per Minute
    name: Answers Per Minute
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_line
    fields:
    - quiz_events.answer_submitted_minute
    - question.difficulty
    - count_of_answer_key
    pivots:
    - question.difficulty
    fill_fields:
    - quiz_events.answer_submitted_minute
    sorts:
    - quiz_events.answer_submitted_minute desc
    - question.difficulty
    limit: 30
    dynamic_fields:
    - measure: count_of_question_id
      based_on: quiz_events.question_id
      expression: ''
      label: Count of Question ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle_outline
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Default'
    series_colors:
      0 - count_of_question_id: "#008744"
      1 - count_of_question_id: "#ffa700"
      2 - count_of_question_id: "#d62d20"
      0 - count_of_answer_key: "#008744"
      1 - count_of_answer_key: "#ffa700"
      2 - count_of_answer_key: "#d62d20"
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 0 - count_of_answer_key
        name: Easy
        axisId: count_of_answer_key
      - id: 1 - count_of_answer_key
        name: Medium
        axisId: count_of_answer_key
      - id: 2 - count_of_answer_key
        name: Hard
        axisId: count_of_answer_key
      showLabels: false
      showValues: true
      valueFormat: "#"
      unpinAxis: false
      tickDensity: default
      type: linear
    series_labels:
      1 - count_of_question_id: Medium
      0 - count_of_question_id: Easy
      2 - count_of_question_id: Hard
      0 - count_of_answer_key: Easy
      1 - count_of_answer_key: Medium
      2 - count_of_answer_key: Hard
    hidden_series: []
    listen: {}
    refresh: 30 seconds
    row: 2
    col: 0
    width: 19
    height: 8
  - title: Total Quiz Takers
    name: Total Quiz Takers
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: single_value
    fields:
    - quiz_events.user_count
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    refresh: 4 seconds
    row: 0
    col: 9
    width: 5
    height: 2
  - name: Leaderboard - % Correct
    title: Leaderboard - % Correct
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_bar
    fields:
    - quiz_events.user_id
    - quiz_events.count_percent
    - quiz_events.is_answer_correct
    pivots:
    - quiz_events.is_answer_correct
    fill_fields:
    - quiz_events.is_answer_correct
    sorts:
    - quiz_events.count_percent desc 0
    - quiz_events.is_answer_correct desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: quiz_user_id
      label: Quiz User ID
      expression: upper(substring(${quiz_events.user_id},length(${quiz_events.user_id})-5,6))
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    stacking: percent
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    column_group_spacing_ratio: 0.2
    series_colors:
      Yes - quiz_events.count_percent: "#0057e7"
      No - quiz_events.count_percent: "#c9d1e1"
    series_labels:
      Yes - quiz_events.count_percent: Correct
      No - quiz_events.count_percent: Incorrect
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: Yes - quiz_events.count_percent
        name: Correct
        axisId: quiz_events.count_percent
      - id: No - quiz_events.count_percent
        name: Incorrect
        axisId: quiz_events.count_percent
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    label_color:
    - "#fff"
    font_size: 16px
    hidden_fields:
    - quiz_events.user_id
    hide_legend: true
    listen: {}
    refresh: 7 seconds
    row: 10
    col: 9
    width: 10
    height: 7
  - title: Questions Answered
    name: Questions Answered
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: single_value
    fields:
    - count_of_answer_key
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_question_id
      based_on: quiz_events.question_id
      expression: ''
      label: Count of Question ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_submitted_timestamp
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    refresh: 3 seconds
    row: 2
    col: 19
    width: 5
    height: 3
  - title: Easy Questions Correct
    name: Easy Questions Correct
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_pie
    fields:
    - quiz_events.is_answer_correct
    - count_of_answer_key
    fill_fields:
    - quiz_events.is_answer_correct
    filters:
      question.difficulty: '0'
    limit: 3
    column_limit: 50
    dynamic_fields:
    - measure: count_of_answer_submitted_timestamp
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_submitted_timestamp_2
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      'Yes': "#008744"
      'No': "#c9d1e1"
    inner_radius: 0
    listen: {}
    refresh: 32 seconds
    row: 13
    col: 19
    width: 5
    height: 4
  - title: Medium Questions Correct
    name: Medium Questions Correct
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_pie
    fields:
    - quiz_events.is_answer_correct
    - count_of_answer_key
    fill_fields:
    - quiz_events.is_answer_correct
    filters:
      question.difficulty: '1'
    limit: 3
    column_limit: 50
    dynamic_fields:
    - measure: count_of_answer_submitted_timestamp
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_submitted_timestamp_2
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      'Yes': "#ffa700"
      'No': "#c9d1e1"
    listen: {}
    refresh: 31 seconds
    row: 9
    col: 19
    width: 5
    height: 4
  - title: Hard Questions Correct
    name: Hard Questions Correct
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_pie
    fields:
    - quiz_events.is_answer_correct
    - count_of_answer_key
    fill_fields:
    - quiz_events.is_answer_correct
    filters:
      question.difficulty: '2'
    limit: 3
    column_limit: 50
    dynamic_fields:
    - measure: count_of_answer_submitted_timestamp
      based_on: quiz_events.answer_submitted_timestamp
      expression: ''
      label: Count of Answer Submitted Timestamp
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      'Yes': "#d62d20"
      'No': "#c9d1e1"
    listen: {}
    refresh: 33 seconds
    row: 5
    col: 19
    width: 5
    height: 4
  - title: Leaderboard - Count Correct
    name: Leaderboard - Count Correct
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: looker_bar
    fields:
    - quiz_events.user_id
    - count_of_answer_key
    filters:
      quiz_events.is_answer_correct: 'Yes'
    sorts:
    - count_of_answer_key desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: quiz_user_id
      label: Quiz User ID
      expression: upper(substring(${quiz_events.user_id},length(${quiz_events.user_id})-5,6))
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    - measure: count_of_answer_submitted_timestamp
      based_on: quiz_events.answer_submitted_timestamp
      type: count_distinct
      label: Count of Answer Submitted Timestamp
      expression:
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_answer_key
      based_on: quiz_events.answer_key
      expression: ''
      label: Count of Answer Key
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#333"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types:
      count_of_answer_submitted_timestamp: column
    column_group_spacing_ratio: 0
    series_colors:
      Yes - quiz_events.count_percent: "#0057e7"
      No - quiz_events.count_percent: "#c9d1e1"
      count_of_answer_submitted_timestamp: "#0057e7"
      count_of_answer_key: "#0057e7"
    series_labels:
      Yes - quiz_events.count_percent: Correct
      No - quiz_events.count_percent: Incorrect
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: Yes - quiz_events.count_percent
        name: Correct
        axisId: quiz_events.count_percent
      - id: No - quiz_events.count_percent
        name: Incorrect
        axisId: quiz_events.count_percent
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    label_color:
    - "#fff"
    font_size: 16px
    hidden_fields:
    - quiz_events.user_id
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_padding_right: 5
    listen: {}
    refresh: 6 seconds
    row: 10
    col: 0
    width: 9
    height: 7
  - title: New Tile
    name: New Tile
    model: google_next_quiz_app_mdp_next_test
    explore: next_image
    type: single_value
    fields:
    - next_image.looker_image
    sorts:
    - next_image.looker_image
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 0
    col: 0
    width: 9
    height: 2
  - name: Quiz Results
    type: text
    title_text: Quiz Results
    body_text: ''
    row: 0
    col: 19
    width: 5
    height: 2
  - title: Active Quiz Takers
    name: Active Quiz Takers
    model: google_next_quiz_app_mdp_next_test
    explore: quiz_events
    type: single_value
    fields:
    - quiz_events.active_user_count
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    refresh: 30 seconds
    row: 0
    col: 14
    width: 5
    height: 2
