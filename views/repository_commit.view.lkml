view: repository_commit {
  sql_table_name: @{SCHEMA_NAME}.REPOSITORY_COMMIT ;;
  drill_fields: [repository_commit_id]

  dimension: repository_commit_id {
    label: "Repository Commit ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_COMMIT_ID" ;;
    html: <a href={{url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
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
    hidden: yes
    sql: ${TABLE}."REPOSITORY_ID" ;;
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

  measure: commits {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      repository.project,
      repository.repository,
      date_date,
      repository_commit_id,
      user.user,
      message,
      repository_commit_change.commit_changes
    ]
  }
}
