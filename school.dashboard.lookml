- dashboard: school
  title: School Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Untitled
    name: Untitled
    model: ped_public_financials
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount]
    sorts: [actuals_line.amount desc]
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
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 3
    col: 5
    width: 5
    height: 2
  - title: Map
    name: Map
    model: ped_public_financials
    explore: stars_locations
    type: looker_map
    fields: [stars_locations.map_location, stars_locations.student_pop, stars_locations.School_name,
      stars_locations.school_level_col, stars_locations.location_type, stars_locations.location_type_name]
    filters: {}
    sorts: [stars_locations.student_pop desc]
    limit: 500
    dynamic_fields: [{table_calculation: schooltype, label: SchoolType, expression: 'case(when(${stars_locations.location_type_name}="District
          School", 1), when (${stars_locations.location_type_name}="State Charter
          School", 2), 0)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: building
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 34.70820081518175
    map_longitude: -106.64234160678463
    map_zoom: 15
    map_marker_radius_fixed: 5
    map_value_colors: ["#068993", "#F15922", "#D9C202"]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 2
    defaults_version: 1
    hidden_fields: [stars_locations.location_type, stars_locations.student_pop]
    listen:
      Fiscal Year: stars_locations.location_year
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 3
    col: 15
    width: 9
    height: 9
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials
    explore: actuals_line
    type: looker_bar
    fields: [coa_object_hierarchy.object_group, actuals_line.amount]
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '$0,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    series_labels:
      actuals_line.amount: Spending
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 23
    col: 12
    width: 12
    height: 7
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
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 14
    col: 0
    width: 24
    height: 7
  - title: School Data
    name: School Data
    model: ped_public_financials
    explore: stars_locations
    type: looker_grid
    fields: [stars_districts.district_name, stars_locations.location_type_name, stars_locations.School_name_plain,
      stars_locations.location_county, stars_locations.school_size, stars_locations.school_level,
      stars_locations.student_pop]
    sorts: [stars_locations.student_pop desc]
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
    column_order: ["$$$_row_numbers_$$$", stars_locations.School_name_plain, stars_districts.district_name,
      stars_locations.location_county, stars_locations.school_size, stars_locations.school_level,
      stars_locations.location_type_name, stars_locations.student_pop]
    show_totals: true
    show_row_totals: true
    series_labels:
      stars_locations.student_pop: Students
      stars_locations.location_type_name: Location Type
    series_column_widths:
      stars_locations.school_size: 81
    series_cell_visualizations:
      stars_locations.student_pop:
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
    query_fields:
      measures:
      - align: right
        can_filter: true
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
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.student_pop "
        sql_case:
        filters:
        sorted:
          desc: true
          sort_index: 0
      dimensions:
      - align: left
        can_filter: true
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
        label: Stars Districts District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: stars_districts.district_name
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
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_districts
        suggest_dimension: stars_districts.district_name
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_districts.view.lkml?line=92"
        permanent:
        source_file: views/stars_districts.view.lkml
        source_file_path: ped_public_financials/views/stars_districts.view.lkml
        sql: "${TABLE}.district_name "
        sql_case:
        filters:
      - align: left
        can_filter: true
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
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: |-
          case when ${district_type}='State District' and ${location_type}='Charter School' then 'Local Charter School'
                        when ${district_type}='State Charter' and ${location_type}='Charter School' then 'State Charter School'
                        else ${location_type} end
        sql_case:
        filters:
      - align: left
        can_filter: true
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
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.location_name "
        sql_case:
        filters:
      - align: left
        can_filter: true
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
        label: Stars Locations Location County
        label_from_parameter:
        label_short: Location County
        map_layer:
        name: stars_locations.location_county
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
        field_group_variant: Location County
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.location_county
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=119"
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.location_county "
        sql_case:
        filters:
      - align: left
        can_filter: true
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
        label: Stars Locations School Size
        label_from_parameter:
        label_short: School Size
        map_layer:
        name: stars_locations.school_size
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
        field_group_variant: School Size
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.school_size
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=318"
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: |-
          CASE WHEN ${school_level_code}='HS' and ${student_pop_dim}<400 then 'S'
                        WHEN ${school_level_code}!='HS' and ${student_pop_dim}<200 then 'S'
                        WHEN ${school_level_code}='HS' and ${student_pop_dim}<1000 then 'M'
                        WHEN ${school_level_code}!='HS' and ${student_pop_dim}<700 then 'M'
                        ELSE 'L' END
        sql_case:
        filters:
      - align: left
        can_filter: true
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
        label: Stars Locations School Level
        label_from_parameter:
        label_short: School Level
        map_layer:
        name: stars_locations.school_level
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
        field_group_variant: School Level
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials
        scope: stars_locations
        suggest_dimension: stars_locations.school_level
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials/files/views%2Fstars_locations.view.lkml?line=292"
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials/views/stars_locations.view.lkml
        sql: "${TABLE}.school_level "
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    listen:
      Fiscal Year: stars_locations.location_year
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 5
    col: 0
    width: 15
    height: 7
  - title: Actual Expenditures by Job
    name: Actual Expenditures by Job
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [coa_job_class.job_rollup_name, actuals_line.amount]
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
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 30
    col: 0
    width: 12
    height: 8
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
    model: ped_public_financials
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
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 23
    col: 0
    width: 12
    height: 7
  - name: Expenditures
    type: text
    title_text: Expenditures
    subtitle_text: ''
    body_text: ''
    row: 21
    col: 0
    width: 24
    height: 2
  - name: Students
    type: text
    title_text: Students
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Program
    name: Actual Expenditures by Program
    model: ped_public_financials
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_program_hierarchy.program_name]
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
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 30
    col: 12
    width: 12
    height: 8
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials
    explore: actuals_line
    type: looker_column
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
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Amount}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 38
    col: 0
    width: 24
    height: 7
  - name: Revenue
    type: text
    title_text: Revenue
    subtitle_text: Revenue available at the school level for charter schools only.
    body_text: ''
    row: 45
    col: 0
    width: 24
    height: 2
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Applies to Charter Schools, not to District Schools.
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 3
    col: 0
    width: 5
    height: 2
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials
    explore: actuals_revenue_line
    type: looker_pie
    fields: [actuals_revenue_line.amount, coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: Charter School,District School
    sorts: [actuals_revenue_line.amount desc]
    limit: 500
    column_limit: 50
    value_labels: legend
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
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 47
    col: 0
    width: 24
    height: 7
  - title: Encumbrance
    name: Encumbrance
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
    single_value_title: Expected Actual Expenses
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Future known and expected expenses.
    listen:
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
    row: 3
    col: 10
    width: 5
    height: 2
  - name: School Overview
    type: text
    title_text: School Overview
    subtitle_text: ''
    body_text: "### School level financials are currently only available for charter\
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
    default_value: Local Charter School,State Charter School
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - District School
      - Local Charter School
      - State Charter School
    model: ped_public_financials
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_type_name
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
  - name: Select School Name
    title: Select School Name
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
    listens_to_filters: [Fiscal Year, Location Type]
    field: stars_locations.School_name_plain
