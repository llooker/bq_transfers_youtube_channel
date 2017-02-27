connection: "bigquery-connectors-youtube-channel-owner"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: channel_basic_a2_ycr {}
explore: channel_combined_a2_ycr {}
explore: channel_demographics_a1_ycr {}
explore: channel_traffic_source_a2_ycr {}
