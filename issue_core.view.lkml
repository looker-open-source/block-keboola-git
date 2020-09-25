include: "//@{CONFIG_PROJECT_NAME}/issue.view"

view: issue {
  extends: [issue_config]
}

view: issue_core {
  sql_table_name: @{SCHEMA_NAME}.ISSUE ;;
  drill_fields: [issue_id, title]

  dimension: issue_id {
    label: "Issue ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ISSUE_ID" ;;
    html: <a href={{url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED_ON" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}."KIND" ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}."NUMBER" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: reporter {
    type: string
    sql: ${TABLE}."REPORTER" ;;
  }

  dimension: repository_id {
    type: string
    hidden: yes
    sql: ${TABLE}."REPOSITORY_ID" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
    html: <a href={{url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."UPDATED_ON" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: user_id {
    type: string
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension_group: since_created {
    type: duration
    intervals: [day]
    sql_start: ${TABLE}."CREATED_ON" ;;
    sql_end: current_date ;;
    drill_fields: [detail*]
  }

  dimension_group: since_updated {
    type: duration
    intervals: [day]
    sql_start: ${TABLE}."UPDATED_ON" ;;
    sql_end: current_date ;;
    drill_fields: [detail*]
  }

  measure: issues {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.user,
      repository.repository,
      issue_id,
      created_date,
      updated_date,
      issue_comment.issue_comments
    ]
  }
}
