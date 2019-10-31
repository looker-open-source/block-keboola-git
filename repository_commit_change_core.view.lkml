include: "//@{CONFIG_PROJECT_NAME}/repository_commit_change.view"

view: repository_commit_change {
  extends: [repository_commit_change_config]
}

view: repository_commit_change_core {
  sql_table_name: @{SCHEMA_NAME}.REPOSITORY_COMMIT_CHANGE ;;

  dimension: repository_commit_change_id {
    label: "Repository Commit Change ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_COMMIT_CHANGE_ID" ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}."FILE_TYPE" ;;
  }

  dimension: lines_added_dimension {
    type: number
    sql: ${TABLE}."LINES_ADDED" ;;
  }

  dimension: lines_removed_dimension {
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
    hidden: yes
    sql: ${TABLE}."REPOSITORY_COMMIT_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  measure: lines_added {
    type: sum
    sql: ${lines_added_dimension} ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: lines_removed {
    type: sum
    sql: ${lines_removed_dimension} ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: lines_changed {
    type: sum
    sql: ${lines_added_dimension} + ${lines_removed_dimension} ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: commit_changes {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      repository.repository,
      user.user,
      repository_commit.repository_commit_id,
      repository_commit_change_id,
      status,
      file_type,
      new_path,
      old_path,
      lines_removed,
      lines_added
    ]
  }
}