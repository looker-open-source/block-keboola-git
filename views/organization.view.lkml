view: organization {
  sql_table_name: WORKSPACE_545895473.ORGANIZATION ;;
  drill_fields: [organization_id]

  dimension: organization_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}."ORGANIZATION" ;;
  }

  measure: count {
    type: count
    drill_fields: [organization_id, user.count]
  }
}
