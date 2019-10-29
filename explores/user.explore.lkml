explore: user_core {
  hidden: yes
  extension: required

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }
}
