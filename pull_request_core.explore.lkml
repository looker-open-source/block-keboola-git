explore: pull_request_core {
  hidden: yes
  extension: required

  join: user {
    type: left_outer
    sql_on: ${pull_request.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${pull_request.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }

  join: organization_user {
    type: left_outer
    sql_on: ${user.user_id} = ${organization_user.user_id} ;;
    relationship: one_to_many
  }

  join: organization {
    type: left_outer
    sql_on: ${organization_user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }

  join: pull_request_activity {
    type: left_outer
    sql_on: ${pull_request.pull_request_id} = ${pull_request_activity.pull_request_id} ;;
    relationship: one_to_many
  }
}
