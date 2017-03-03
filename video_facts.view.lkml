view: video_facts {
  derived_table: {
    sql: SELECT
        channel_traffic_source_a2_ycr.video_id  AS video_id,
        MAX(ROUND((channel_traffic_source_a2_ycr.average_view_duration_seconds/(nullif(channel_traffic_source_a2_ycr.average_view_duration_percentage/100,0)) ))) AS video_length_seconds
      FROM youtube_channel_reports.channel_traffic_source_a2_ycr  AS channel_traffic_source_a2_ycr

      GROUP BY 1

       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: video_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: video_length_seconds {
    type: number
    sql: ${TABLE}.video_length_seconds ;;
  }

  set: detail {
    fields: [video_id, video_length_seconds]
  }
}
