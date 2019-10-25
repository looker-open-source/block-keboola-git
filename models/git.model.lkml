connection: "@{CONNECTION}"

# include all the views
include: "/views/**/*.view"

datagroup: git_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: git_default_datagroup

explore: issue {
  join: repository {
    type: left_outer
    sql_on: ${issue.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${issue.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }

  join: issue_comment {
    type: left_outer
    sql_on: ${issue.issue_id} = ${issue_comment.issue_id} ;;
    relationship: one_to_many
  }
}

explore: organization {}

explore: pull_request {
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

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }

  join: pull_request_activity {
    type: left_outer
    sql_on: ${pull_request.pull_request_id} = ${pull_request_activity.pull_request_id} ;;
    relationship: one_to_many
  }
}

explore: repository {}

explore: repository_commit {
  join: user {
    type: left_outer
    sql_on: ${repository_commit.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${repository_commit.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }

  join: repository_commit_change {
    type: left_outer
    sql_on: ${repository_commit.repository_commit_id} = ${repository_commit_change.repository_commit_id} ;;
    relationship: one_to_many
  }
}

explore: event {
  join: user {
    type: left_outer
    sql_on: ${event.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${event.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }
}

explore: user {
  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }
}
