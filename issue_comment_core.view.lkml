include: "//@{CONFIG_PROJECT_NAME}/views/issue_comment.view"

view: issue_comment {
  extends: [issue_comment_config]
}

view: issue_comment_core {
  sql_table_name: @{SCHEMA_NAME}.ISSUE_COMMENT ;;
  drill_fields: [issue_comment_id, description]

  dimension: issue_comment_id {
    label: "Issue Comment ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ISSUE_COMMENT_ID" ;;
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

  dimension: issue_id {
    type: string
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: issue_comments {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.user,
      issue.title,
      issue.description,
      created_date,
      issue_comment_id,
      user,
      description
    ]
  }
}
