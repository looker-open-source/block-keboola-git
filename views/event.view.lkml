view: event {
  sql_table_name: @{SCHEMA_NAME}.EVENT ;;
  drill_fields: [event_id]

  dimension: event_id {
    label: "Event ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."EVENT_ID" ;;
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

  dimension: event {
    type: string
    sql: ${TABLE}."EVENT" ;;
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
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: events {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.user,
      repository.repository,
      date_date,
      event,
      event_id
    ]
  }
}
