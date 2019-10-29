include: "//@{CONFIG_PROJECT_NAME}/views/organization.view"

view: organization {
  extends: [organization_config]
}

view: organization_core {
  sql_table_name: @{SCHEMA_NAME}.ORGANIZATION ;;

  dimension: organization_id {
    label: "Organization ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}."ORGANIZATION" ;;
  }

  measure: organizations {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.users
    ]
  }
}
