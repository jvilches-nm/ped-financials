---
- dashboard: student_discipline_infractions_and_responses
  title: Student Discipline Infractions and Responses
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: oUyd6RYKTraNrWPXSnctCQ
  elements:
  - title: Infraction Category
    name: Infraction Category
    model: ped_public_financials
    explore: discipline
    type: looker_pie
    fields: [discipline.infraction_category, discipline.discipline_count]
    filters: {}
    sorts: [discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 2
    col: 5
    width: 9
    height: 7
  - title: Discipline Responses
    name: Discipline Responses
    model: ped_public_financials
    explore: discipline
    type: looker_pie
    fields: [discipline.discipline_response, discipline.discipline_count]
    sorts: [discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 9
    col: 0
    width: 14
    height: 7
  - title: Infraction Category and Response
    name: Infraction Category and Response
    model: ped_public_financials
    explore: discipline
    type: looker_bar
    fields: [discipline.infraction_category, discipline.discipline_response, discipline.discipline_count]
    pivots: [discipline.discipline_response]
    filters: {}
    sorts: [discipline.discipline_response, discipline.infraction_category desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 16
    col: 0
    width: 24
    height: 8
  - title: Infraction and Response
    name: Infraction and Response
    model: ped_public_financials
    explore: discipline
    type: looker_bar
    fields: [discipline.discipline_response, discipline.discipline_count, discipline.infraction]
    pivots: [discipline.discipline_response]
    filters: {}
    sorts: [discipline.discipline_response, discipline.discipline_count desc 0]
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Infractions, orientation: bottom, series: [{axisId: Arrest/referral
              to justice system - discipline.discipline_count, id: Arrest/referral
              to justice system - discipline.discipline_count, name: Arrest/referral
              to justice system}, {axisId: Called police - discipline.discipline_count,
            id: Called police - discipline.discipline_count, name: Called police},
          {axisId: DPHO orders alternate setting - discipline.discipline_count, id: DPHO
              orders alternate setting - discipline.discipline_count, name: DPHO orders
              alternate setting}, {axisId: Expulsion - no educ services - RegEd -
              discipline.discipline_count, id: Expulsion - no educ services - RegEd
              - discipline.discipline_count, name: Expulsion - no educ services -
              RegEd}, {axisId: Expulsion (no educational services) - discipline.discipline_count,
            id: Expulsion (no educational services) - discipline.discipline_count,
            name: Expulsion (no educational services)}, {axisId: In school suspension
              - discipline.discipline_count, id: In school suspension - discipline.discipline_count,
            name: In school suspension}, {axisId: Modified Expulsion (rec. some educ
              serv) - discipline.discipline_count, id: Modified Expulsion (rec. some
              educ serv) - discipline.discipline_count, name: Modified Expulsion (rec.
              some educ serv)}, {axisId: Modified Expulsion- rcving educ srv - discipline.discipline_count,
            id: Modified Expulsion- rcving educ srv - discipline.discipline_count,
            name: Modified Expulsion- rcving educ srv}, {axisId: No Disciplinary Action
              - discipline.discipline_count, id: No Disciplinary Action - discipline.discipline_count,
            name: No Disciplinary Action}, {axisId: No Response - discipline.discipline_count,
            id: No Response - discipline.discipline_count, name: No Response}, {axisId: Other/Unknown
              - discipline.discipline_count, id: Other/Unknown - discipline.discipline_count,
            name: Other/Unknown}, {axisId: Out of school suspension - discipline.discipline_count,
            id: Out of school suspension - discipline.discipline_count, name: Out
              of school suspension}, {axisId: Restorative Justice - discipline.discipline_count,
            id: Restorative Justice - discipline.discipline_count, name: Restorative
              Justice}, {axisId: Restraint - discipline.discipline_count, id: Restraint
              - discipline.discipline_count, name: Restraint}, {axisId: School personnel
              order alternate setting - discipline.discipline_count, id: School personnel
              order alternate setting - discipline.discipline_count, name: School
              personnel order alternate setting}, {axisId: Seclusion - discipline.discipline_count,
            id: Seclusion - discipline.discipline_count, name: Seclusion}, {axisId: Sent
              to alt setting by hearing officer - discipline.discipline_count, id: Sent
              to alt setting by hearing officer - discipline.discipline_count, name: Sent
              to alt setting by hearing officer}, {axisId: Sent to alt setting by
              school personnel - discipline.discipline_count, id: Sent to alt setting
              by school personnel - discipline.discipline_count, name: Sent to alt
              setting by school personnel}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 24
    col: 0
    width: 24
    height: 14
  - title: Avg Suspension Duration by Infraction Category
    name: Avg Suspension Duration by Infraction Category
    model: ped_public_financials
    explore: discipline
    type: looker_bar
    fields: [discipline.discipline_response, discipline.infraction_category, discipline.discipline_respons_days,
      discipline.discipline_count]
    pivots: [discipline.discipline_response]
    filters:
      discipline.discipline_response: In school suspension,Out of school suspension
    sorts: [discipline.discipline_response, discipline.discipline_respons_days desc
        0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline.discipline_respons_days}/${discipline.discipline_count}"
      label: Avg Suspension Duration
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: avg_suspension_duration
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [discipline.discipline_count, discipline.discipline_respons_days]
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 38
    col: 0
    width: 11
    height: 6
  - title: Days of Suspension by Infraction Type
    name: Days of Suspension by Infraction Type
    model: ped_public_financials
    explore: discipline
    type: looker_grid
    fields: [discipline.infraction, discipline.discipline_respons_days, discipline.discipline_response]
    pivots: [discipline.discipline_response]
    filters:
      discipline.discipline_response: In school suspension,Out of school suspension
    sorts: [discipline.discipline_response, discipline.discipline_respons_days desc
        0]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      discipline.discipline_respons_days: Suspension Days
    series_cell_visualizations:
      discipline.discipline_respons_days:
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 38
    col: 11
    width: 13
    height: 6
  - title: Out of School Suspension Durations by Infraction Category
    name: Out of School Suspension Durations by Infraction Category
    model: ped_public_financials
    explore: discipline
    type: looker_grid
    fields: [discipline.infraction_category, discipline.response_duration_band, discipline.discipline_count]
    pivots: [discipline.response_duration_band]
    filters:
      discipline.discipline_response: Out of school suspension
    sorts: [discipline.response_duration_band, discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      discipline.discipline_count: Infractions
    series_cell_visualizations:
      discipline.discipline_count:
        is_active: true
    hidden_pivots: {}
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 44
    col: 12
    width: 12
    height: 5
  - title: In School Suspension Durations by Infraction Category
    name: In School Suspension Durations by Infraction Category
    model: ped_public_financials
    explore: discipline
    type: looker_grid
    fields: [discipline.infraction_category, discipline.response_duration_band, discipline.discipline_count]
    pivots: [discipline.response_duration_band]
    filters:
      discipline.discipline_response: In school suspension
    sorts: [discipline.response_duration_band, discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      discipline.discipline_count: Infractions
    series_cell_visualizations:
      discipline.discipline_count:
        is_active: true
    hidden_pivots: {}
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 44
    col: 0
    width: 12
    height: 5
  - title: Infraction Categories by Month
    name: Infraction Categories by Month
    model: ped_public_financials
    explore: discipline
    type: looker_line
    fields: [discipline.infraction_month, discipline.discipline_count, discipline.infraction_category]
    pivots: [discipline.infraction_category]
    fill_fields: [discipline.infraction_month]
    sorts: [discipline.infraction_category, discipline.infraction_month desc]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Infractions, orientation: left, series: [{axisId: discipline.discipline_count,
            id: Attendance - discipline.discipline_count, name: Attendance}, {axisId: discipline.discipline_count,
            id: Firearms - discipline.discipline_count, name: Firearms}, {axisId: discipline.discipline_count,
            id: Vandalism - discipline.discipline_count, name: Vandalism}, {axisId: discipline.discipline_count,
            id: Violence - discipline.discipline_count, name: Violence}, {axisId: discipline.discipline_count,
            id: W/SA/Gang - discipline.discipline_count, name: W/SA/Gang}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 49
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Gender Demographics"}],"align":"center"},{"type":"p","children":[{"text":""}],"id":1704400423727},{"type":"h3","children":[{"text":"Gender
      identity is not available prior to the 2021-2022 school year. If gender identity
      is not specified, the birth gender is used."}],"id":1704399210573}]'
    rich_content_json: '{"format":"slate"}'
    row: 64
    col: 0
    width: 24
    height: 2
  - title: Criminal Charge Flagged Infractions
    name: Criminal Charge Flagged Infractions
    model: ped_public_financials
    explore: discipline
    type: looker_pie
    fields: [discipline.infraction, discipline.discipline_count]
    filters:
      discipline.criminal_charge: 'Yes'
    sorts: [discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 58
    col: 16
    width: 8
    height: 6
  - title: Serious Injury Flagged Infractions
    name: Serious Injury Flagged Infractions
    model: ped_public_financials
    explore: discipline
    type: looker_pie
    fields: [discipline.infraction, discipline.discipline_count]
    filters:
      discipline.serious_injury: 'Yes'
    sorts: [discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 58
    col: 0
    width: 8
    height: 6
  - title: Hate Crime Flagged Infractions
    name: Hate Crime Flagged Infractions
    model: ped_public_financials
    explore: discipline
    type: looker_pie
    fields: [discipline.infraction, discipline.discipline_count]
    filters:
      discipline.hate_crime: 'Yes'
    sorts: [discipline.discipline_count desc 0]
    limit: 500
    column_limit: 50
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 58
    col: 8
    width: 8
    height: 6
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Race/Ethnicity Demographics"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 97
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Other Demographics"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 131
    col: 0
    width: 24
    height: 2
  - title: "% Students with Infractions"
    name: "% Students with Infractions"
    model: ped_public_financials
    explore: discipline_school_demographics
    type: single_value
    fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students]
    filters:
      discipline_school_demographics.demographic: Total
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${discipline_school_demographics.students}>10, ${discipline_school_demographics.students_with_infractions}/${discipline_school_demographics.students},
        0)
      label: "% Students with Infractions"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: students_with_infractions
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students]
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 2
    col: 0
    width: 5
    height: 7
  - title: Infractions by Gender
    name: Infractions by Gender
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_pie
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: Non-Binary,Female,Male
    sorts: [discipline_school_demographics.student_infractions desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 66
    col: 0
    width: 8
    height: 7
  - name: Infraction Categories by Gender
    title: Infraction Categories by Gender
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.gender_identity, discipline_demographics.infraction_category,
        discipline_demographics.discipline_count]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: Female,Male,Non-Binary
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.gender_identity
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    font_size: '12'
    series_types: {}
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
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_bar
    pivots: [discipline_demographics.gender_identity]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 66
    col: 8
    width: 16
    height: 7
  - name: Infraction Types by Gender
    title: Infraction Types by Gender
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.gender_identity, discipline_demographics.discipline_count,
        discipline_demographics.infraction]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: Female,Male,Non-Binary
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.gender_identity
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      discipline_demographics.infraction: Infraction Type
    series_cell_visualizations:
      infractions:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_value_labels: true
    font_size: 12
    hide_legend: false
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_grid
    pivots: [discipline_demographics.gender_identity]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 73
    col: 0
    width: 24
    height: 9
  - name: Discipline Responses by Gender
    title: Discipline Responses by Gender
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.gender_identity, discipline_demographics.discipline_count,
        discipline_demographics.discipline_response]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: Female,Male,Non-Binary
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.gender_identity
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    font_size: '12'
    series_types: {}
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
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_bar
    pivots: [discipline_demographics.discipline_response]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 82
    col: 0
    width: 24
    height: 8
  - title: "% Students with Infractions by Gender"
    name: "% Students with Infractions by Gender"
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_bar
    fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: Female,Male,Non-Binary
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${discipline_school_demographics.students}>10, ${discipline_school_demographics.students_with_infractions}/${discipline_school_demographics.students},
        0)
      label: "% Students with Infractions"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: students_with_infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_infractions,
            id: Female - students_with_infractions, name: Female}, {axisId: students_with_infractions,
            id: Male - students_with_infractions, name: Male}, {axisId: students_with_infractions,
            id: Non-Binary - students_with_infractions, name: Non-Binary}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Female - students_with_infractions: "#068993"
      Male - students_with_infractions: "#F15922"
      Female - 1 - students_with_infractions: "#068993"
      Male - 2 - students_with_infractions: "#F15922"
    defaults_version: 1
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.students_with_infractions]
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 90
    col: 0
    width: 12
    height: 7
  - name: Infraction Risk Ratio by Gender
    title: Infraction Risk Ratio by Gender
    note_state: collapsed
    note_display: hover
    note_text: "A risk ratio of less than one means that student demographic has a\
      \ reduced risk of discipline infractions compared to the rest of the student\
      \ body. \n\nA risk ratio of more than one means that student demographic has\
      \ a increased risk of discipline infractions compared to the rest of the student\
      \ body."
    merged_queries:
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [district_location.school_year, discipline_school_demographics.demographic,
        discipline_school_demographics.students_with_infractions, discipline_school_demographics.students]
      filters:
        discipline_school_demographics.demographic: Female,Male,Non-Binary
      sorts: [discipline_school_demographics.students_with_infractions desc]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
        district_location.school_year]
      filters:
        discipline_school_demographics.demographic: Total
      sorts: [discipline_school_demographics.students_with_infractions desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: district_location.school_year
        source_field_name: district_location.school_year
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: infraction_risk_ratio_by_gender,
            id: Male - infraction_risk_ratio_by_gender, name: Male}, {axisId: infraction_risk_ratio_by_gender,
            id: Female - infraction_risk_ratio_by_gender, name: Female}, {axisId: infraction_risk_ratio_by_gender,
            id: Non-Binary - infraction_risk_ratio_by_gender, name: Non-Binary}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
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
    hidden_fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
      q1_discipline_school_demographics.students_with_infractions, q1_discipline_school_demographics.students]
    type: looker_column
    hidden_pivots: {}
    pivots: [discipline_school_demographics.demographic]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${discipline_school_demographics.students}>10, (${discipline_school_demographics.students_with_infractions}/${discipline_school_demographics.students})
        / ((${q1_discipline_school_demographics.students_with_infractions}-${discipline_school_demographics.students_with_infractions})/(${q1_discipline_school_demographics.students}-${discipline_school_demographics.students})),0)
      label: Infraction Risk Ratio by Gender
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: infraction_risk_ratio_by_gender
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 90
    col: 12
    width: 12
    height: 7
  - title: Infractions by Race/Ethnicity
    name: Infractions by Race/Ethnicity
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_pie
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
        or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
        Pacific Islander
    sorts: [discipline_school_demographics.student_infractions desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
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
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 99
    col: 0
    width: 8
    height: 8
  - name: Infraction Categories by Race/Ethnicity
    title: Infraction Categories by Race/Ethnicity
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.infraction_category, discipline_demographics.discipline_count,
        discipline_demographics.race_ethnicity]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
          or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
          Pacific Islander
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.race_ethnicity
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    font_size: '12'
    series_types: {}
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
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_bar
    pivots: [discipline_demographics.race_ethnicity]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 99
    col: 8
    width: 16
    height: 8
  - title: "% Students with Infractions by Race/Ethnicity"
    name: "% Students with Infractions by Race/Ethnicity"
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_bar
    fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
        or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
        Pacific Islander
    sorts: [discipline_school_demographics.demographic, students_with_infractions
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${discipline_school_demographics.students}>10, ${discipline_school_demographics.students_with_infractions}/${discipline_school_demographics.students},
        0)
      label: "% Students with Infractions"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: students_with_infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_infractions,
            id: Female - students_with_infractions, name: Female}, {axisId: students_with_infractions,
            id: Male - students_with_infractions, name: Male}, {axisId: students_with_infractions,
            id: Non-Binary - students_with_infractions, name: Non-Binary}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Female - students_with_infractions: "#068993"
      Male - students_with_infractions: "#F15922"
    defaults_version: 1
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.students_with_infractions]
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 124
    col: 0
    width: 12
    height: 7
  - name: Infraction Types by Race/Ethnicity
    title: Infraction Types by Race/Ethnicity
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.discipline_count, discipline_demographics.infraction,
        discipline_demographics.race_ethnicity]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
          or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
          Pacific Islander
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.race_ethnicity
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      discipline_demographics.infraction: Infraction Type
    series_cell_visualizations:
      infractions:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_value_labels: true
    font_size: 12
    hide_legend: false
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_grid
    pivots: [discipline_demographics.race_ethnicity]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 107
    col: 0
    width: 24
    height: 9
  - name: Discipline Responses by Race/Ethnicity
    title: Discipline Responses by Race/Ethnicity
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.discipline_count, discipline_demographics.discipline_response,
        discipline_demographics.race_ethnicity]
      sorts: [discipline_demographics.discipline_count desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students, discipline_school_demographics.demographic]
      filters:
        discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
          or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
          Pacific Islander
      sorts: [discipline_school_demographics.students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_school_demographics.demographic
        source_field_name: discipline_demographics.race_ethnicity
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    font_size: '12'
    series_types: {}
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
    hidden_fields: [discipline_school_demographics.students, discipline_demographics.discipline_count]
    hidden_pivots: {}
    type: looker_bar
    pivots: [discipline_demographics.discipline_response]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_demographics.discipline_count},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 116
    col: 0
    width: 24
    height: 8
  - name: Infraction Risk Ratio by Race/Ethnicity
    title: Infraction Risk Ratio by Race/Ethnicity
    note_state: collapsed
    note_display: hover
    note_text: "A risk ratio of less than one means that student demographic has a\
      \ reduced risk of discipline infractions compared to the rest of the student\
      \ body. \n\nA risk ratio of more than one means that student demographic has\
      \ a increased risk of discipline infractions compared to the rest of the student\
      \ body."
    merged_queries:
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [district_location.school_year, discipline_school_demographics.demographic,
        discipline_school_demographics.students_with_infractions, discipline_school_demographics.students]
      filters:
        discipline_school_demographics.demographic: American Indian/Alaskan Native,Asian,Black
          or African American,Caucasian,Hispanic,Multiracial,Native Hawaiian or Other
          Pacific Islander
      sorts: [discipline_school_demographics.students_with_infractions desc]
      limit: 500
      column_limit: 50
    - model: ped_public_financials
      explore: discipline_school_demographics
      type: table
      fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
        district_location.school_year]
      filters:
        discipline_school_demographics.demographic: Total
      sorts: [discipline_school_demographics.students_with_infractions desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: district_location.school_year
        source_field_name: district_location.school_year
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: infraction_risk_ratio_by_gender,
            id: Male - infraction_risk_ratio_by_gender, name: Male}, {axisId: infraction_risk_ratio_by_gender,
            id: Female - infraction_risk_ratio_by_gender, name: Female}, {axisId: infraction_risk_ratio_by_gender,
            id: Non-Binary - infraction_risk_ratio_by_gender, name: Non-Binary}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
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
    hidden_fields: [discipline_school_demographics.students_with_infractions, discipline_school_demographics.students,
      q1_discipline_school_demographics.students_with_infractions, q1_discipline_school_demographics.students]
    type: looker_column
    hidden_pivots: {}
    pivots: [discipline_school_demographics.demographic]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${discipline_school_demographics.students}>10, (${discipline_school_demographics.students_with_infractions}/${discipline_school_demographics.students})
        / ((${q1_discipline_school_demographics.students_with_infractions}-${discipline_school_demographics.students_with_infractions})/(${q1_discipline_school_demographics.students}-${discipline_school_demographics.students})),0)
      label: Infraction Risk Ratio by Gender
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: infraction_risk_ratio_by_gender
      _type_hint: number
    listen:
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    - School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 124
    col: 12
    width: 12
    height: 7
  - title: Infractions by Grade Level
    name: Infractions by Grade Level
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_column
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: 01,02,03,04,05,06,07,08,09,10,11,12,KF,PK,000PK,00KF
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 148
    col: 0
    width: 24
    height: 10
  - title: Infractions by Economically Disadvantaged Status
    name: Infractions by Economically Disadvantaged Status
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_column
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: Family Members of SNAP identified,Not
        Economically Disadvantaged,OTHER Direct Cert,SNAP Direct Cert,Economically
        Disadvantaged
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 140
    col: 0
    width: 12
    height: 8
  - title: Infractions by Special Ed Status
    name: Infractions by Special Ed Status
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_column
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: Regular Education and Gifted only
        students,Students with disabilities
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 133
    col: 0
    width: 12
    height: 7
  - title: Infractions by Homeless Status
    name: Infractions by Homeless Status
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_column
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: Homeless,Homeless eligible and not
        served under McKenny Vento Funds,Homeless eligible and served under McKenny
        Vento Funds,Student is not homeless,Not Homeless
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
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
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 133
    col: 12
    width: 12
    height: 7
  - title: Infractions by English Learner Status
    name: Infractions by English Learner Status
    model: ped_public_financials
    explore: discipline_school_demographics
    type: looker_column
    fields: [discipline_school_demographics.student_infractions, discipline_school_demographics.students,
      discipline_school_demographics.demographic]
    pivots: [discipline_school_demographics.demographic]
    filters:
      discipline_school_demographics.demographic: English Learner,Non English Learner
    sorts: [discipline_school_demographics.demographic]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if (${discipline_school_demographics.students}>10, ${discipline_school_demographics.student_infractions},
        0)
      label: Infractions
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: infractions
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields: [discipline_school_demographics.students, discipline_school_demographics.student_infractions]
    defaults_version: 1
    listen:
      School Year: district_location.school_year
      District Name: district_location.district_name
      School Name: district_location.school_name
    row: 140
    col: 12
    width: 12
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"The following flags are non-mandatory
      and determined at the local level. These can be used to indicate that an infraction
      caused a serious inury, was hate motivated, or resulted in a criminal charge."}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 56
    col: 0
    width: 24
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Infraction Categories and Types"}],"align":"center"},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Attendance"}],"id":1704390877743},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Referred
      to CYFD for Excessive Absenteeism"}],"id":1704390902319}],"id":1704390902319}],"id":1704390903114}],"id":1704390892500},{"type":"li","children":[{"type":"lic","children":[{"text":"Firearms"}],"id":1704390925545},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Handgun
      Possession"}],"id":1704390930857}],"id":1704390930857},{"type":"li","children":[{"type":"lic","children":[{"text":"Multiple
      Firearms"}],"id":1704390949296}],"id":1704390949295},{"type":"li","children":[{"type":"lic","children":[{"text":"Other
      Firearms Possession"}],"id":1704390961279}],"id":1704390961279},{"type":"li","children":[{"type":"lic","children":[{"text":"Rifle/Shotgun
      Possession"}],"id":1704390968247}],"id":1704390968247}],"id":1704390931215}],"id":1704390925545},{"type":"li","children":[{"type":"lic","children":[{"text":"Vandalism"}],"id":1704390980526},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Arson"}],"id":1704390989936}],"id":1704390989936},{"type":"li","children":[{"type":"lic","children":[{"text":"Breaking/Entering/Larceny"}],"id":1704390992166}],"id":1704390992166},{"type":"li","children":[{"type":"lic","children":[{"text":"Criminal
      Damage"}],"id":1704390997154}],"id":1704390997154},{"type":"li","children":[{"type":"lic","children":[{"text":"Graffiti"}],"id":1704391000359}],"id":1704391000359},{"type":"li","children":[{"type":"lic","children":[{"text":"Missing
      Property/Theft"}],"id":1704391002703}],"id":1704391002703},{"type":"li","children":[{"type":"lic","children":[{"text":"Vandalism"}],"id":1704391006894}],"id":1704391006894}],"id":1704390990018}],"id":1704390980526},{"type":"li","children":[{"type":"lic","children":[{"text":"Violence"}],"id":1704391009452},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Assault/battery
      (includes simple, aggravated with hands/fist/feet, with a knife or cutting object,
      with other dangerous weapon, with firearm)"}],"id":1704391017352}],"id":1704391017352},{"type":"li","children":[{"type":"lic","children":[{"text":"Bullying
      or Harassment (includes on the basis of sex, race, color, national origin or
      disability, or not on those basis)"}],"id":1704391057371}],"id":1704391057371},{"type":"li","children":[{"type":"lic","children":[{"text":"Disorderly
      Conduct"}],"id":1704391133117}],"id":1704391133117},{"type":"li","children":[{"type":"lic","children":[{"text":"Homicide"}],"id":1704391206068}],"id":1704391206068},{"type":"li","children":[{"type":"lic","children":[{"text":"Kidnapping"}],"id":1704391208141}],"id":1704391208141},{"type":"li","children":[{"type":"lic","children":[{"text":"Robbery
      using force"}],"id":1704391210228}],"id":1704391210228},{"type":"li","children":[{"type":"lic","children":[{"text":"Self-Injury"}],"id":1704391215700}],"id":1704391215700},{"type":"li","children":[{"type":"lic","children":[{"text":"Sexual
      battery"}],"id":1704391217924}],"id":1704391217924},{"type":"li","children":[{"type":"lic","children":[{"text":"Sexual
      Harassment (includes bullying on the basis of sex)"}],"id":1704391223244}],"id":1704391223244},{"type":"li","children":[{"type":"lic","children":[{"text":"General
      violence - including threats or intimidation"}],"id":1704391240044}],"id":1704391240044}],"id":1704391017514}],"id":1704391009452},{"type":"li","children":[{"type":"lic","children":[{"text":"Weapons/Substance
      Abuse/Gang Activity (W/SA/Gang)"}],"id":1704391254909},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Alcohol
      Violation (including Dealing, Possession, Use)"}],"id":1704391272885}],"id":1704391272885},{"type":"li","children":[{"type":"lic","children":[{"text":"Drug
      Violation"}],"id":1704391296611}],"id":1704391296611},{"type":"li","children":[{"type":"lic","children":[{"text":"Gang-Related
      Activity"}],"id":1704391306532}],"id":1704391306532},{"type":"li","children":[{"type":"lic","children":[{"text":"Tobacco
      Use"}],"id":1704391312274}],"id":1704391312274},{"type":"li","children":[{"type":"lic","children":[{"text":"Weapons
      Possession (including Knife/Cutting or other)"}],"id":1704391320468}],"id":1704391320468},{"type":"li","children":[{"type":"lic","children":[{"text":"Other
      Weapons/Substance Abuse/Gang Activity"}],"id":1704391340595}],"id":1704391340595}],"id":1704391273092}],"id":1704391254909}],"id":1704390892498},{"type":"p","children":[{"text":""}],"id":1704391406326},{"type":"p","id":1704391407708,"children":[{"text":"For
      more detailed information on these categories, infractions, and the discipline
      responses, please go to the Learn More page."}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 14
    width: 10
    height: 14
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"After changing filter values, please
      click on the blue update button in the top right to refresh the data."}]},{"type":"h3","children":[{"text":"To
      see a larger version of a graph, please click on the three dots in the top right
      corner of the box and select View → Expanded."}],"id":1704399979114},{"type":"h3","children":[{"text":"Data
      for student groups of 10 or fewer is masked to protect student privacy."}],"id":1704481297327}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: School Year
    title: School Year
    type: field_filter
    default_value: 2022-2023
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials
    explore: discipline
    listens_to_filters: []
    field: district_location.school_year
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials
    explore: discipline
    listens_to_filters: []
    field: district_location.district_name
  - name: School Name
    title: School Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials
    explore: discipline
    listens_to_filters: [District Name]
    field: district_location.school_name
