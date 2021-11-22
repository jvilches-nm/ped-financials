- dashboard: state
  title: State Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Actual Expenditures
    name: Actual Expenditures
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    single_value_title: Actual Expenditures
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 6
    col: 0
    width: 7
    height: 3
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
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
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Property: "#e6e6e6"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 62
    col: 0
    width: 24
    height: 9
  - title: Students by Location Type
    name: Students by Location Type
    model: ped_public_financials
    explore: stars_locations
    type: looker_pie
    fields: [stars_locations.student_pop, stars_locations.location_type_name]
    filters:
      stars_locations.location_type: "-Central Office"
    sorts: [stars_locations.student_pop desc, stars_locations.location_type_name]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    series_colors:
      Charter School - stars_locations.student_pop: "#068993"
      District School - stars_locations.student_pop: "#068993"
      Offsite - stars_locations.student_pop: "#9B8E20"
      stars_locations.student_pop: "#068993"
      District School: "#068993"
      State Charter School: "#E87F2F"
      Local Charter School - stars_locations.student_pop: "#F15922"
      State Charter School - stars_locations.student_pop: "#853955"
      Local Charter School: "#D9C202"
    show_value_labels: true
    font_size: 13
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: stars_locations.student_pop,
            id: Charter School - stars_locations.student_pop, name: Charter School},
          {axisId: stars_locations.student_pop, id: District School - stars_locations.student_pop,
            name: District School}, {axisId: stars_locations.student_pop, id: Offsite
              - stars_locations.student_pop, name: Offsite}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: stars_locations.location_year
    row: 14
    col: 15
    width: 9
    height: 8
  - title: Students
    name: Students
    model: ped_public_financials
    explore: stars_locations
    type: single_value
    fields: [stars_locations.student_pop]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Students
    defaults_version: 1
    listen:
      Fiscal Year: stars_locations.location_year
    row: 3
    col: 16
    width: 8
    height: 3
  - title: District Schools
    name: District Schools
    model: ped_public_financials
    explore: stars_locations
    type: single_value
    fields: [stars_locations.School_name_plain]
    filters:
      stars_locations.location_type: District School
    sorts: [stars_locations.School_name_plain]
    limit: 5000
    dynamic_fields: [{table_calculation: state_district_schools, label: State District
          Schools, expression: 'count(${stars_locations.School_name_plain})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: District Schools
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
    stacking: ''
    limit_displayed_rows: false
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
    hidden_fields: [stars_locations.location_name, stars_locations.School_name_plain]
    series_types: {}
    listen:
      Fiscal Year: stars_locations.location_year
    row: 6
    col: 20
    width: 4
    height: 2
  - name: Schools/Students
    type: text
    title_text: Schools/Students
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 2
  - title: State Charters
    name: State Charters
    model: ped_public_financials
    explore: stars_locations
    type: single_value
    fields: [stars_districts.count]
    filters:
      stars_districts.district_type: State Charter
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: State Charter Schools
    defaults_version: 1
    listen:
      Fiscal Year: stars_locations.location_year
    row: 8
    col: 16
    width: 4
    height: 2
  - title: Local Charters
    name: Local Charters
    model: ped_public_financials
    explore: stars_locations
    type: single_value
    fields: [stars_locations.count]
    filters:
      stars_locations.location_type: Charter School
      stars_districts.district_type: State District
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Local Charter Schools
    defaults_version: 1
    listen:
      Fiscal Year: stars_locations.location_year
    row: 8
    col: 20
    width: 4
    height: 2
  - title: State Districts
    name: State Districts
    model: ped_public_financials
    explore: stars_locations
    type: single_value
    fields: [stars_districts.count]
    filters:
      stars_districts.district_type: State District
    limit: 5000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: State Districts
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
    stacking: ''
    limit_displayed_rows: false
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
    hidden_fields: []
    series_types: {}
    listen:
      Fiscal Year: stars_districts.location_year
    row: 6
    col: 16
    width: 4
    height: 2
  - title: RECs
    name: RECs
    model: ped_public_financials
    explore: budget_expenditures_line
    type: single_value
    fields: [entity_year.count_distinct_parent]
    filters:
      entity_year.parent_type: Regional Education Cooperative
    sorts: [entity_year.count_distinct_parent desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: RECs
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
    stacking: ''
    limit_displayed_rows: false
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
      Fiscal Year: budget_year.year_name
    row: 10
    col: 16
    width: 8
    height: 2
  - name: Revenue
    type: text
    title_text: Revenue
    subtitle_text: ''
    body_text: ''
    row: 22
    col: 0
    width: 24
    height: 2
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.pk_pop, stars_locations.kf_pop, stars_locations.g1_pop,
      stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop, stars_locations.g5_pop,
      stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop, stars_locations.g9_pop,
      stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
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
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: stars_locations.pk_pop,
            id: stars_locations.pk_pop, name: Pre-K}, {axisId: stars_locations.kf_pop,
            id: stars_locations.kf_pop, name: K}, {axisId: stars_locations.g1_pop,
            id: stars_locations.g1_pop, name: G1}, {axisId: stars_locations.g2_pop,
            id: stars_locations.g2_pop, name: G2}, {axisId: stars_locations.g3_pop,
            id: stars_locations.g3_pop, name: G3}, {axisId: stars_locations.g4_pop,
            id: stars_locations.g4_pop, name: G4}, {axisId: stars_locations.g5_pop,
            id: stars_locations.g5_pop, name: G5}, {axisId: stars_locations.g6_pop,
            id: stars_locations.g6_pop, name: G6}, {axisId: stars_locations.g7_pop,
            id: stars_locations.g7_pop, name: G7}, {axisId: stars_locations.g8_pop,
            id: stars_locations.g8_pop, name: G8}, {axisId: stars_locations.g9_pop,
            id: stars_locations.g9_pop, name: G9}, {axisId: stars_locations.g10_pop,
            id: stars_locations.g10_pop, name: G10}, {axisId: stars_locations.g11_pop,
            id: stars_locations.g11_pop, name: G11}, {axisId: stars_locations.g12_pop,
            id: stars_locations.g12_pop, name: G12}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors: {}
    series_labels:
      stars_locations.pk_pop: Pre-K
      stars_locations.kf_pop: K
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
    defaults_version: 1
    listen:
      Fiscal Year: stars_locations.location_year
    row: 14
    col: 0
    width: 15
    height: 8
  - name: Expenditures
    type: text
    title_text: Expenditures
    subtitle_text: ''
    body_text: ''
    row: 33
    col: 0
    width: 24
    height: 2
  - title: Acutal Expenditures by Job
    name: Acutal Expenditures by Job
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    series_colors:
      Assistants: "#e6e6e6"
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
    stacking: ''
    limit_displayed_rows: false
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
      Fiscal Year: budget_year.year_name
    row: 35
    col: 0
    width: 24
    height: 9
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    series_colors: {}
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
    font_size: '12'
    series_types: {}
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Fiscal Year: budget_year.year_name
    row: 44
    col: 0
    width: 24
    height: 9
  - name: Districts
    title: Districts
    merged_queries:
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_districts.district_name, stars_districts.district_size,
        stars_locations.count, stars_districts.public_student_pop]
      filters:
        stars_districts.district_type: State District
        stars_locations.location_type: District School
      sorts: [stars_districts.district_name]
      limit: 500
    - model: ped_public_financials
      explore: actuals_line
      type: looker_column
      fields: [stars_districts.district_name, budget_year.year_name, actuals_line.amount]
      filters:
        stars_districts.district_type: State District
        stars_locations.location_type: "-Charter School"
      sorts: [actuals_line.amount desc]
      limit: 500
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
      stacking: ''
      limit_displayed_rows: false
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
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
    - model: ped_public_financials
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_districts.district_name, budget_year.year_name]
      filters:
        stars_districts.district_type: State District
        stars_locations.location_type: "-Charter School"
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      stars_locations.count: Schools
      stars_districts.total_student_pop: Students
      budget_expenditures_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_line.projected_amt: Revenue
      stars_districts.public_student_pop: Students
    series_column_widths:
      stars_districts.district_size: 98
      stars_locations.count: 80
      stars_districts.total_student_pop: 94
      actuals_line.amount: 153
      budget_expenditures_line.budget_amount: 193
    series_cell_visualizations:
      stars_locations.count:
        is_active: false
      actuals_revenue_line.amount:
        is_active: false
    series_text_format:
      budget_expenditures_line.budget_amount:
        fg_color: "#F15922"
      actuals_line.amount:
        fg_color: "#068993"
      budget_line.projected_amt:
        fg_color: "#9B2030"
      actuals_revenue_line.amount:
        fg_color: "#9B8E20"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [stars_districts.location_year]
    sorts: [stars_districts.district_name]
    listen:
    - Fiscal Year: stars_districts.location_year
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 83
    col: 0
    width: 12
    height: 6
  - name: Charter Schools
    title: Charter Schools
    merged_queries:
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_locations.School_name_plain, stars_locations.student_pop,
        stars_locations.location_type_name]
      filters:
        stars_locations.location_type: Charter School
      sorts: [stars_locations.student_pop desc]
      limit: 500
    - model: ped_public_financials
      explore: actuals_line
      type: table
      fields: [budget_year.year_name, actuals_line.amount, stars_locations.School_name_plain]
      filters:
        stars_locations.location_type: Charter School
      sorts: [actuals_line.amount desc]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    - model: ped_public_financials
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, budget_year.year_name, stars_locations.School_name_plain]
      filters:
        stars_locations.location_type: Charter School
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      stars_locations.count: Schools
      stars_districts.total_student_pop: Students
      budget_expenditures_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_line.projected_amt: Revenue
      stars_locations.location_type_name: Charter Type
      stars_locations.student_pop: Students
    series_column_widths:
      stars_districts.district_size: 98
      stars_locations.count: 80
      stars_districts.total_student_pop: 94
      actuals_line.amount: 143
      budget_expenditures_line.budget_amount: 193
      stars_districts.district_name: 275.3299999999999
      budget_line.projected_amt: 159
      stars_locations.student_pop: 84
      stars_locations.School_name_plain: 314
      charter: 76
      actuals_revenue_line.amount: 119
    series_cell_visualizations:
      stars_locations.count:
        is_active: false
    series_text_format:
      budget_expenditures_line.budget_amount:
        fg_color: "#F15922"
      actuals_line.amount:
        fg_color: "#068993"
      budget_line.projected_amt:
        fg_color: "#9B2030"
      actuals_revenue_line.amount:
        fg_color: "#9B8E20"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [stars_districts.location_year, stars_locations.location_type_name]
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Stars Locations Student Pop
        label_from_parameter:
        label_short: Student Pop
        map_layer:
        name: stars_locations.student_pop
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Student Pop
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.student_pop
        suggest_explore: stars_locations
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=309"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.student_pop "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: Actual amount spent
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actual Expenditures Actual Expenditures
        label_from_parameter:
        label_short: Actual Expenditures
        map_layer:
        name: actuals_line.amount
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_line
        view_label: Actual Expenditures
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Actual Expenditures
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: actuals_line
        suggest_dimension: actuals_line.amount
        suggest_explore: actuals_line
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Factuals_line.view.lkml?line=10"
        permanent: true
        source_file: views/actuals_line.view.lkml
        source_file_path: ped_public_financials/views/actuals_line.view.lkml
        sql: "${TABLE}.Amount "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: Actual amount received in revenue
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actual Revenue Actual Revenue
        label_from_parameter:
        label_short: Actual Revenue
        map_layer:
        name: actuals_revenue_line.amount
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_revenue_line
        view_label: Actual Revenue
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Actual Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: actuals_revenue_line
        suggest_dimension: actuals_revenue_line.amount
        suggest_explore: actuals_revenue_line
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Factuals_revenue_line.view.lkml?line=10"
        permanent: true
        source_file: views/actuals_revenue_line.view.lkml
        source_file_path: ped_public_financials/views/actuals_revenue_line.view.lkml
        sql: "${TABLE}.Amount "
        sql_case:
        filters:
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Districts Location Year
        label_from_parameter:
        label_short: Location Year
        map_layer:
        name: stars_districts.location_year
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_districts
        view_label: Stars Districts
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Location Year
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_districts
        suggest_dimension: stars_districts.location_year
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_districts.view.lkml?line=130"
        permanent: true
        source_file: views/stars_districts.view.lkml
        source_file_path: ped_public_financials/views/stars_districts.view.lkml
        sql: "${TABLE}.location_year "
        sql_case:
        filters:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Locations School Name
        label_from_parameter:
        label_short: School Name
        map_layer:
        name: stars_locations.School_name_plain
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: School Name
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.School_name_plain
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=146"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.location_name "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Locations Location Type Name
        label_from_parameter:
        label_short: Location Type Name
        map_layer:
        name: stars_locations.location_type_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Location Type Name
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.location_type_name
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=233"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: |-
          case when ${district_type}='State District' and ${location_type}='Charter School' then 'Local Charter School'
                        when ${district_type}='State Charter' and ${location_type}='Charter School' then 'State Charter School'
                        else ${location_type} end
        sql_case:
        filters:
      table_calculations:
      - label: Charter
        name: charter
        expression: replace(${stars_locations.location_type_name}, " Charter School",
          "")
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
        pivoted: false
      pivots: []
    sorts: [stars_locations.School_name_plain]
    dynamic_fields: [{table_calculation: charter, label: Charter, expression: 'replace(${stars_locations.location_type_name},
          " Charter School", "")', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    listen:
    - Fiscal Year: stars_locations.location_year
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 83
    col: 12
    width: 12
    height: 6
  - name: Districts/Charters
    type: text
    title_text: Districts/Charters
    subtitle_text: ''
    body_text: ''
    row: 81
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_function_hierarchy.rollup_function_name]
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    series_colors: {}
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 53
    col: 0
    width: 24
    height: 9
  - title: Actual Revenue
    name: Actual Revenue
    model: ped_public_financials
    explore: actuals_revenue_line
    type: single_value
    fields: [actuals_revenue_line.amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9B8E20"
    single_value_title: Actual Revenue
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 3
    col: 0
    width: 7
    height: 3
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials
    explore: actuals_revenue_line
    type: looker_pie
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount]
    sorts: [actuals_revenue_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 364b5000-be28-40e9-a495-81343e4830d5
      options:
        steps: 5
        reverse: false
    series_colors: {}
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 24
    col: 0
    width: 24
    height: 9
  - name: State Overview
    type: text
    title_text: State Overview
    subtitle_text: ''
    body_text: '###Overview of state education finances - includes all district and
      charter students, all district and charter schools, and the regional education
      cooperatives. To learn more about the data displayed or to find definitions
      of terms please click <a href="https://openbooks.ped.nm.gov/learn-more/" target="_PARENT">here</a>.'
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Encumbrances
    name: Encumbrances
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.encumbrance]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#3F6173"
    single_value_title: Actual Expected Expenditures
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 9
    col: 0
    width: 7
    height: 3
  - name: Revenue to Expenditures Comparison
    title: Revenue to Expenditures Comparison
    merged_queries:
    - model: ped_public_financials
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, actuals_line.encumbrance, budget_year.year_name]
      filters:
        entity_year.parent_type: Regional Education Cooperative,School District,State
          Charter School
      sorts: [actuals_line.amount desc]
      limit: 500
    - model: ped_public_financials
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, budget_year.year_name]
      filters:
        entity_year.parent_type: Regional Education Cooperative,School District,State
          Charter School
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}, {axisId: expenditure_and_encumbrance,
            id: expenditure_and_encumbrance, name: Expenditure and Encumbrance}],
        showLabels: false, showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: expenditure_to_revenue_ratio, id: expenditure_to_revenue_ratio,
            name: Expenditure to Revenue Ratio}], showLabels: false, showValues: false,
        valueFormat: '00.0,,"M"', unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      expenditure_to_revenue_ratio: line
    point_style: circle_outline
    series_colors:
      expenditure_to_revenue_ratio: "#000000"
      actuals_revenue_line.amount: "#9B8E20"
    series_labels:
      expenditure_to_revenue_ratio: Percentage Expenditures to Revenue
      expenditure_and_encumbrance: Actual & Expected Expenditures
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [actuals_line.encumbrance, actuals_line.amount]
    dynamic_fields: [{table_calculation: expenditure_and_encumbrance, label: Expenditure
          and Encumbrance, expression: "${actuals_line.amount} + ${actuals_line.encumbrance}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: expenditure_to_revenue_ratio, label: Expenditure to Revenue
          Ratio, expression: "(${actuals_line.amount} + ${actuals_line.encumbrance})/${actuals_revenue_line.amount}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 3
    col: 7
    width: 9
    height: 9
  - title: Actual Expenditures by Program
    name: Actual Expenditures by Program
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [coa_program_hierarchy.program_name, actuals_line.amount]
    sorts: [actuals_line.amount desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Year: budget_year.year_name
    row: 71
    col: 0
    width: 24
    height: 10
  filters:
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
