- dashboard: traffic_overview
  title: Traffic Overview
  layout: tile
  tile_size: 100

  filters:

  elements:
    - name: total_number_sources
      title: Total Number Sources
      type: single_value
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      measures: [channel_combined_a2_ycr.count_sources]
      limit: '500'
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
      series_types: {}

    - name: total_views
      title: Total Views
      type: single_value
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      measures: [channel_combined_a2_ycr.total_views]
      limit: '500'
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
      series_types: {}

    - name: average_view_time_seconds
      title: Average View Time (Seconds)
      type: single_value
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      measures: [channel_combined_a2_ycr.avg_view_duration_s]
      limit: '500'
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
      series_types: {}

    - name: average_percent_of_video_watched
      title: Average Percent of Video Watched
      type: single_value
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      measures: [channel_combined_a2_ycr.avg_view_duration_percentage]
      limit: '500'
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
      series_types: {}

    - name: performance_by_traffic_source
      title: Performance by Traffic Source
      type: looker_column
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.traffic_source]
      measures: [channel_combined_a2_ycr.avg_view_duration_s, channel_combined_a2_ycr.avg_view_duration_percentage,
        channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.total_views desc]
      limit: '500'
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
      y_axis_combined: false
      show_y_axis_labels: false
      show_y_axis_ticks: false
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
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      series_types:
        channel_combined_a2_ycr.avg_view_duration_s: line
        channel_combined_a2_ycr.avg_view_duration_percentage: line
      series_colors:
        channel_combined_a2_ycr.total_views: "#3B4260"
        channel_combined_a2_ycr.avg_view_duration_percentage: "#39A736"

    - name: performance_by_device
      title: Performance by Device
      type: looker_column
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.device]
      measures: [channel_combined_a2_ycr.avg_view_duration_s, channel_combined_a2_ycr.avg_view_duration_percentage,
        channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.avg_view_duration_s desc]
      limit: '500'
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
      y_axis_combined: false
      show_y_axis_labels: false
      show_y_axis_ticks: false
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
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      series_types:
        channel_combined_a2_ycr.avg_view_duration_s: line
        channel_combined_a2_ycr.avg_view_duration_percentage: line
      series_colors:
        channel_combined_a2_ycr.total_views: "#3B4260"
        channel_combined_a2_ycr.avg_view_duration_percentage: "#39A736"

    - name: subscribed_vs_non_views
      title: Subscription Views
      type: looker_pie
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.subscribed_status]
      measures: [channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.total_views desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      value_labels: legend
      label_type: labPer
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
      series_types: {}
      series_colors:
        not_subscribed: "#3B4260"
        subscribed: "#1D98D3"

    - name: subscription_views_over_time
      title: Subscription Views over Time
      type: looker_area
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.subscribed_status, channel_combined_a2_ycr._data_date]
      pivots: [channel_combined_a2_ycr.subscribed_status]
      fill_fields: [channel_combined_a2_ycr._data_date]
      measures: [channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.total_views desc 0, channel_combined_a2_ycr.subscribed_status]
      limit: '500'
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
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      ordering: none
      show_null_labels: false
      series_types: {}
      series_colors:
        not_subscribed: "#3B4260"
        subscribed: "#1D98D3"

    - name: subscription_by_source
      title: Subscription by Source
      type: looker_donut_multiples
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.traffic_source, channel_combined_a2_ycr.subscribed_status]
      pivots: [channel_combined_a2_ycr.subscribed_status]
      measures: [channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.subscribed_status 0, channel_combined_a2_ycr.traffic_source desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      show_value_labels: false
      font_size: 12
      stacking: ''
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


    - name: video_length_and_viewership_relation
      title: Video Completion Rate by Length of Video
      type: looker_column
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [video_facts.video_length_minutes_tier]
      measures: [channel_combined_a2_ycr.avg_view_duration_percentage, channel_combined_a2_ycr.video_count]
      sorts: [video_facts.video_length_minutes_tier]
      limit: '500'
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types:
        channel_combined_a2_ycr.avg_view_duration_percentage: line


    - name: views_by_geography
      title: Views by Location
      type: looker_map
      model: youtube_channel_owner
      explore: channel_combined_a2_ycr
      dimensions: [channel_combined_a2_ycr.country_code]
      measures: [channel_combined_a2_ycr.total_views]
      sorts: [channel_combined_a2_ycr.total_views desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_opacity: 0.5
      show_region_field: true
      draw_map_labels_above_data: true
      map_tile_provider: positron
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: true
      map_zoomable: true
      map_marker_type: circle
      map_marker_icon_name: default
      map_marker_radius_mode: proportional_value
      map_marker_units: meters
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: fixed
      show_view_names: true
      show_legend: true
      quantize_map_value_colors: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
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
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      ordering: none
      show_null_labels: false
      series_types: {}
      series_colors:
        not_subscribed: "#3B4260"
        subscribed: "#1D98D3"
