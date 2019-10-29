project_name: "block-keboola-git"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-git-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_git"
}

constant: SCHEMA_NAME {
  value: "WORKSPACE_546683285"
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
