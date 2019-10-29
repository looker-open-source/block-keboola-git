- dashboard: looker_repositories_activity
  title: Looker Repositories Activity
  layout: newspaper
  elements:
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://www.keboola.com/data/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'scaffold'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Git</b></font>
    row: 0
    col: 0
    width: 6
    height: 2
  - name: 'dashboard'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Looker Repositories Activity</b></font>
    body_text: ''
    row: 0
    col: 6
    width: 12
    height: 2
  - title: Repositories With Most Commits (TOP 10)
    name: Repositories With Most Commits (TOP 10)
    model: block_keboola_git
    explore: repository_commit
    type: looker_bar
    fields: [repository_commit.commits, repository_commit_change.file_type, repository.repository]
    pivots: [repository_commit_change.file_type]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: "-EMPTY,-NULL,-gitkeep"
    sorts: [repository_commit.commits desc 7, repository_commit_change.file_type 0]
    limit: 10
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Looker Commits Trend
    name: Looker Commits Trend
    model: block_keboola_git
    explore: repository_commit
    type: looker_area
    fields: [repository_commit.commits, repository_commit_change.file_type, repository_commit.date_week]
    pivots: [repository_commit_change.file_type]
    fill_fields: [repository_commit.date_week]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: "-EMPTY,-NULL,-gitkeep"
    sorts: [repository_commit.commits desc 0, repository_commit_change.file_type]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 8
    width: 16
    height: 8
  - title: Users Looker Commits
    name: Users Looker Commits
    model: block_keboola_git
    explore: repository_commit
    type: looker_column
    fields: [repository_commit.commits, user.user, repository_commit_change.file_type]
    pivots: [repository_commit_change.file_type]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: "-EMPTY,-NULL,-gitkeep"
    sorts: [repository_commit.commits desc 7, repository_commit_change.file_type 0]
    limit: 500
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 10
    col: 0
    width: 12
    height: 7
  - title: View Commits
    name: View Commits
    model: block_keboola_git
    explore: repository_commit
    type: single_value
    fields: [repository_commit.commits, repository_commit_change.lines_changed]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: view
    sorts: [repository_commit.commits desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Lines Changed
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Explore Commits
    name: Explore Commits
    model: block_keboola_git
    explore: repository_commit
    type: single_value
    fields: [repository_commit.commits, repository_commit_change.lines_changed]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: explore
    sorts: [repository_commit.commits desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Lines Changed
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Model Commits
    name: Model Commits
    model: block_keboola_git
    explore: repository_commit
    type: single_value
    fields: [repository_commit.commits, repository_commit_change.lines_changed]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: model
    sorts: [repository_commit.commits desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Lines Changed
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 6
    col: 0
    width: 4
    height: 4
  - title: Dashboard Commits
    name: Dashboard Commits
    model: block_keboola_git
    explore: repository_commit
    type: single_value
    fields: [repository_commit.commits, repository_commit_change.lines_changed]
    filters:
      repository.is_looker: 'Yes'
      repository_commit_change.file_type: dashboard
    sorts: [repository_commit.commits desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Lines Changed
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: php - repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: python - repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: unknown
              - repository_commit.commits, id: unknown - repository_commit.commits,
            name: unknown}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    series_types: {}
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 6
    col: 4
    width: 4
    height: 4
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 3 months
    allow_multiple_values: true
    required: false
  - name: Organization
    title: Organization
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_keboola_git
    explore: organization
    listens_to_filters: []
    field: organization.organization
  - name: User
    title: User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_keboola_git
    explore: user
    listens_to_filters: [Organization]
    field: user.user
