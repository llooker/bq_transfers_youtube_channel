connection: "bigquery-connectors-youtube-channel-owner"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: channel_combined_a2_ycr {
  label: "YouTube Channel"
  view_label: "YouTube"
  join: video_facts {
    view_label: "YouTube"
    relationship: many_to_one
    type: left_outer
    sql_on: ${channel_combined_a2_ycr.video_id} = ${video_facts.video_id} ;;
  }
}

explore: channel_traffic_source_a2_ycr {}
