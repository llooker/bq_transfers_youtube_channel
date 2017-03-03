- dashboard: channel_performance_overview
  title: Channel Performance Overview
  layout: tile
  tile_size: 100

  filters:

  elements:
  - name: Total Views
    title: total_views
    type: single_value
    model: youtube_channel_owner
    explore: channel_combined_a2_ycr
    measures: [channel_combined_a2_ycr.total_views, channel_combined_a2_ycr.avg_view_duration_percentage,
      channel_combined_a2_ycr.total_watch_time_minutes]
    filters:
      channel_combined_a2_ycr._data_date: 7 days
    sorts: [channel_combined_a2_ycr.total_views desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors: ['palette: Santa Cruz']
    series_colors: {}
    hidden_fields: [channel_combined_a2_ycr.avg_view_duration_percentage, channel_combined_a2_ycr.total_watch_time_minutes]





  - name: overall_engagement
    title: Overall Engagement
    type: single_value
    model: youtube_channel_owner
    explore: channel_combined_a2_ycr
    measures: [channel_combined_a2_ycr.total_views, channel_combined_a2_ycr.avg_view_duration_percentage,
      channel_combined_a2_ycr.total_watch_time_minutes]
    filters:
      channel_combined_a2_ycr._data_date: 7 days
    sorts: [channel_combined_a2_ycr.total_views desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors: ['palette: Santa Cruz']
    series_colors: {}
    hidden_fields: [channel_combined_a2_ycr.total_views, channel_combined_a2_ycr.total_watch_time_minutes]


  - name: total_minutes_watched
    title: Total Minutes Watched
    type: single_value
    model: youtube_channel_owner
    explore: channel_combined_a2_ycr
    measures: [channel_combined_a2_ycr.total_views, channel_combined_a2_ycr.avg_view_duration_percentage,
      channel_combined_a2_ycr.total_watch_time_minutes]
    filters:
      channel_combined_a2_ycr._data_date: 7 days
    sorts: [channel_combined_a2_ycr.total_views desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors: ['palette: Santa Cruz']
    series_colors: {}
    hidden_fields: [channel_combined_a2_ycr.total_views, channel_combined_a2_ycr.avg_view_duration_percentage]
