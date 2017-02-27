view: channel_traffic_source_a2_ycr {
  sql_table_name: youtube_channel_reports.channel_traffic_source_a2_ycr ;;

  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }
  measure: avg_view_duration_s {
    label: "Average View Duration (s)"
    type: average
    sql: ${average_view_duration_seconds} ;;
    value_format_name: decimal_1
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: live_or_on_demand {
    type: string
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: red_views {
    type: number
    sql: ${TABLE}.red_views ;;
  }

  dimension: red_watch_time_minutes {
    type: number
    sql: ${TABLE}.red_watch_time_minutes ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: traffic_source_detail {
    type: string
    sql: ${TABLE}.traffic_source_detail ;;
  }

  dimension: traffic_source_type {
    hidden: yes
    type: number
    sql: ${TABLE}.traffic_source_type ;;
  }
  dimension: source_type {
    type: string
    sql: CASE
          WHEN ${traffic_source_type}=0 THEN 'Direct'
          WHEN ${traffic_source_type}=3 THEN 'Browse'
          WHEN ${traffic_source_type}=4 THEN 'Channels'
          WHEN ${traffic_source_type}=5 THEN 'Youtube Search'
          WHEN ${traffic_source_type}=7 THEN 'Suggested Videos'
          WHEN ${traffic_source_type}=8 THEN 'Other YT Features'
          WHEN ${traffic_source_type}=9 THEN 'External'
          WHEN ${traffic_source_type}=11 THEN 'Cards'
          WHEN ${traffic_source_type}=14 THEN 'Playlists'
          WHEN ${traffic_source_type}=17 THEN 'Notifications'
          WHEN ${traffic_source_type}=18 THEN 'Playlist Page'
          WHEN ${traffic_source_type}=20 THEN 'End Screen'
          END
          ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
    html: <p> Video Title </p> ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }
  measure: total_views {
    type: sum
    sql: ${views} ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }
  measure: total_watch_time_minutes {
    type: sum
    sql: ${watch_time_minutes} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
