- dashboard: users_activity
  title: Users Activity
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
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Users Activity</b></font>
    body_text: ''
    row: 0
    col: 6
    width: 12
    height: 2
  - title: Users Overall Activity
    name: Users Overall Activity
    model: block_keboola_git
    explore: event
    type: looker_column
    fields: [user.user, event.events, event.event]
    pivots: [event.event]
    sorts: [event.event 0, user.user]
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
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: event.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 0
    width: 12
    height: 7
  - title: Users Pull Requests
    name: Users Pull Requests
    model: block_keboola_git
    explore: pull_request
    type: looker_column
    fields: [user.user, pull_request.pull_requests, pull_request.state]
    pivots: [pull_request.state]
    sorts: [pull_request.pull_requests desc 0, pull_request.state]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    series_colors:
      DECLINED - pull_request.pull_requests: "#ed6168"
      MERGED - pull_request.pull_requests: "#49cec1"
      OPEN - pull_request.pull_requests: "#1ea8df"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: pull_request.created_date
      Organization: organization.organization
      User: user.user
    row: 9
    col: 0
    width: 12
    height: 7
  - title: Repositories Users Are Developing In (Commits/Pulls)
    name: Repositories Users Are Developing In (Commits/Pulls)
    model: block_keboola_git
    explore: event
    type: looker_column
    fields: [user.user, repository.repositories, repository.language]
    pivots: [repository.language]
    filters:
      event.event: Commit,Pull Request Created
      event.events: ">0"
    sorts: [user.user, repository.language]
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
    point_style: none
    series_colors: {}
    series_labels:
      " - repository.repositories": unknown
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: event.date_date
      Organization: organization.organization
      User: user.user
    row: 2
    col: 12
    width: 12
    height: 7
  - title: Users Commits
    name: Users Commits
    model: block_keboola_git
    explore: repository_commit
    type: looker_column
    fields: [repository_commit.commits, user.user, repository.language]
    pivots: [repository.language]
    sorts: [repository_commit.commits desc 0, repository.language]
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
    listen:
      Date: repository_commit.date_date
      Organization: organization.organization
      User: user.user
    row: 16
    col: 0
    width: 12
    height: 7
  - title: Users Assigned Issues
    name: Users Assigned Issues
    model: block_keboola_git
    explore: issue
    type: looker_column
    fields: [user.user, issue.kind, issue.issues]
    pivots: [issue.kind]
    sorts: [issue.issues desc 0, issue.kind]
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
      Date: issue.created_date
      Organization: organization.organization
      User: user.user
    row: 16
    col: 12
    width: 12
    height: 7
  - title: Users Activities Above Pull Requests (Reviews)
    name: Users Activities Above Pull Requests (Reviews)
    model: block_keboola_git
    explore: pull_request
    type: looker_column
    fields: [pull_request_activity.pull_request_activities, pull_request_activity.user,
      pull_request_activity.state]
    pivots: [pull_request_activity.state]
    sorts: [pull_request_activity.pull_request_activities desc 0, pull_request_activity.state]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    series_colors:
      DECLINED - pull_request_activity.pull_request_activities: "#ed6168"
      MERGED - pull_request_activity.pull_request_activities: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: pull_request_activity.date_date
      Organization: organization.organization
      User: pull_request_activity.user
    row: 9
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
    default_value: "-External User"
    allow_multiple_values: true
    required: false
    model: block_keboola_git
    explore: user
    listens_to_filters: [Organization]
    field: user.user
