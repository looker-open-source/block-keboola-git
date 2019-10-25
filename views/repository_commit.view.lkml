view: repository_commit {
  sql_table_name: WORKSPACE_545895473.REPOSITORY_COMMIT ;;
  drill_fields: [repository_commit_id]

  dimension: repository_commit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_COMMIT_ID" ;;
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

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: repository_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."REPOSITORY_ID" ;;
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
    drill_fields: [repository_commit_id, user.user_id, repository.repository_id, repository_commit_change.count]
  }
}
