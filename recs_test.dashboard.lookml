- dashboard: recs_dashboard_test
  title: RECs Dashboard TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Revenue
    name: Revenue
    model: ped_public_financials_test
    explore: budget_line
    type: single_value
    fields: [budget_line.projected_amt]
    filters: {}
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 2
    col: 8
    width: 7
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 5
    col: 15
    width: 8
    height: 3
  - name: Revenue (2)
    type: text
    title_text: Revenue
    subtitle_text: ''
    body_text: ''
    row: 17
    col: 0
    width: 24
    height: 2
  - title: Budgeted Revenue by Fund
    name: Budgeted Revenue by Fund
    model: ped_public_financials_test
    explore: budget_line
    type: looker_bar
    fields: [budget_line.projected_amt, coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [budget_line.projected_amt desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_line.projected_amt,
            id: budget_line.projected_amt, name: Budgeted Revenue}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_line.projected_amt: "#9B2030"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 19
    col: 0
    width: 12
    height: 9
  - name: Expenditures
    type: text
    title_text: Expenditures
    subtitle_text: ''
    body_text: ''
    row: 28
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Program
    name: Actual Expenditures by Program
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_program_hierarchy.program_name]
    filters: {}
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 63
    col: 12
    width: 12
    height: 8
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_function_hierarchy.rollup_function_name]
    filters: {}
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 47
    col: 12
    width: 12
    height: 8
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 37
    col: 12
    width: 12
    height: 10
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group]
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 30
    col: 12
    width: 12
    height: 7
  - title: Actual Expenditures by Job
    name: Actual Expenditures by Job
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    series_colors:
      actuals_line.amount: "#068993"
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 55
    col: 12
    width: 12
    height: 8
  - title: Regional Education Cooperatives
    name: Regional Education Cooperatives
    model: ped_public_financials_test
    explore: budget_line
    type: single_value
    fields: [entity_year.count_distinct_parent]
    filters: {}
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
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 0
    col: 8
    width: 15
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "![RECMap](https://webed.ped.state.nm.us/sites/schooldirectory/SiteAssets/SitePages/RECHome/NMRECS_MAP.jpg)"
    row: 5
    col: 0
    width: 8
    height: 12
  - title: Budgeted Expenditures
    name: Budgeted Expenditures
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: single_value
    fields: [budget_expenditures_line.budget_amount]
    filters: {}
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 5
    col: 8
    width: 7
    height: 3
  - title: Actual Revenue
    name: Actual Revenue
    model: ped_public_financials_test
    explore: actuals_revenue_line
    type: single_value
    fields: [actuals_revenue_line.amount]
    filters: {}
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
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 2
    col: 15
    width: 8
    height: 3
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials_test
    explore: actuals_revenue_line
    type: looker_bar
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount]
    filters:
      entity_year.parent_name: ''
    sorts: [actuals_revenue_line.amount desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_revenue_line.amount: "#9B8E20"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 19
    col: 12
    width: 12
    height: 9
  - title: Budgeted Expenditures by Fund
    name: Budgeted Expenditures by Fund
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_bar
    fields: [budget_expenditures_line.budget_amount, coa_fund_hierarchy.fund_group]
    filters: {}
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
            id: budget_expenditures_line.budget_amount, name: Budgeted Expenditures}],
        showLabels: false, showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 30
    col: 0
    width: 12
    height: 7
  - title: Budgeted Expenditures by Object
    name: Budgeted Expenditures by Object
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_bar
    fields: [budget_expenditures_line.budget_amount, coa_object_hierarchy.object_group]
    filters: {}
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
            id: budget_expenditures_line.budget_amount, name: Budgeted Expenditures}],
        showLabels: false, showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 37
    col: 0
    width: 12
    height: 10
  - title: Budgeted Expenditures by Function
    name: Budgeted Expenditures by Function
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_bar
    fields: [budget_expenditures_line.budget_amount, coa_function_hierarchy.function_name]
    filters: {}
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
            id: budget_expenditures_line.budget_amount, name: Budgeted Expenditures}],
        showLabels: false, showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 47
    col: 0
    width: 12
    height: 8
  - title: Budgeted Expenditures by Program
    name: Budgeted Expenditures by Program
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_bar
    fields: [budget_expenditures_line.budget_amount, coa_program_hierarchy.program_name]
    filters: {}
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
            id: budget_expenditures_line.budget_amount, name: Budgeted Expenditures}],
        showLabels: false, showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      budget_expenditures_line.budget_amount: "#E87F2F"
    defaults_version: 1
    listen:
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 63
    col: 0
    width: 12
    height: 8
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
    value_labels: legend
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 55
    col: 0
    width: 12
    height: 8
  - title: Actual Expenditures by Location
    name: Actual Expenditures by Location
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_grid
    fields: [actuals_line.amount, entity_year.parent_name, entity_year.child_name]
    filters: {}
    sorts: [actuals_line.amount desc]
    limit: 500
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
      entity_year.parent_name: REC
    series_cell_visualizations:
      actuals_line.amount:
        is_active: true
        palette:
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 71
    col: 12
    width: 12
    height: 7
  - title: Budgeted Expenditures by Location
    name: Budgeted Expenditures by Location
    model: ped_public_financials_test
    explore: budget_expenditures_line
    type: looker_grid
    fields: [entity_year.parent_name, entity_year.child_name, budget_expenditures_line.budget_amount]
    filters: {}
    sorts: [budget_expenditures_line.budget_amount desc]
    limit: 500
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
      entity_year.parent_name: REC
    series_cell_visualizations:
      budget_expenditures_line.budget_amount:
        is_active: true
        palette:
          palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
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
      Parent Type: entity_year.parent_type
      Fiscal Year: budget_year.year_name
      Select REC: rec_names.rec_name
    row: 71
    col: 0
    width: 12
    height: 7
  - name: REC Overview
    type: text
    title_text: REC Overview
    subtitle_text: ''
    body_text: Since their inception in 1984 RECs through their administrative attachment
      to PED are allowed to enter into Intergovernmental Agreements (IGAs) with other
      State Agencies.  Each REC since then has grown differently in terms of programs
      of service and work done on behalf of their member districts and those state
      agencies.  There will always be a discrepancy between Budgeted Revenues and
      Expenditures and Actual Revenues and Expenditures because of changes in program
      and use of funds directed by the IGA issuing agency. For more information about
      New Mexico RECs, please follow this <a href="https://www.nmreca.org/Home" target="_PARENT">link</a>.
    row: 0
    col: 0
    width: 8
    height: 5
  - title: REC Member Districts
    name: REC Member Districts
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_grid
    fields: [rec_member_districts.rec_name, stars_districts.district_name, stars_districts.district_size]
    filters: {}
    sorts: [rec_member_districts.rec_name]
    limit: 500
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
      rec_member_districts.rec_name: REC Name
    series_cell_visualizations:
      stars_districts.total_student_pop:
        is_active: true
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
      Fiscal Year: rec_member_districts.fiscal_year
      Select REC: rec_member_districts.rec_name
    row: 10
    col: 8
    width: 15
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '###This is a list of state districts that are REC members. For a complete
      list of REC member entities please follow this <a href="https://tb2cdn.schoolwebmasters.com/accnt_171650/site_257648/Documents/RECA-Districts-Distribution-Map.pdf"
      target="_PARENT">link</a>.'
    row: 8
    col: 8
    width: 15
    height: 2
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
  - name: Parent Type
    title: Parent Type
    type: field_filter
    default_value: Regional Education Cooperative
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - Regional Education Cooperative
    model: ped_public_financials_test
    explore: actuals_line
    listens_to_filters: []
    field: entity_year.parent_type
  - name: Select REC
    title: Select REC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ped_public_financials_test
    explore: actuals_line
    listens_to_filters: []
    field: rec_names.rec_name
