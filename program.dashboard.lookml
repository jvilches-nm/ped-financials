- dashboard: program_dashboard
  title: Program Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Untitled
    name: Untitled
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, coa_program_hierarchy.program_name]
    sorts: [actuals_line.amount desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_of_total_expenditures, label: Percent
          of Total Expenditures, expression: 'sum(case(when(${coa_program_hierarchy.program_name}="Special
          Programs" OR ${coa_program_hierarchy.program_name}="Alternative and At-Risk
          Programs" OR ${coa_program_hierarchy.program_name}="At-Risk Special Programs",
          ${actuals_line.amount}), 0))/sum(${actuals_line.amount})', value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
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
    single_value_title: Percent of Total Expenditures
    value_format: ''
    defaults_version: 1
    hidden_fields: [actuals_line.amount]
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 2
    col: 0
    width: 5
    height: 8
  - title: Expenditures by Fund and Program
    name: Expenditures by Fund and Program
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [coa_program_hierarchy.program_name, actuals_line.amount, coa_fund_hierarchy.fund_group]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,At-Risk
        Special Programs,Special Programs
    sorts: [actuals_line.amount desc 0, coa_program_hierarchy.program_name]
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
    stacking: normal
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
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Special
              Programs - actuals_line.amount, id: Special Programs - actuals_line.amount,
            name: Special Programs}], showLabels: false, showValues: true, valueFormat: '0.00,,"M"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 2
    col: 5
    width: 19
    height: 8
  - name: Special and At-Risk Programs
    type: text
    title_text: Special and At-Risk Programs
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Bilingual Education Programs
    type: text
    title_text: Bilingual Education Programs
    subtitle_text: ''
    body_text: ''
    row: 19
    col: 0
    width: 24
    height: 2
  - title: Expenditures by Fund and Program
    name: Expenditures by Fund and Program (2)
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [coa_program_hierarchy.program_name, actuals_line.amount, coa_fund_hierarchy.fund_group]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      coa_program_hierarchy.program_name: Bilingual Education Programs
    sorts: [actuals_line.amount desc 0, coa_program_hierarchy.program_name]
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
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Special
              Programs - actuals_line.amount, id: Special Programs - actuals_line.amount,
            name: Special Programs}], showLabels: false, showValues: true, valueFormat: '0.00,,"M"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 21
    col: 5
    width: 19
    height: 6
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, coa_program_hierarchy.program_name]
    sorts: [actuals_line.amount desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_of_total_expenditures, label: Percent
          of Total Expenditures, expression: 'sum(case(when(${coa_program_hierarchy.program_name}="Bilingual
          Education Programs", ${actuals_line.amount}), 0))/sum(${actuals_line.amount})',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
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
    single_value_title: Percent of Total Expenditures
    value_format: ''
    defaults_version: 1
    hidden_fields: [actuals_line.amount]
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 21
    col: 0
    width: 5
    height: 6
  - title: Expenditures by Job Category
    name: Expenditures by Job Category
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_category_name]
    filters:
      coa_program_hierarchy.program_name: At-Risk Special Programs,Alternative and
        At-Risk Programs,Special Programs
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: legend
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
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 10
    col: 0
    width: 12
    height: 9
  - title: Expenditures by Job Category
    name: Expenditures by Job Category (2)
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_category_name]
    filters:
      coa_program_hierarchy.program_name: Bilingual Education Programs
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: legend
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
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 27
    col: 0
    width: 12
    height: 8
  - title: Expenditures by Object
    name: Expenditures by Object
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
    filters:
      coa_program_hierarchy.program_name: Bilingual Education Programs
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: legend
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
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 27
    col: 12
    width: 12
    height: 8
  - title: Expenditures by Object
    name: Expenditures by Object (2)
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [coa_object_hierarchy.object_group, actuals_line.amount]
    filters:
      coa_program_hierarchy.program_name: At-Risk Special Programs,Alternative and
        At-Risk Programs,Special Programs
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 10
    col: 12
    width: 12
    height: 9
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
  - name: 'Select District or Charter:'
    title: 'Select District or Charter:'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ped_public_financials
    explore: stars_locations
    listens_to_filters: [Fiscal Year, 'Select Fund Name:']
    field: stars_locations.district_name
