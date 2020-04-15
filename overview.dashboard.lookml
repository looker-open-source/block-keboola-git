- dashboard: overview
  title: Overview
  layout: newspaper
  elements:
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://keboola-resources.s3.amazonaws.com/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'block'
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
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Overview</b></font>
    body_text: ''
    row: 0
    col: 6
    width: 12
    height: 2
  - title: Overall Activity
    name: Overall Activity
    model: block_keboola_git
    explore: event
    type: looker_area
    fields: [event.date_week, event.events, event.event]
    pivots: [event.event]
    fill_fields: [event.date_week]
    sorts: [event.date_week desc, event.event]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Commit - event.events,
            id: Commit - event.events, name: Commit}, {axisId: Issue Comment - event.events,
            id: Issue Comment - event.events, name: Issue Comment}, {axisId: Issue
              Created - event.events, id: Issue Created - event.events, name: Issue
              Created}, {axisId: Pull Request Created - event.events, id: Pull Request
              Created - event.events, name: Pull Request Created}, {axisId: Pull Request
              Declined - event.events, id: Pull Request Declined - event.events, name: Pull
              Request Declined}, {axisId: Pull Request Merged - event.events, id: Pull
              Request Merged - event.events, name: Pull Request Merged}, {axisId: Pull
              Request Open - event.events, id: Pull Request Open - event.events, name: Pull
              Request Open}], showLabels: false, showValues: true, unpinAxis: false,
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
    series_types: {}
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    ordering: none
    show_null_labels: false
    listen:
      Date: event.date_date
      Organization: organization.organization
      User: user.user
    row: 4
    col: 0
    width: 24
    height: 7
  - title: Commits
    name: Commits KPI
    model: block_keboola_git
    explore: repository_commit
    type: single_value
    fields: [repository_commit.commits]
    limit: 500
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 12
    width: 6
    height: 2
  - title: Pull Requests
    name: Pull Requests KPI
    model: block_keboola_git
    explore: pull_request
    type: single_value
    fields: [pull_request.pull_requests]
    limit: 500
    listen:
      Date: pull_request.created_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 6
    width: 6
    height: 2
  - title: Issues
    name: Issues KPI
    model: block_keboola_git
    explore: issue
    type: single_value
    fields: [issue.issues]
    limit: 500
    listen:
      Date: issue.created_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 18
    width: 6
    height: 2
  - title: New Repositories
    name: New Repositories
    model: block_keboola_git
    explore: repository
    type: single_value
    fields: [repository.repositories]
    limit: 500
    listen:
      Date: repository.created_date
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Pull Requests
    type: text
    title_text: Pull Requests
    row: 18
    col: 0
    width: 24
    height: 2
  - title: Pull Requests Trend
    name: Pull Requests Trend
    model: block_keboola_git
    explore: pull_request
    type: looker_column
    fields: [pull_request.pull_requests, pull_request.state, pull_request.created_week]
    pivots: [pull_request.state]
    fill_fields: [pull_request.created_week]
    sorts: [pull_request.state]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: DECLINED - pull_request.pull_requests,
            id: DECLINED - pull_request.pull_requests, name: DECLINED}, {axisId: MERGED
              - pull_request.pull_requests, id: MERGED - pull_request.pull_requests,
            name: MERGED}, {axisId: OPEN - pull_request.pull_requests, id: OPEN -
              pull_request.pull_requests, name: OPEN}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      DECLINED - pull_request.pull_requests: "#ed6168"
      MERGED - pull_request.pull_requests: "#49cec1"
      OPEN - pull_request.pull_requests: "#1ea8df"
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
      Date: pull_request.created_date
      Organization: organization.organization
      User: user.user
    row: 20
    col: 12
    width: 12
    height: 7
  - title: Pull Requests by Repository (TOP 10)
    name: Pull Requests by Repository (TOP 10)
    model: block_keboola_git
    explore: pull_request
    type: looker_bar
    fields: [pull_request.pull_requests, pull_request.state, repository.repository]
    pivots: [pull_request.state]
    sorts: [pull_request.state 0, pull_request.pull_requests desc 3]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: DECLINED - pull_request.pull_requests,
            id: DECLINED - pull_request.pull_requests, name: DECLINED}, {axisId: MERGED
              - pull_request.pull_requests, id: MERGED - pull_request.pull_requests,
            name: MERGED}, {axisId: OPEN - pull_request.pull_requests, id: OPEN -
              pull_request.pull_requests, name: OPEN}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      DECLINED - pull_request.pull_requests: "#ed6168"
      MERGED - pull_request.pull_requests: "#49cec1"
      OPEN - pull_request.pull_requests: "#1ea8df"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: pull_request.created_date
      Organization: organization.organization
      User: user.user
    row: 20
    col: 0
    width: 12
    height: 7
  - name: Commits
    type: text
    title_text: Commits
    row: 27
    col: 0
    width: 24
    height: 2
  - title: Issues Trend
    name: Issues Trend
    model: block_keboola_git
    explore: issue
    type: looker_column
    fields: [issue.issues, issue.created_week, issue.kind]
    pivots: [issue.kind]
    fill_fields: [issue.created_week]
    sorts: [issue.created_week desc, issue.kind]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: bug - issue.issues,
            id: bug - issue.issues, name: bug}, {axisId: enhancement - issue.issues,
            id: enhancement - issue.issues, name: enhancement}, {axisId: proposal
              - issue.issues, id: proposal - issue.issues, name: proposal}, {axisId: task
              - issue.issues, id: task - issue.issues, name: task}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      bug - issue.issues: "#ed6168"
      proposal - issue.issues: "#e9b404"
      enhancement - issue.issues: "#49cec1"
      task - issue.issues: "#1ea8df"
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
      Date: issue.created_date
      Organization: organization.organization
      User: user.user
    row: 38
    col: 12
    width: 12
    height: 7
  - name: Issues
    type: text
    title_text: Issues
    row: 36
    col: 0
    width: 24
    height: 2
  - title: Issues by Repository (TOP 10)
    name: Issues by Repository (TOP 10)
    model: block_keboola_git
    explore: issue
    type: looker_bar
    fields: [issue.issues, issue.kind, repository.repository]
    pivots: [issue.kind]
    sorts: [issue.kind 0, issue.issues desc 4]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: bug - issue.issues,
            id: bug - issue.issues, name: bug}, {axisId: enhancement - issue.issues,
            id: enhancement - issue.issues, name: enhancement}, {axisId: proposal
              - issue.issues, id: proposal - issue.issues, name: proposal}, {axisId: task
              - issue.issues, id: task - issue.issues, name: task}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      bug - issue.issues: "#ed6168"
      proposal - issue.issues: "#e9b404"
      enhancement - issue.issues: "#49cec1"
      task - issue.issues: "#1ea8df"
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
      Date: issue.created_date
      Organization: organization.organization
      User: user.user
    row: 38
    col: 0
    width: 12
    height: 7
  - title: Issues Open For More Than 30 Days
    name: Issues Open For More Than 30 Days
    model: block_keboola_git
    explore: issue
    type: table
    fields: [repository.repository, issue.title, issue.kind, issue.days_since_created,
      issue.days_since_updated]
    filters:
      issue.state: new
      issue.days_since_created: ">30"
    sorts: [issue.days_since_created desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {steps: 5, reverse: true, constraints: {min: {type: number, value: 30}}}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Organization: organization.organization
      User: user.user
    row: 11
    col: 0
    width: 12
    height: 5
  - title: Commits by Repository (TOP 10)
    name: Commits by Repository (TOP 10)
    model: block_keboola_git
    explore: repository_commit
    type: looker_bar
    fields: [repository.repository, repository.language, repository_commit.commits]
    pivots: [repository.language]
    sorts: [repository_commit.commits desc 3, repository.language 0]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: repository_commit.commits,
            id: php - repository_commit.commits, name: php}, {axisId: repository_commit.commits,
            id: python - repository_commit.commits, name: python}, {axisId: repository_commit.commits,
            id: unknown - repository_commit.commits, name: unknown}, {axisId: repository_commit.commits,
            id: Row Total - repository_commit.commits, name: Row Total}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
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
    row: 29
    col: 0
    width: 12
    height: 7
  - title: Commits Trend
    name: Commits Trend
    model: block_keboola_git
    explore: repository_commit
    type: looker_column
    fields: [repository.language, repository_commit.date_week, repository_commit.commits]
    pivots: [repository.language]
    fill_fields: [repository_commit.date_week]
    sorts: [repository_commit.date_week desc, repository.language]
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
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 29
    col: 12
    width: 12
    height: 7
  - title: Pull Requests Stalled For More Than 2 Days
    name: Pull Requests Stalled For More Than 2 Days
    model: block_keboola_git
    explore: pull_request
    type: table
    fields: [repository.repository, pull_request.title, pull_request.days_since_updated]
    filters:
      pull_request.state: OPEN
      pull_request.days_since_updated: ">2"
    sorts: [pull_request.days_since_updated desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3,
          options: {steps: 5, reverse: true, constraints: {min: {type: number, value: 2}}}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Organization: organization.organization
      User: user.user
    row: 11
    col: 12
    width: 12
    height: 7
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
