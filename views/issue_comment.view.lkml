view: issue_comment {
  sql_table_name: WORKSPACE_545895473.ISSUE_COMMENT ;;
  drill_fields: [issue_comment_id]

  dimension: issue_comment_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ISSUE_COMMENT_ID" ;;
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

  dimension: issue_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ISSUE_ID" ;;
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

  dimension: user {
    type: string
    sql: ${TABLE}."USER" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [issue_comment_id, issue.issue_id, user.user_id]
  }
}
