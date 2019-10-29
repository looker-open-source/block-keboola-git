view: repository {
  sql_table_name: @{SCHEMA_NAME}.REPOSITORY ;;
  drill_fields: [repository]

  dimension: repository_id {
    label: "Repository ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."REPOSITORY_ID" ;;
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

  dimension: has_issues {
    type: yesno
    sql: ${TABLE}."HAS_ISSUES" = 'true' ;;
  }

  dimension: has_wiki {
    type: yesno
    sql: ${TABLE}."HAS_WIKI" = 'true' ;;
  }

  dimension: is_looker {
    type: yesno
    sql: ${TABLE}."IS_LOOKER" = 'true' ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IS_PRIVATE" = 'true' ;;
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
    html: <a href={{url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  measure: repositories {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      project,
      repository,
      description,
      created_date,
      language,
      pull_request.pull_requests,
      repository_commit.commits,
      issue.issues
    ]
  }
}
