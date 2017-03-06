view: video_playlist_facts {
  derived_table: {
    sql: SELECT date, video_id, playlist_id
      , sum(playlist_starts) as starts
      , sum(playlist_saves_added) as saves_added
      , sum(playlist_saves_removed) as saves_removed
      , sum(views) as views
      FROM `bigquery-connectors.youtube_channel_reports.p_playlist_basic_a1_ycr`
      group by 1, 2, 3
       ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${date}, ${video_id}, ${playlist_id}) ;;
  }

  dimension: date {
    hidden: yes
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: video_id {
    hidden: yes
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: playlist_id {
    type: string
    sql: ${TABLE}.playlist_id ;;
  }

  measure: starts {
    type: sum
    sql: ${TABLE}.starts ;;
  }

  measure: saves_added {
    type: sum
    sql: ${TABLE}.saves_added ;;
  }

  measure: saves_removed {
    type: sum
    sql: ${TABLE}.saves_removed ;;
  }

  measure: views {
    type: sum
    sql: ${TABLE}.views ;;
  }

  set: detail {
    fields: [
      date,
      video_id,
      playlist_id,
      starts,
      saves_added,
      saves_removed,
      views
    ]
  }
}
