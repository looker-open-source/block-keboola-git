include: "//@{CONFIG_PROJECT_NAME}/pull_request.view"

view: pull_request {
  extends: [pull_request_config]
}

view: pull_request_core {
  sql_table_name: @{SCHEMA_NAME}.PULL_REQUEST ;;
  drill_fields: [pull_request_id, title]

  dimension: pull_request_id {
  label: "Pull Request ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."PULL_REQUEST_ID" ;;
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

  measure: days_since_created {
    type: sum
    sql: datediff(DAY, ${created_date}, current_date) ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: days_since_updated {
    type: sum
    sql: datediff(DAY, ${updated_date}, current_date) ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: days_to_merge {
    type: sum
    sql: iff(${state} = 'MERGED', datediff(DAY, ${created_date}, ${updated_date}), NULL) ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: pull_requests {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      repository.repository,
      users.user,
      created_date,
      updated_date,
      pull_request_id,
      title,
      description,
      pull_request_activity.pull_request_activities
    ]
  }
}