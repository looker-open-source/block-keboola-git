view: repository {
  sql_table_name: WORKSPACE_545895473.REPOSITORY ;;
  drill_fields: [repository_id]

  dimension: repository_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_ID" ;;
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

  dimension: has_issues {
    type: string
    sql: ${TABLE}."HAS_ISSUES" ;;
  }

  dimension: has_wiki {
    type: string
    sql: ${TABLE}."HAS_WIKI" ;;
  }

  dimension: is_looker {
    type: string
    sql: ${TABLE}."IS_LOOKER" ;;
  }

  dimension: is_private {
    type: string
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."LANGUAGE" ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}."PROJECT" ;;
  }

  dimension: repository {
    type: string
    sql: ${TABLE}."REPOSITORY" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  measure: count {
    type: count
    drill_fields: [repository_id, issue.count, pull_request.count, repository_commit.count]
  }
}
