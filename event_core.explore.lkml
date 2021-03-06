explore: event_core {
  hidden: yes
  extension: required

  join: user {
    type: left_outer
    sql_on: ${event.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${event.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }
}
