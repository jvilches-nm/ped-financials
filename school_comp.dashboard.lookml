- dashboard: school_comp
  title: School Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Actual Expenditures by Object Category for General Funds
    name: Actual Expenditures by Object Category for General Funds
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [stars_locations.School_name_plain, actuals_line.amount, coa_object_hierarchy.object_group]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      coa_fund_hierarchy.fund_group: General Fund
    sorts: [coa_object_hierarchy.object_group desc, stars_locations.School_name_plain]
    limit: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '$0,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types: {}
    series_colors: {}
    series_labels:
      actuals_line.amount: Spending
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
    row: 42
    col: 0
    width: 24
    height: 8
  - title: Actual Salary/Compensation Expenditures by Job Category for General Funds
    name: Actual Salary/Compensation Expenditures by Job Category for General Funds
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, stars_locations.School_name_plain, coa_job_class.job_rollup_name]
    pivots: [coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_name: "-No Job Class"
      coa_fund_hierarchy.fund_group: General Fund
    sorts: [coa_job_class.job_rollup_name, stars_locations.School_name_plain]
    limit: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '$0,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types: {}
    series_colors: {}
    series_labels:
      actuals_line.amount: Spending
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
    row: 50
    col: 0
    width: 24
    height: 8
  - name: Map of Schools
    title: Map of Schools
    merged_queries:
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_locations.map_location, stars_locations.School_name_plain, stars_locations.student_pop]
      sorts: [stars_locations.School_name_plain]
      limit: 4
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_locations.School_name_plain]
      sorts: [stars_locations.School_name_plain]
      limit: 4
      dynamic_fields: [{table_calculation: row, label: row, expression: row(), value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
      join_fields:
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_radius_fixed: 5
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    map_value_colors: ["#F15922", "#A85573", "#068993", "#D9C202"]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    hidden_fields: [stars_locations.student_pop]
    type: looker_map
    column_limit: 50
    listen:
    - 'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: stars_locations.location_year
      Location Type: stars_locations.location_type
    - 'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: stars_locations.location_year
      Location Type: stars_locations.location_type
    row: 4
    col: 0
    width: 6
    height: 7
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, stars_locations.School_name_plain, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [coa_fund_hierarchy.fund_group, stars_locations.School_name_plain]
    limit: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: State/Local - actuals_line.amount,
            id: State/Local - actuals_line.amount, name: State/Local}, {axisId: State
              - actuals_line.amount, id: State - actuals_line.amount, name: State},
          {axisId: Other - actuals_line.amount, id: Other - actuals_line.amount, name: Other},
          {axisId: Local - actuals_line.amount, id: Local - actuals_line.amount, name: Local},
          {axisId: General - actuals_line.amount, id: General - actuals_line.amount,
            name: General}, {axisId: Federal - actuals_line.amount, id: Federal -
              actuals_line.amount, name: Federal}, {axisId: Capital Project - actuals_line.amount,
            id: Capital Project - actuals_line.amount, name: Capital Project}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types: {}
    series_colors:
      Federal Grants - actuals_line.amount: "#068993"
      Debt Service - actuals_line.amount: "#F15922"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    series_labels:
      actuals_line.amount: Spendings
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      actuals_line.amount:
        is_active: true
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
    row: 34
    col: 0
    width: 24
    height: 8
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.pk_pop, stars_locations.kf_pop, stars_locations.g1_pop,
      stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop, stars_locations.g5_pop,
      stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop, stars_locations.g9_pop,
      stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop, stars_locations.School_name_plain]
    sorts: [stars_locations.School_name_plain]
    limit: 4
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    series_labels:
      stars_locations.g1_pop: G1
      stars_locations.g2_pop: G2
      stars_locations.g3_pop: G3
      stars_locations.g4_pop: G4
      stars_locations.g5_pop: G5
      stars_locations.g6_pop: G6
      stars_locations.g7_pop: G7
      stars_locations.g8_pop: G8
      stars_locations.g9_pop: G9
      stars_locations.g10_pop: G10
      stars_locations.g11_pop: G11
      stars_locations.g12_pop: G12
      stars_locations.kf_pop: K
      stars_locations.kn_pop: KN
      stars_locations.pk_pop: PreK
      stars_locations.student_pop: Total Students
    label_rotation: -90
    show_dropoff: false
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: stars_locations.location_year
      Location Type: stars_locations.location_type
    row: 17
    col: 0
    width: 24
    height: 7
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    subtitle_text: ''
    body_text: Please note, revenue will only exist for charter schools, not for district
      schools.
    row: 24
    col: 0
    width: 24
    height: 2
  - name: Students
    type: text
    title_text: Students
    body_text: ''
    row: 15
    col: 0
    width: 24
    height: 2
  - title: School Details
    name: School Details
    model: ped_public_financials
    explore: stars_locations
    type: looker_grid
    fields: [stars_locations.School_name_plain, stars_districts.district_name, stars_locations.location_county,
      stars_locations.location_type, stars_locations.school_level, stars_locations.school_size,
      stars_locations.student_pop]
    sorts: [stars_locations.School_name_plain]
    limit: 4
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      stars_locations.student_pop: Students
      stars_locations.school_size: School Size
      stars_locations.school_level: School Level
      stars_locations.location_type: Location Type
      stars_locations.location_county: County
    series_cell_visualizations:
      stars_locations.student_pop:
        is_active: true
        palette:
          palette_id: a1d0c56f-d91e-faf8-70c4-4c102729f71d
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
          custom_colors:
          - "#068993"
          - "#068993"
          - "#068993"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: stars_locations.location_year
      Location Type: stars_locations.location_type
    row: 11
    col: 0
    width: 24
    height: 4
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials
    explore: actuals_revenue_line
    type: looker_bar
    fields: [coa_fund_hierarchy.fund_group, stars_locations.School_name_plain, actuals_revenue_line.amount]
    pivots: [coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [coa_fund_hierarchy.fund_group, stars_locations.School_name_plain]
    limit: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Capital Project -
              actuals_revenue_line.amount, id: Capital Project - actuals_revenue_line.amount,
            name: Capital Project}, {axisId: Federal - actuals_revenue_line.amount,
            id: Federal - actuals_revenue_line.amount, name: Federal}, {axisId: General
              - actuals_revenue_line.amount, id: General - actuals_revenue_line.amount,
            name: General}, {axisId: Local - actuals_revenue_line.amount, id: Local
              - actuals_revenue_line.amount, name: Local}, {axisId: Other - actuals_revenue_line.amount,
            id: Other - actuals_revenue_line.amount, name: Other}, {axisId: State
              - actuals_revenue_line.amount, id: State - actuals_revenue_line.amount,
            name: State}, {axisId: State/Local - actuals_revenue_line.amount, id: State/Local
              - actuals_revenue_line.amount, name: State/Local}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      General Fund - actuals_revenue_line.amount: "#A8876C"
      State and Local Grants - actuals_revenue_line.amount: "#F2C73C"
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
    row: 26
    col: 0
    width: 24
    height: 8
  - name: Overview
    type: text
    title_text: Overview
    subtitle_text: ''
    body_text: |-
      ###Fiscal year 2021-2022 currently contains first quarter data. Data will continue to be updated throughout the year as it is approved in the Operation Budget Management System.

      ###School level financials are currently only available for charter schools. District school level financials will be available starting with the 2022-2023 fiscal year.
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Actual Expenditures by School
    name: Actual Expenditures by School
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, stars_locations.School_name_plain]
    sorts: [stars_locations.School_name_plain]
    limit: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '4'
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      'Select Schools:': stars_locations.School_name_plain
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
    row: 4
    col: 6
    width: 18
    height: 7
  filters:
  - name: Location Type
    title: Location Type
    type: field_filter
    default_value: Charter School,District School
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - Charter School
      - District School
    model: ped_public_financials
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_type
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2021-2022
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: ped_public_financials
    explore: actuals_line
    listens_to_filters: []
    field: budget_year.year_name
  - name: 'Select Schools:'
    title: 'Select Schools:'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ped_public_financials
    explore: stars_locations
    listens_to_filters: [Location Type]
    field: stars_locations.School_name_plain
