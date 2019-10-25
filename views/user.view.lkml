view: user {
  sql_table_name: @{SCHEMA_NAME}."USER" ;;

  dimension: user_id {
    label: "User ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."USER_ID" ;;
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

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."IS_ACTIVE" = 'true' ;;
  }

  dimension: is_member {
    type: yesno
    sql: ${TABLE}."IS_MEMBER" = 'true' ;;
  }

  dimension: organization_id {
    type: string
    hidden: yes
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."USER" ;;
  }

  measure: users {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user,
      issue.issues,
      issue_comment.issue_comments,
      pull_request.pull_requests,
      pull_request_activity.pull_request_activities,
      repository_commit.commits
    ]
  }
}
