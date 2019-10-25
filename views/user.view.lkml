view: user {
  sql_table_name: WORKSPACE_545895473."USER" ;;
  drill_fields: [user_id]

  dimension: user_id {
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
    type: string
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_member {
    type: string
    sql: ${TABLE}."IS_MEMBER" ;;
  }

  dimension: organization_id {
    type: string
    # hidden: yes
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_id,
      organization.organization_id,
      issue.count,
      issue_comment.count,
      pull_request.count,
      pull_request_activity.count,
      repository_commit.count
    ]
  }
}
