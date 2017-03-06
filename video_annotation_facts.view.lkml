view: video_annotation_facts {
  derived_table: {
    sql:
    SELECT
      date
     ,video_id

      , sum(annotation_impressions) as impressions
      , sum(annotation_clickable_impressions) as clickable_impressions
      , sum(annotation_clicks) as clicks
      , sum(annotation_click_through_rate) as click_through_rate
      , sum(annotation_closes) as closes
      , sum(annotation_closable_impressions) as closable_impressions
      , sum(annotation_close_rate) as close_rate
    FROM `bigquery-connectors.youtube_channel_reports.channel_annotations_a1_ycr`
    group by 1, 2
 ;;
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

  dimension: primary_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(${date}, ${video_id}) ;;
  }

  measure: impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: clickable_impressions {
    type: sum
    sql: ${TABLE}.clickable_impressions ;;
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: click_through_rate {
    type: number
    sql: 1.0 * ${clicks}/nullif(${clickable_impressions}, 0) ;;
    value_format_name: percent_1
  }

  measure: closes {
    type: sum
    sql: ${TABLE}.closes ;;
  }

  measure: closable_impressions {
    type: sum
    sql: ${TABLE}.closable_impressions ;;
  }

  measure: close_rate {
    type: number
    sql: 1.0 * ${closes}/nullif(${closable_impressions}, 0) ;;
    value_format_name: percent_1
  }


  set: detail {
    fields: [
      date,
      video_id,
      impressions,
      clickable_impressions,
      clicks,
      click_through_rate,
      closes,
      close_rate
    ]
  }
}
