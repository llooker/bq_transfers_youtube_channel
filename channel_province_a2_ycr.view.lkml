view: channel_province_a2_ycr {
  sql_table_name: youtube_channel_reports.channel_province_a2_ycr ;;

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

  dimension: annotation_click_through_rate {
    type: number
    sql: ${TABLE}.annotation_click_through_rate ;;
  }

  dimension: annotation_clickable_impressions {
    type: number
    sql: ${TABLE}.annotation_clickable_impressions ;;
  }

  dimension: annotation_clicks {
    type: number
    sql: ${TABLE}.annotation_clicks ;;
  }

  dimension: annotation_closable_impressions {
    type: number
    sql: ${TABLE}.annotation_closable_impressions ;;
  }

  dimension: annotation_close_rate {
    type: number
    sql: ${TABLE}.annotation_close_rate ;;
  }

  dimension: annotation_closes {
    type: number
    sql: ${TABLE}.annotation_closes ;;
  }

  dimension: annotation_impressions {
    type: number
    sql: ${TABLE}.annotation_impressions ;;
  }

  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: card_click_rate {
    type: number
    sql: ${TABLE}.card_click_rate ;;
  }

  dimension: card_clicks {
    type: number
    sql: ${TABLE}.card_clicks ;;
  }

  dimension: card_impressions {
    type: number
    sql: ${TABLE}.card_impressions ;;
  }

  dimension: card_teaser_click_rate {
    type: number
    sql: ${TABLE}.card_teaser_click_rate ;;
  }

  dimension: card_teaser_clicks {
    type: number
    sql: ${TABLE}.card_teaser_clicks ;;
  }

  dimension: card_teaser_impressions {
    type: number
    sql: ${TABLE}.card_teaser_impressions ;;
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

  dimension: province_code {
    type: string
    sql: ${TABLE}.province_code ;;
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

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
