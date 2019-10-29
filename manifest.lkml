project_name: "block-keboola-git"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-git-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_git"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "WORKSPACE_546683285"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }
}
