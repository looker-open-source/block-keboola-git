connection: "keboola_block_git"

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
}

explore: issue_comment {
  join: issue {
    type: left_outer
    sql_on: ${issue_comment.issue_id} = ${issue.issue_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${issue_comment.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${issue.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }

  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
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
}

explore: pull_request_activity {
  join: pull_request {
    type: left_outer
    sql_on: ${pull_request_activity.pull_request_id} = ${pull_request.pull_request_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${pull_request_activity.user_id} = ${user.user_id} ;;
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
}

explore: repository_commit_change {
  join: repository_commit {
    type: left_outer
    sql_on: ${repository_commit_change.repository_commit_id} = ${repository_commit.repository_commit_id} ;;
    relationship: many_to_one
  }

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
}

explore: user {
  join: organization {
    type: left_outer
    sql_on: ${user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }
}
