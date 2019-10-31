include: "//@{CONFIG_PROJECT_NAME}/pull_request_activity.view"

view: pull_request_activity {
  extends: [pull_request_activity_config]
}

view: pull_request_activity_core {
  sql_table_name: @{SCHEMA_NAME}.PULL_REQUEST_ACTIVITY ;;

  dimension: pull_request_activity_id {
    label: "Pull Request Activity ID"
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
    hidden: yes
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

  dimension: user {
    type: string
    sql: ${TABLE}."USER" ;;
  }

  dimension: user_id {
    type: string
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: pull_request_activities {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      repository.repository,
      users.user,
      date_date,
      pull_request_activity_id,
      title,
      state,
      reason
    ]
  }
}