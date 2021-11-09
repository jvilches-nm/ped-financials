- dashboard: school_comparison_test
  title: School Comparison TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Average Spending per Student
    title: Average Spending per Student
    merged_queries:
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_locations.School_name_plain, budget_year.year_name]
      filters:
        stars_locations.location_type: District School,Charter School
      sorts: [actuals_line.amount desc]
      limit: 500
    - model: ped_public_financials_test
      explore: stars_locations
      type: table
      fields: [stars_locations.student_pop, stars_locations.School_name_plain, stars_locations.location_year]
      filters:
        stars_locations.location_type: District School,Charter School
      sorts: [stars_locations.student_pop desc]
      limit: 5000
      join_fields:
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
      - field_name: stars_locations.location_year
        source_field_name: budget_year.year_name
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: average_spends_per_school,
            id: average_spends_per_school, name: Average Spends per School}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Year
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '4'
    legend_position: center
    font_size: '14'
    series_types: {}
    point_style: none
    series_colors:
      average_spends_per_school: "#068993"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    font_size_main: ''
    orientation: auto
    style_stars_locations.location_year: "#3A4245"
    show_title_stars_locations.location_year: true
    title_placement_stars_locations.location_year: above
    value_format_stars_locations.location_year: ''
    show_comparison_average_spends_per_school: false
    comparison_style_average_spends_per_school: value
    comparison_show_label_average_spends_per_school: true
    comparison_label_placement_average_spends_per_school: above
    comp_value_format_average_spends_per_school: ''
    pos_is_bad_average_spends_per_school: false
    style_average_spends_per_school: "#3A4245"
    show_title_average_spends_per_school: true
    title_placement_average_spends_per_school: above
    value_format_average_spends_per_school: ''
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    custom_color_enabled: true
    custom_color: "#B1399E"
    show_single_value_title: true
    single_value_title: Avg. Spending per Student
    value_format: "$0"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [actuals_line.amount, stars_locations.student_pop, budget_year.year_name]
    type: looker_bar
    up_color: "#A8876C"
    down_color: "#9B2030"
    total_color: "#E87F2F"
    sorts: [stars_locations.School_name_plain]
    column_limit: 4
    dynamic_fields: [{table_calculation: average_spends_per_school, label: Average
          Spends per School, expression: "${actuals_line.amount}/${stars_locations.student_pop}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
    - Fiscal Year: stars_locations.location_year
      'Select Schools:': stars_locations.School_name_plain
    row: 3
    col: 6
    width: 18
    height: 9
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [stars_locations.School_name_plain, actuals_line.amount, coa_object_hierarchy.object_group]
    pivots: [coa_object_hierarchy.object_group]
    filters: {}
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
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 54
    col: 0
    width: 24
    height: 9
  - title: Actual Expenditures by Program
    name: Actual Expenditures by Program
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_program_hierarchy.program_name, stars_locations.School_name_plain]
    pivots: [coa_program_hierarchy.program_name]
    filters: {}
    sorts: [coa_program_hierarchy.program_name, stars_locations.School_name_plain]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Bilingual
              Education Programs - actuals_line.amount, id: Bilingual Education Programs
              - actuals_line.amount, name: Bilingual Education Programs}, {axisId: Co-Curricular
              and Extra-Curricular Activities - actuals_line.amount, id: Co-Curricular
              and Extra-Curricular Activities - actuals_line.amount, name: Co-Curricular
              and Extra-Curricular Activities}, {axisId: Elementary Fine Arts Programs
              - actuals_line.amount, id: Elementary Fine Arts Programs - actuals_line.amount,
            name: Elementary Fine Arts Programs}, {axisId: Extended Learning Time
              Programs - actuals_line.amount, id: Extended Learning Time Programs
              - actuals_line.amount, name: Extended Learning Time Programs}, {axisId: K-5
              Plus Programs - actuals_line.amount, id: K-5 Plus Programs - actuals_line.amount,
            name: K-5 Plus Programs}, {axisId: Regular Education (K-12) Programs -
              actuals_line.amount, id: Regular Education (K-12) Programs - actuals_line.amount,
            name: Regular Education (K-12) Programs}, {axisId: Special Programs -
              actuals_line.amount, id: Special Programs - actuals_line.amount, name: Special
              Programs}, {axisId: Vocational and Technical Programs - actuals_line.amount,
            id: Vocational and Technical Programs - actuals_line.amount, name: Vocational
              and Technical Programs}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '12'
    series_types: {}
    series_colors: {}
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
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 45
    col: 0
    width: 24
    height: 9
  - title: Actual Expenditures by Job Category
    name: Actual Expenditures by Job Category
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, stars_locations.School_name_plain, coa_job_class.job_rollup_name]
    pivots: [coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_name: "-No Job Class"
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
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 63
    col: 0
    width: 24
    height: 9
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [stars_locations.School_name_plain, actuals_line.amount, coa_function_hierarchy.rollup_function_name]
    pivots: [coa_function_hierarchy.rollup_function_name]
    filters: {}
    sorts: [coa_function_hierarchy.rollup_function_name, stars_locations.School_name_plain]
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
        reverse: false
    y_axes: [{label: Spending, orientation: left, series: [{axisId: Capital Outlay
              - actuals_line.amount, id: Capital Outlay - actuals_line.amount, name: Capital
              Outlay}, {axisId: Instruction - actuals_line.amount, id: Instruction
              - actuals_line.amount, name: Instruction}, {axisId: Operation of Non-Instructional
              Services - actuals_line.amount, id: Operation of Non-Instructional Services
              - actuals_line.amount, name: Operation of Non-Instructional Services},
          {axisId: Support Services - actuals_line.amount, id: Support Services -
              actuals_line.amount, name: Support Services}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '12'
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 36
    col: 0
    width: 24
    height: 9
  - name: Map of Schools
    title: Map of Schools
    merged_queries:
    - model: ped_public_financials_test
      explore: stars_locations
      type: looker_map
      fields: [stars_locations.map_location, stars_locations.School_name_plain, stars_locations.student_pop]
      sorts: [stars_locations.School_name_plain]
      limit: 4
      column_limit: 50
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
      map_marker_icon_name: school
      map_marker_radius_mode: fixed
      map_marker_units: pixels
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: value
      show_view_names: false
      show_legend: true
      quantize_map_value_colors: true
      reverse_map_value_colors: false
      map_latitude: 34.87157719328419
      map_longitude: -106.66107178665699
      map_zoom: 10
      map_marker_radius_fixed: 5
      map_marker_color: ["#068993"]
      map_value_colors: ["#068993", "#9B8E20", "#A85573", "#e87f2f"]
      defaults_version: 1
      hidden_fields: []
    - model: ped_public_financials_test
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
    listen:
    - Fiscal Year: stars_locations.location_year
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    - Fiscal Year: stars_locations.location_year
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 3
    col: 0
    width: 6
    height: 9
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, stars_locations.School_name_plain, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [coa_fund_hierarchy.fund_group desc, stars_locations.School_name_plain]
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
    series_colors: {}
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
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 27
    col: 0
    width: 24
    height: 9
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.pk_pop, stars_locations.kf_pop, stars_locations.g1_pop,
      stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop, stars_locations.g5_pop,
      stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop, stars_locations.g9_pop,
      stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop, stars_locations.School_name_plain]
    filters:
      stars_locations.location_type: Charter School,District School
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
      Fiscal Year: stars_locations.location_year
      'Select Schools:': stars_locations.School_name_plain
    row: 18
    col: 0
    width: 24
    height: 7
  - name: Revenue
    type: text
    title_text: Revenue
    subtitle_text: Revenue only available for charter schools.
    body_text: ''
    row: 72
    col: 0
    width: 24
    height: 2
  - name: Expenditures
    type: text
    title_text: Expenditures
    subtitle_text: ''
    body_text: ''
    row: 25
    col: 0
    width: 24
    height: 2
  - name: Students
    type: text
    title_text: Students
    subtitle_text: ''
    body_text: ''
    row: 16
    col: 0
    width: 24
    height: 2
  - title: School Details
    name: School Details
    model: ped_public_financials_test
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
      Fiscal Year: stars_locations.location_year
      'Select Schools:': stars_locations.School_name_plain
    row: 12
    col: 0
    width: 24
    height: 4
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials_test
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
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
        reverse: true
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
    series_colors: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      'Select Schools:': stars_locations.School_name_plain
      Location Type: stars_locations.location_type
    row: 74
    col: 0
    width: 24
    height: 7
  - name: Overview
    type: text
    title_text: Overview
    subtitle_text: ''
    body_text: "###School level financials are currently only available for charter\
      \ schools. District school level financials will be available starting with\
      \ the 2022-2023 fiscal year."
    row: 0
    col: 0
    width: 24
    height: 3
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
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_type
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
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: [Location Type]
    field: stars_locations.School_name_plain
