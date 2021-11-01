- dashboard: state_level_dashboard__test
  title: State Level Dashboard - test
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Revenue
    name: Revenue
    model: ped_public_financials_test
    explore: budget_line
    type: single_value
    fields: [budget_line.projected_amt]
    filters:
      entity_year.parent_type: School District,State Charter School,Regional Education
        Cooperative
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
    custom_color: "#9B2030"
    single_value_title: Budgeted Revenue
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Spending
    name: Spending
    model: ped_public_financials_test
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
    row: 5
    col: 6
    width: 7
    height: 2
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
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
      Property: "#e6e6e6"
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Amount}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: spends, id: spends,
            name: Spends (%)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 78
    col: 12
    width: 12
    height: 10
  - title: Students by Location Type
    name: Students by Location Type
    model: ped_public_financials_test
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
    model: ped_public_financials_test
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
    row: 9
    col: 0
    width: 6
    height: 3
  - title: District Schools
    name: District Schools
    model: ped_public_financials_test
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
    model: ped_public_financials_test
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
    col: 20
    width: 4
    height: 2
  - title: Local Charters
    name: Local Charters
    model: ped_public_financials_test
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
    row: 10
    col: 20
    width: 4
    height: 2
  - title: State Districts
    name: State Districts
    model: ped_public_financials_test
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
    row: 4
    col: 20
    width: 4
    height: 2
  - title: RECs
    name: RECs
    model: ped_public_financials_test
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
    row: 2
    col: 20
    width: 4
    height: 2
  - name: Revenue (2)
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
    model: ped_public_financials_test
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
      palette_id: c80fe9b3-6c8e-48c6-891b-c9107bae6f6d
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
    series_colors:
      stars_locations.g5_pop: "#ebe5d6"
      stars_locations.g6_pop: "#dfe8e8"
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
  - title: Budgeted Revenue by Fund
    name: Budgeted Revenue by Fund
    model: ped_public_financials_test
    explore: budget_line
    type: looker_pie
    fields: [coa_fund_hierarchy.fund_group, budget_line.projected_amt]
    sorts: [budget_line.projected_amt desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
        reverse: true
    series_colors:
      budget_line.projected_amt: "#853955"
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_line.projected_amt,
            id: budget_line.projected_amt, name: Budget Amount}], showLabels: false,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 24
    col: 0
    width: 12
    height: 12
  - name: Expenditures
    type: text
    title_text: Expenditures
    subtitle_text: ''
    body_text: ''
    row: 36
    col: 0
    width: 24
    height: 2
  - title: Acutal Expenditures by Job
    name: Acutal Expenditures by Job
    model: ped_public_financials_test
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
    row: 38
    col: 12
    width: 12
    height: 7
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials_test
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
    row: 45
    col: 12
    width: 12
    height: 10
  - name: Avg Spending per Student
    title: Avg Spending per Student
    merged_queries:
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, budget_year.year_name]
      sorts: [actuals_line.amount desc]
      limit: 500
    - model: ped_public_financials_test
      explore: stars_locations
      type: table
      fields: [stars_districts.total_student_pop, stars_districts.location_year]
      sorts: [stars_districts.total_student_pop desc]
      limit: 500
      join_fields:
      - field_name: stars_districts.location_year
        source_field_name: budget_year.year_name
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Avg Spending per Student
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [stars_districts.total_student_pop, actuals_line.amount, budget_year.year_name]
    type: single_value
    series_types: {}
    sorts: [stars_districts.total_student_pop desc]
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          per Student, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: stars_locations.location_year
    row: 9
    col: 6
    width: 7
    height: 3
  - name: Districts
    title: Districts
    merged_queries:
    - model: ped_public_financials_test
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_districts.district_name, stars_districts.district_size,
        stars_locations.count, stars_districts.total_student_pop]
      filters:
        stars_districts.district_type: State District
        stars_locations.location_type: Charter School,District School
      sorts: [stars_locations.count desc]
      limit: 500
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [stars_districts.district_name, budget_year.year_name, actuals_line.amount]
      filters:
        stars_districts.district_type: State District
      sorts: [actuals_line.amount desc]
      limit: 500
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
    - model: ped_public_financials_test
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_districts.district_name, budget_year.year_name]
      filters:
        stars_districts.district_type: State District
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
    row: 90
    col: 0
    width: 12
    height: 6
  - name: Charter Schools
    title: Charter Schools
    merged_queries:
    - model: ped_public_financials_test
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_locations.School_name_plain, stars_locations.student_pop]
      filters:
        stars_locations.location_type: Charter School
      sorts: [stars_locations.student_pop desc]
      limit: 500
    - model: ped_public_financials_test
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
    - model: ped_public_financials_test
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
    series_column_widths:
      stars_districts.district_size: 98
      stars_locations.count: 80
      stars_districts.total_student_pop: 94
      actuals_line.amount: 153
      budget_expenditures_line.budget_amount: 193
      stars_districts.district_name: 275.3299999999999
      budget_line.projected_amt: 159
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
    hidden_fields: [stars_districts.location_year]
    sorts: [stars_locations.School_name_plain]
    listen:
    - Fiscal Year: stars_locations.location_year
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 90
    col: 12
    width: 12
    height: 6
  - name: Districts/State Charters
    type: text
    title_text: Districts/State Charters
    subtitle_text: ''
    body_text: ''
    row: 88
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_function_hierarchy.rollup_function_name]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 66
    col: 12
    width: 12
    height: 12
  - title: Budgeted Expenditures
    name: Budgeted Expenditures
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: single_value
    fields: [budget_expenditures_line.budget_amount]
    filters:
      entity_year.parent_type: Regional Education Cooperative,School District,State
        Charter School
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
    custom_color: "#E87F2F"
    single_value_title: Budgeted Expenditures
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 5
    col: 0
    width: 6
    height: 4
  - title: Actual Revenue
    name: Actual Revenue
    model: ped_public_financials_test
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
    row: 2
    col: 6
    width: 7
    height: 3
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials_test
    explore: actuals_revenue_line
    type: looker_pie
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount]
    sorts: [actuals_revenue_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 24
    col: 12
    width: 12
    height: 12
  - title: Budgeted Expenditures by Function
    name: Budgeted Expenditures by Function
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_bar
    fields: [coa_function_hierarchy.rollup_function_name, budget_expenditures_line.budget_amount]
    sorts: [budget_expenditures_line.budget_amount desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_expenditures_line.budget_amount,
            id: budget_expenditures_line.budget_amount, name: Budget Amount}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 66
    col: 0
    width: 12
    height: 12
  - name: State Overview
    type: text
    title_text: State Overview
    subtitle_text: ''
    body_text: Overview of state education finances - includes all students, all schools,
      and the regional education cooperatives.
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Encumbrances
    name: Encumbrances
    model: ped_public_financials_test
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
    single_value_title: Actual Encumbrances
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 7
    col: 6
    width: 7
    height: 2
  - name: Revenue to Expenditures Comparison
    title: Revenue to Expenditures Comparison
    merged_queries:
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, actuals_line.encumbrance, budget_year.year_name]
      filters:
        entity_year.parent_type: Regional Education Cooperative,School District,State
          Charter School
      sorts: [actuals_line.amount desc]
      limit: 500
    - model: ped_public_financials_test
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
      expenditure_to_revenue_ratio: Percentage Expenditures & Encumbrance to Revenue
      expenditure_and_encumbrance: Actual Expenditures & Encumbrance
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
    row: 2
    col: 13
    width: 7
    height: 10
  - title: Budgeted Expenditures by Job
    name: Budgeted Expenditures by Job
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_pie
    fields: [budget_expenditures_line.budget_amount, coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_name: "-No Job Class"
    sorts: [budget_expenditures_line.budget_amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
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
    row: 38
    col: 0
    width: 12
    height: 7
  - title: Budgeted Expenditures by Fund
    name: Budgeted Expenditures by Fund
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_pie
    fields: [budget_expenditures_line.budget_amount, coa_fund_hierarchy.fund_group]
    sorts: [budget_expenditures_line.budget_amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
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
    row: 45
    col: 0
    width: 12
    height: 10
  - title: Budgeted Expenditures by Object
    name: Budgeted Expenditures by Object
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_pie
    fields: [budget_expenditures_line.budget_amount, coa_object_hierarchy.object_group]
    sorts: [budget_expenditures_line.budget_amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
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
    row: 78
    col: 0
    width: 12
    height: 10
  - name: Budgeted & Actual Expenditures by Program
    title: Budgeted & Actual Expenditures by Program
    merged_queries:
    - model: ped_public_financials_test
      explore: budget_expenditures_line
      type: table
      fields: [budget_expenditures_line.budget_amount, coa_program_hierarchy.program_name]
      filters:
        coa_program_hierarchy.program_name: "-NULL"
      sorts: [budget_expenditures_line.budget_amount desc]
      limit: 500
      hidden_fields: []
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, coa_program_hierarchy.program_name]
      filters:
        coa_program_hierarchy.program_name: "-NULL"
      sorts: [actuals_line.amount desc]
      limit: 500
      hidden_fields: []
      join_fields:
      - field_name: coa_program_hierarchy.program_name
        source_field_name: coa_program_hierarchy.program_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: budget_expenditures_line.budget_amount,
            id: budget_expenditures_line.budget_amount, name: Budgeted Expenditures},
          {axisId: actuals_line.amount, id: actuals_line.amount, name: Actual Expenditures}],
        showLabels: false, showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false,
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    type: looker_column
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 55
    col: 0
    width: 24
    height: 11
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2020-2021
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: ped_public_financials_test
    explore: actuals_line
    listens_to_filters: []
    field: budget_year.year_name
