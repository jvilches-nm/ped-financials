- dashboard: district_comp
  title: District Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, coa_object_hierarchy.object_group, stars_districts.district_name]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_object_hierarchy.object_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    hide_legend: false
    value_labels: labels
    label_type: labPer
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 81
    col: 0
    width: 24
    height: 7
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.District_School, stars_locations.pk_pop, stars_locations.kf_pop,
      stars_locations.g1_pop, stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop,
      stars_locations.g5_pop, stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop,
      stars_locations.g9_pop, stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop]
    filters:
      stars_locations.location_type: District School,Offsite
    sorts: [stars_locations.District_School]
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
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    x_axis_label: District
    series_types: {}
    series_labels:
      stars_locations.pk_pop: PreK
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 24
    col: 11
    width: 13
    height: 10
  - name: Overview by District
    title: Overview by District
    merged_queries:
    - model: ped_public_financials
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_districts.district_name]
      filters:
        stars_locations.location_type: "-Charter School"
      sorts: [stars_districts.district_name]
      limit: 4
      join_fields: []
    - model: ped_public_financials
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name, stars_districts.count]
      filters:
        stars_locations.location_type: "-Charter School"
      sorts: [stars_districts.district_name]
      limit: 500
      dynamic_fields: [{table_calculation: state_avg_district_spending_without_abq,
          label: State Avg District Spending without ABQ, expression: "sum(case(when(${stars_districts.district_name}=\"\
            ALBUQUERQUE\", 0.0), ${actuals_line.amount}))\n/sum(case (when (${stars_districts.district_name}=\"\
            ALBUQUERQUE\", 0), ${stars_districts.count}))", value_format: !!null '',
          value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: state_avg_district_spending_with_abq,
          label: State Avg District Spending with ABQ, expression: 'sum(${actuals_line.amount})/sum(${stars_districts.count})',
          value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    - model: ped_public_financials
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name]
      filters:
        stars_districts.district_name: "-NULL"
        stars_locations.location_type: "-Charter School"
      sorts: [stars_districts.district_name]
      limit: 4
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: budget_expenditures_line.budget_amount,
            id: budget_expenditures_line.budget_amount, name: Budget}, {axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}, {axisId: budget_line.projected_amt,
            id: budget_line.projected_amt, name: Revenue}], showLabels: true, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
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
      state_avg_district_spending_without_abq: line
      state_avg_district_spending_with_abq: line
    point_style: none
    series_colors:
      state_avg_district_spending_with_abq: "#000000"
      state_avg_district_spending_without_abq: "#989c94"
      budget_line.projected_amt: "#A85573"
      actuals_line.amount: "#068993"
      budget_expenditures_line.budget_amount: "#F15922"
      actuals_revenue_line.amount: "#9B8E20"
    series_labels:
      budget_expenditures_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_line.projected_amt: Revenue
      state_avg_district_spending_without_abq: State Avg District Expenditures without
        ABQ
      state_avg_district_spending_with_abq: State Avg District Expenditures with ABQ
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
    hidden_fields: [stars_districts.count, q3_actuals_line.amount, q2_actuals_line.amount,
      state_avg_district_spending_with_abq, state_avg_district_spending_without_abq]
    sorts: [stars_districts.district_name]
    column_limit: 50
    listen:
    - Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    - Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    - Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 0
    col: 0
    width: 11
    height: 13
  - title: Students by District
    name: Students by District
    model: ped_public_financials
    explore: stars_locations
    type: looker_column
    fields: [stars_districts.district_name, stars_districts.public_student_pop]
    filters:
      stars_locations.location_type: District School,Offsite
    sorts: [stars_districts.district_name]
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
    color_application: undefined
    y_axes: [{label: '', orientation: left, series: [{axisId: stars_districts.public_student_pop,
            id: stars_districts.public_student_pop, name: District Students}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      stars_districts.public_student_pop: "#068993"
    series_labels:
      stars_districts.public_student_pop: District Students
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
      stars_districts.total_student_pop:
        is_active: true
        palette:
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      stars_districts.public_student_pop:
        is_active: true
        palette:
          palette_id: 691bf3c8-df8a-5697-83a8-de6ab9457fca
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
          custom_colors:
          - "#f7f7f7"
          - "#7DC1C7"
          - "#068993"
    defaults_version: 1
    listen:
      Fiscal Year: stars_districts.location_year
      'Select up to 4 districts:': stars_districts.district_name
      District Type: stars_districts.district_type
    row: 24
    col: 0
    width: 11
    height: 10
  - title: District Students by Level
    name: District Students by Level
    model: ped_public_financials
    explore: stars_locations
    type: looker_donut_multiples
    fields: [stars_locations.District_School, stars_locations.student_pop, stars_locations.school_level]
    pivots: [stars_locations.school_level]
    filters:
      stars_locations.location_type: "-Central Office,-Charter School"
    sorts: [stars_locations.District_School, stars_locations.school_level]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
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
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Year: stars_districts.location_year
      'Select up to 4 districts:': stars_locations.District_School
      District Type: stars_districts.district_type
    row: 17
    col: 11
    width: 13
    height: 7
  - title: District Schools by Level
    name: District Schools by Level
    model: ped_public_financials
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.District_School, stars_locations.school_level, stars_locations.school_count]
    pivots: [stars_locations.school_level]
    filters:
      stars_locations.location_type: District School,Offsite
    sorts: [stars_locations.District_School, stars_locations.schhol_count desc 0,
      stars_locations.school_level]
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
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
    y_axes: [{label: Schools, orientation: left, series: [{axisId: Elementary School
              - stars_locations.schhol_count, id: Elementary School - stars_locations.schhol_count,
            name: Elementary School}, {axisId: High School - stars_locations.schhol_count,
            id: High School - stars_locations.schhol_count, name: High School}, {
            axisId: Junior High - stars_locations.schhol_count, id: Junior High -
              stars_locations.schhol_count, name: Junior High}, {axisId: Middle School
              - stars_locations.schhol_count, id: Middle School - stars_locations.schhol_count,
            name: Middle School}, {axisId: Prekindergarten - stars_locations.schhol_count,
            id: Prekindergarten - stars_locations.schhol_count, name: Prekindergarten},
          {axisId: Special Education - stars_locations.schhol_count, id: Special Education
              - stars_locations.schhol_count, name: Special Education}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: District
    font_size: '12'
    series_types: {}
    series_colors: {}
    charts_across: 4
    defaults_version: 1
    listen:
      Fiscal Year: stars_districts.location_year
      'Select up to 4 districts:': stars_locations.District_School
      District Type: stars_districts.district_type
    row: 17
    col: 0
    width: 11
    height: 7
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_function_hierarchy.rollup_function_name]
    pivots: [coa_function_hierarchy.rollup_function_name]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_function_hierarchy.rollup_function_name, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    value_labels: labels
    label_type: labPer
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 59
    col: 0
    width: 24
    height: 7
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_fund_hierarchy.fund_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors: {}
    value_labels: labels
    label_type: labPer
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 52
    col: 0
    width: 24
    height: 7
  - title: Actual Expenditures by Program
    name: Actual Expenditures by Program
    model: ped_public_financials
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_program_hierarchy.program_name]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_program_hierarchy.program_name, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    hide_legend: false
    value_labels: labels
    label_type: labPer
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
    note_state: collapsed
    note_display: hover
    note_text: No Program does not indicate that the amount did not apply to a program, but that it was not recorded that way in the financial system.
    listen:
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 73
    col: 0
    width: 24
    height: 8
  - title: Actual Expenditures by Job
    name: Actual Expenditures by Job
    model: ped_public_financials
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_job_class.job_rollup_name]
    pivots: [coa_job_class.job_rollup_name]
    filters:
      stars_locations.location_type: "-Charter School"
      coa_job_class.job_rollup_name: "-No Job Class"
    sorts: [coa_job_class.job_rollup_name, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: true
    value_labels: labels
    label_type: labPer
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 66
    col: 0
    width: 24
    height: 7
  - name: Students/Schools
    type: text
    title_text: Students/Schools
    body_text: ''
    row: 15
    col: 0
    width: 24
    height: 2
  - name: District Schools
    title: District Schools
    merged_queries:
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_districts.district_name]
      sorts: [stars_districts.district_name]
      limit: 4
      dynamic_fields: [{table_calculation: row, label: row, expression: row(), value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: ped_public_financials
      explore: stars_locations
      type: table
      fields: [stars_locations.map_location, stars_districts.district_name, stars_locations.School_name,
        stars_locations.school_size_col, stars_locations.student_pop]
      filters:
        stars_locations.location_type: District School
      sorts: [stars_districts.district_name, stars_locations.student_pop desc]
      limit: 500
      column_limit: 4
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
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
    - Fiscal Year: stars_districts.location_year
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    - Fiscal Year: stars_districts.location_year
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 0
    col: 11
    width: 13
    height: 13
  - name: Expenditures
    type: text
    title_text: Expenditures
    body_text: ''
    row: 50
    col: 0
    width: 24
    height: 2
  - name: Revenue
    type: text
    title_text: Revenue
    body_text: ''
    row: 34
    col: 0
    width: 24
    height: 2
  - title: Actual Revenue by Source
    name: Actual Revenue by Source
    model: ped_public_financials
    explore: actuals_revenue_line
    type: looker_donut_multiples
    fields: [actuals_revenue_line.amount, coa_object_hierarchy_revenue.object_group,
      stars_districts.district_name]
    pivots: [coa_object_hierarchy_revenue.object_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_object_hierarchy_revenue.object_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 36
    col: 0
    width: 24
    height: 7
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials
    explore: actuals_revenue_line
    type: looker_donut_multiples
    fields: [coa_fund_hierarchy.fund_group, stars_districts.district_name, actuals_revenue_line.amount]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_fund_hierarchy.fund_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
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
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 43
    col: 0
    width: 24
    height: 7
  - title: Data Current As Of
    name: Data Current As Of
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.current_as_of]
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
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_locations.district_name
      District Type: stars_districts.district_type
    row: 13
    col: 0
    width: 24
    height: 2
  filters:
  - name: District Type
    title: District Type
    type: field_filter
    default_value: State District
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options:
      - State District
    model: ped_public_financials
    explore: stars_locations
    listens_to_filters: []
    field: stars_districts.district_type
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
  - name: 'Select up to 4 districts:'
    title: 'Select up to 4 districts:'
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
    listens_to_filters: [District Type]
    field: stars_locations.district_name
