view: issue {
  sql_table_name: WORKSPACE_545895473.ISSUE ;;
  drill_fields: [issue_id]

  dimension: issue_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ISSUE_ID" ;;
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
    # hidden: yes
    sql: ${TABLE}."REPOSITORY_ID" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
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
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [issue_id, repository.repository_id, user.user_id, issue_comment.count]
  }
}
