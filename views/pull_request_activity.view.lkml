view: pull_request_activity {
  sql_table_name: WORKSPACE_545895473.PULL_REQUEST_ACTIVITY ;;
  drill_fields: [pull_request_activity_id]

  dimension: pull_request_activity_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."PULL_REQUEST_ACTIVITY_ID" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: pull_request_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."PULL_REQUEST_ID" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."REASON" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [pull_request_activity_id, pull_request.pull_request_id, user.user_id]
  }
}
