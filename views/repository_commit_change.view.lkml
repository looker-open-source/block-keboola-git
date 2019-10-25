view: repository_commit_change {
  sql_table_name: WORKSPACE_545895473.REPOSITORY_COMMIT_CHANGE ;;
  drill_fields: [repository_commit_change_id]

  dimension: repository_commit_change_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_COMMIT_CHANGE_ID" ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}."FILE_TYPE" ;;
  }

  dimension: lines_added {
    type: number
    sql: ${TABLE}."LINES_ADDED" ;;
  }

  dimension: lines_removed {
    type: number
    sql: ${TABLE}."LINES_REMOVED" ;;
  }

  dimension: new_path {
    type: string
    sql: ${TABLE}."NEW_PATH" ;;
  }

  dimension: old_path {
    type: string
    sql: ${TABLE}."OLD_PATH" ;;
  }

  dimension: repository_commit_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."REPOSITORY_COMMIT_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  measure: count {
    type: count
    drill_fields: [repository_commit_change_id, repository_commit.repository_commit_id]
  }
}
