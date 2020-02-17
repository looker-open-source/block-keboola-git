include: "//@{CONFIG_PROJECT_NAME}/organization_user.view"

view: organization_user {
  extends: [organization_user_config]
}

view: organization_user_core {
  sql_table_name: @{SCHEMA_NAME}."ORGANIZATION_USER" ;;

  dimension: organization_id {
    hidden: yes
    type: string
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: user_id {
    hidden: yes
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.users
    ]
  }
}
