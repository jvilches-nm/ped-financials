---
- dashboard: discipline_dashboard
  title: Discipline Dashboard
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: T0qy8WY6zsAPDSAyH7P16u
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"children":[{"text":"Dashboard Tips"}],"type":"h2","id":"ncq1g","align":"center"},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"After
      changing filter values, please click on the blue update button in the top right
      to refresh the data"}],"id":"qq1mn"}],"id":"k2red"},{"type":"li","children":[{"type":"lic","children":[{"text":"To
      see a larger version of a graph, please click on the three dots in the top right
      corner of the box and select View → Expanded"}],"id":"jgisz"}],"id":"chxty"}],"id":"serwt"},{"type":"p","children":[{"text":""}],"id":"frfj2"},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"Discipline
      numbers relfect state-reportable incidents only"}],"id":"fqa9a"}],"id":"ydqws"},{"type":"li","children":[{"type":"lic","children":[{"text":"An
      incident can involve more than one student, each student involved may receive
      more than one response"}],"id":"ahy7s"}],"id":"uov0m"},{"type":"li","children":[{"type":"lic","children":[{"text":"All
      graphs involving discipline responses highlight removal responses and group
      all non-removal responses into ‘Other’"}],"id":"seoz0"}],"id":"lnpy4"},{"type":"li","children":[{"type":"lic","children":[{"text":"Dashboard
      data available for fully completed school years starting with the 2024-2025
      school year"}],"id":"ueq1t"}],"id":"cl3m5"},{"type":"li","children":[{"type":"lic","children":[{"text":"Data
      values for student groups of 10 or fewer are masked to protect student privacy"}],"id":"m1e73"}],"id":"4lpxk"},{"type":"li","children":[{"type":"lic","children":[{"text":"If
      you have questions about the data contained on this dasbhoard please contact:
      "},{"type":"a","url":"mailto:amanda.chavez@ped.nm.gov","target":"_blank","children":[{"text":"Discipline
      Contact"}],"id":"a4eao"},{"text":""}],"id":"2693s"}],"id":"nrluw"},{"type":"li","children":[{"type":"lic","children":[{"text":"Looking
      for the attendance dashboard? "},{"type":"a","url":"https://web.ped.nm.gov/bureaus/safe-and-healthy-schools/attendance-for-success/annual-state-districts-and-schools-attendance-report/","children":[{"text":"Attendance
      Dashboard"}],"id":"nriy1"},{"text":""}],"id":"uhkmu"}],"id":"ngjb4"},{"type":"li","children":[{"type":"lic","children":[{"text":"Looking
      for District/Charter report cards? "},{"type":"a","url":"https://nmvistas.org/","target":"_blank","children":[{"text":"NM
      Vistas"}],"id":"pcx13"},{"text":""}],"id":"yg9n6"}],"id":"x2mry"},{"type":"li","children":[{"type":"lic","children":[{"text":"This
      data is intended for general trend indentification and should not be used for
      detailed data analysis"}],"id":"fzvbx"}],"id":"yo4ot"}],"id":"p130r"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 14
    height: 6
    tab_name: ''
  - title: Districs, Schools, and Students
    name: Districs, Schools, and Students
    model: ped_public_financials
    explore: student_demographics
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [student_demographics.count_districts, student_demographics.count_schools,
      student_demographics.count]
    filters:
      student_demographics.school_year: 2023-2024
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    title_override_student_demographics.count_districts: Districts
    title_override_student_demographics.count_schools: Schools
    title_override_student_demographics.count: Students
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
    defaults_version: 0
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 6
    col: 0
    width: 14
    height: 3
    tab_name: ''
  - name: "% Students with Discipline Incidents"
    title: "% Students with Discipline Incidents"
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.school_year]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.school_year]
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.school_year
        source_field_name: student_demographics.school_year
    hidden_fields: [student_demographics.school_year, student_demographics.count,
      discipline_demographics.count_students]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 12
    col: 0
    width: 7
    height: 4
    tab_name: ''
  - name: " (2)"
    type: text
    title_text: ''
    body_text: "------------------------------------------------------"
    row: 31
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - name: " (3)"
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Discipline Responses for Students
      with Discipline Incidents"}],"align":"center"},{"type":"p","id":"dwkog","children":[{"fontSize":"14px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(38, 45, 51)","text":"Discipline responses resulting
      in removals are highlighted, all other responses captured under ‘Other.’"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 32
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - title: Discipline Responses
    name: Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    sorts: [discipline_demographics.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Expulsion: "#F2C73C"
      Modified Expulsion: "#9B8E20"
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
    note_state: collapsed
    note_display: above
    note_text: Percentage of responses for students with incidents. Responses resulting
      in removal are highlighted, all other responses captured under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 34
    col: 0
    width: 8
    height: 6
    tab_name: ''
  - title: Discipline Responses by Grade Level
    name: Discipline Responses by Grade Level
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_column
    fields: [discipline_demographics.count, discipline_demographics.grade_level, discipline_demographics.discipline_response]
    pivots: [discipline_demographics.discipline_response]
    sorts: [discipline_demographics.discipline_response, discipline_demographics.grade_level]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Expulsion - discipline_demographics.count: "#F2C73C"
      Modified Expulsion - discipline_demographics.count: "#9B8E20"
      Other - discipline_demographics.count: "#A85573"
      Out of School Suspension - discipline_demographics.count: "#F15922"
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
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of responses for student with incidents by grade level.
      Responses resulting in removals are highlighted, all other responses captured
      under ‘Other.’
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 34
    col: 8
    width: 16
    height: 6
    tab_name: ''
  - title: Average Suspension Duration
    name: Average Suspension Duration
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.discipline_response_duration, discipline_demographics.discipline_response,
      discipline_demographics.count]
    pivots: [discipline_demographics.discipline_response]
    filters:
      discipline_demographics.discipline_response: In school suspension,Out of school
        suspension
    sorts: [discipline_demographics.discipline_response]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.discipline_response_duration}/${discipline_demographics.count}"
      label: Average Suspension Duration
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: average_suspension_duration
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
    y_axes: [{label: Average Suspension Duration in Days, orientation: bottom, series: [
          {axisId: average_suspension_duration, id: In school suspension - average_suspension_duration,
            name: In school suspension}, {axisId: average_suspension_duration, id: Out
              of school suspension - average_suspension_duration, name: Out of school
              suspension}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      In school suspension - average_suspension_duration: "#068993"
      Out of school suspension - average_suspension_duration: "#F15922"
      In School Suspension - average_suspension_duration: "#068993"
      Out of School Suspension - average_suspension_duration: "#F15922"
    hidden_fields: [discipline_demographics.count, discipline_demographics.discipline_response_duration]
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Average length of in-school suspension and out of school suspension.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 40
    col: 0
    width: 8
    height: 9
    tab_name: ''
  - title: In School Suspensions
    name: In School Suspensions
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_line
    fields: [discipline_demographics.count, discipline_demographics.discipline_response_duration_band]
    filters:
      discipline_demographics.discipline_response: In school suspension
    sorts: [discipline_demographics.discipline_response_duration_band]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Suspension Duration in Days, orientation: bottom, series: [
          {axisId: average_suspension_duration, id: In school suspension - average_suspension_duration,
            name: In school suspension}, {axisId: average_suspension_duration, id: Out
              of school suspension - average_suspension_duration, name: Out of school
              suspension}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      In school suspension - average_suspension_duration: "#068993"
      Out of school suspension - average_suspension_duration: "#F15922"
      discipline_demographics.count: "#068993"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Number of in school suspensions for each duration band in days.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 40
    col: 8
    width: 8
    height: 7
    tab_name: ''
  - title: Out of School Suspensions
    name: Out of School Suspensions
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_line
    fields: [discipline_demographics.count, discipline_demographics.discipline_response_duration_band]
    filters:
      discipline_demographics.discipline_response: Out of school suspension
    sorts: [discipline_demographics.discipline_response_duration_band]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Suspension Duration in Days, orientation: bottom, series: [
          {axisId: average_suspension_duration, id: In school suspension - average_suspension_duration,
            name: In school suspension}, {axisId: average_suspension_duration, id: Out
              of school suspension - average_suspension_duration, name: Out of school
              suspension}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      In school suspension - average_suspension_duration: "#068993"
      Out of school suspension - average_suspension_duration: "#F15922"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: above
    note_text: Number of out of school suspensions for each duration band in days.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 40
    col: 16
    width: 8
    height: 7
    tab_name: ''
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    body_text: '[{"type":"h1","children":[{"text":"Special Education"}],"align":"center"},{"type":"p","children":[{"text":"Comparison
      of discipline data between the population of students who are receiving special
      education services and those who are not."}],"id":"yblmo","align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 50
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - name: " (4)"
    type: text
    title_text: ''
    body_text: "-----------------------------------------------------------------------------"
    row: 49
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - title: Special Ed Population
    name: Special Ed Population
    model: ped_public_financials
    explore: student_demographics
    type: looker_bar
    fields: [student_demographics.special_ed, student_demographics.count]
    pivots: [student_demographics.special_ed]
    sorts: [student_demographics.special_ed desc]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Non Special Ed - student_demographics.count,
            id: Non Special Ed - student_demographics.count, name: Non Special Ed},
          {axisId: Special Ed - student_demographics.count, id: Special Ed - student_demographics.count,
            name: Special Ed}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Ed - student_demographics.count: "#A8876C"
      Special Ed - student_demographics.count: "#9B2030"
      Non Special Education - student_demographics.count: "#A8876C"
      Special Education - student_demographics.count: "#9B2030"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of students receiving special education services out of
      total student population.
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 52
    col: 0
    width: 13
    height: 6
    tab_name: ''
  - name: "% Students Population with Incidents - Special Ed"
    title: "% Students Population with Incidents - Special Ed"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of students with documented incidents
      within two groups—students receiving special education services and students
      not receiving special education services—expressed as a percentage of each group’s
      total population.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.special_ed, student_demographics.count]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.special_ed, discipline_demographics.count_students]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.special_ed
        source_field_name: student_demographics.special_ed
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.special_ed]
    sorts: [student_demographics.special_ed desc]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 52
    col: 13
    width: 11
    height: 6
    tab_name: ''
  - name: "% Student Population with Discipline Response - Special Ed"
    title: "% Student Population with Discipline Response - Special Ed"
    note_state: collapsed
    note_display: above
    note_text: 'A comparison of the proportion of special education and non-special
      education students with incidents, disaggregated by discipline response type
      and calculated out of each group’s total population. Responses resulting in
      removal are shown separately, while all non-removal responses are grouped under
      ‘Other. '
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.special_ed, student_demographics.count]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.special_ed, discipline_demographics.count_students,
        discipline_demographics.discipline_response]
      sorts: [discipline_demographics.special_ed, discipline_demographics.discipline_response,
        discipline_demographics.count_students desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.special_ed
        source_field_name: student_demographics.special_ed
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "% Students", orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.special_ed]
    sorts: [student_demographics.special_ed desc, students_with_discipline_incidents
        desc 1]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 58
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: "% of Total Incidents by Response - Special Ed"
    name: "% of Total Incidents by Response - Special Ed"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.special_ed, discipline_demographics.count, discipline_demographics.discipline_response]
    pivots: [discipline_demographics.special_ed]
    sorts: [discipline_demographics.special_ed desc, discipline_demographics.count
        desc 0, discipline_demographics.discipline_response desc]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by special-education and non-special
      education status.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 72
    col: 9
    width: 15
    height: 6
    tab_name: ''
  - title: "% of Total Incidents - Special Ed"
    name: "% of Total Incidents - Special Ed"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.special_ed, discipline_demographics.count]
    sorts: [discipline_demographics.special_ed desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to students
      receiving special education services versus those not receiving special education
      services.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 72
    col: 0
    width: 9
    height: 6
    tab_name: ''
  - title: Special Ed Student Discipline Responses
    name: Special Ed Student Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.special_ed: Special Education
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among students receiving special education services who had incidents,
      this graph shows the percentage receiving each type of discipline response.
      Responses that resulted in removal are highlighted; all other responses are
      grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 66
    col: 2
    width: 9
    height: 6
    tab_name: ''
  - title: Non Special Ed Student Discipline Responses
    name: Non Special Ed Student Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.special_ed: Non Special Education
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Modified Expulsion: "#9B8E20"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among students not receiving special education services who had incidents,
      this graph shows the percentage receiving each type of discipline response.
      Responses that resulted in removal are highlighted; all other responses are
      grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 66
    col: 13
    width: 9
    height: 6
    tab_name: ''
  - name: "% Students with Discipline Removals by District"
    title: "% Students with Discipline Removals by District"
    note_state: collapsed
    note_display: above
    note_text: Negative number indicates no data submitted.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.school_year, student_demographics.district_name]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.school_year,
        discipline_demographics.district_name]
      filters:
        discipline_demographics.discipline_response: Expulsion,In School Suspension,Modified
          Expulsion,Out of School Suspension
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.school_year
        source_field_name: student_demographics.school_year
      - field_name: discipline_demographics.district_name
        source_field_name: student_demographics.district_name
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [grey, green, yellow, red]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_value_scale_clamp_min: -0.1
    map_value_scale_clamp_max:
    hidden_fields: [student_demographics.school_year, student_demographics.count,
      discipline_demographics.count_students, students_with_discipline_incidents]
    type: looker_google_map
    series_types: {}
    sorts: [student_demographics.district_name]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: coalesce(${discipline_demographics.count_students},0)/coalesce(${student_demographics.count},
        0)
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    - category: table_calculation
      expression: " if(is_null(${discipline_demographics.count_students}), -1, ${discipline_demographics.count_students}/${student_demographics.count})"
      label: "% Students"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 0
    col: 14
    width: 10
    height: 16
    tab_name: ''
  - name: " "
    type: text
    title_text: " "
    body_text: "------------------------------------------------------"
    row: 78
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - title: ELL Discipline Responses
    name: ELL Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.ell: ELL
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among ELL students, the percentage receiving each type of discipline
      response. Responses that resulted in removal are highlighted; all other responses
      are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 95
    col: 2
    width: 9
    height: 6
    tab_name: ''
  - name: " (Copy 3)"
    type: text
    title_text: " (Copy 3)"
    body_text: '[{"type":"h1","children":[{"text":"English Language Learner (ELL)"}],"align":"center"},{"type":"p","children":[{"text":"Comparison
      of discipline data between the population of students who are English language
      learners and those who are not."}],"align":"center","id":"umf9e"}]'
    rich_content_json: '{"format":"slate"}'
    row: 79
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - name: "% Students Population with Incidents - ELL"
    title: "% Students Population with Incidents - ELL"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of students with documented incidents
      within two groups—ELL students and non ELL students—expressed as a percentage
      of each group’s total population.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.ell]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.ell]
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.ell
        source_field_name: student_demographics.ell
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
      ELL - students_with_discipline_incidents: "#9B2030"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.ell]
    sorts: [student_demographics.ell]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 81
    col: 13
    width: 11
    height: 6
    tab_name: ''
  - name: "% Student Population with Discipline Response - ELL"
    title: "% Student Population with Discipline Response - ELL"
    note_state: collapsed
    note_display: above
    note_text: 'A comparison of the proportion of ELL and non-ELL students with incidents,
      disaggregated by discipline response type and calculated out of each group’s
      total population. Responses resulting in removal are shown separately, while
      all non-removal responses are grouped under ‘Other. '
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.ell]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.discipline_response,
        discipline_demographics.ell]
      sorts: [discipline_demographics.discipline_response, discipline_demographics.count_students
          desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.ell
        source_field_name: student_demographics.ell
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "% Students", orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      ELL - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.ell]
    sorts: [students_with_discipline_incidents desc 0]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 87
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: ELL Population
    name: ELL Population
    model: ped_public_financials
    explore: student_demographics
    type: looker_bar
    fields: [student_demographics.count, student_demographics.ell]
    pivots: [student_demographics.ell]
    sorts: [student_demographics.ell]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Non Special Ed - student_demographics.count,
            id: Non Special Ed - student_demographics.count, name: Non Special Ed},
          {axisId: Special Ed - student_demographics.count, id: Special Ed - student_demographics.count,
            name: Special Ed}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Ed - student_demographics.count: "#A8876C"
      Special Ed - student_demographics.count: "#9B2030"
      Non Special Education - student_demographics.count: "#A8876C"
      Special Education - student_demographics.count: "#9B2030"
      ELL - student_demographics.count: "#9B2030"
      Non ELL - student_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of students identified as ELL out of total student population.
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 81
    col: 0
    width: 13
    height: 6
    tab_name: ''
  - title: "% of Total Incidents - ELL"
    name: "% of Total Incidents - ELL"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.ell]
    sorts: [discipline_demographics.ell]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Non ELL: "#A8876C"
      ELL: "#9B2030"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to ELL students
      versus non-ELL students.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 101
    col: 0
    width: 9
    height: 6
    tab_name: ''
  - title: Non ELL Discipline Responses
    name: Non ELL Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.ell: Non ELL
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Modified Expulsion: "#9B8E20"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among non-ELL students, the percentage receiving each type of discipline
      response. Responses that resulted in removal are highlighted; all other responses
      are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 95
    col: 13
    width: 9
    height: 6
    tab_name: ''
  - title: "% of Total Incidents by Response - ELL"
    name: "% of Total Incidents by Response - ELL"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.ell]
    pivots: [discipline_demographics.ell]
    sorts: [discipline_demographics.ell, discipline_demographics.count desc 0]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      ELL - discipline_demographics.count: "#9B2030"
      Non ELL - discipline_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by ELL and non-ELL status.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 101
    col: 9
    width: 15
    height: 6
    tab_name: ''
  - name: "  (2)"
    type: text
    title_text: " "
    body_text: "------------------------------------------------------"
    row: 107
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - title: Homeless Population
    name: Homeless Population
    model: ped_public_financials
    explore: student_demographics
    type: looker_bar
    fields: [student_demographics.count, student_demographics.homeless_status]
    pivots: [student_demographics.homeless_status]
    sorts: [student_demographics.homeless_status]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Non Special Ed - student_demographics.count,
            id: Non Special Ed - student_demographics.count, name: Non Special Ed},
          {axisId: Special Ed - student_demographics.count, id: Special Ed - student_demographics.count,
            name: Special Ed}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Ed - student_demographics.count: "#A8876C"
      Special Ed - student_demographics.count: "#9B2030"
      Non Special Education - student_demographics.count: "#A8876C"
      Special Education - student_demographics.count: "#9B2030"
      ELL - student_demographics.count: "#9B2030"
      Non ELL - student_demographics.count: "#A8876C"
      Homeless - student_demographics.count: "#9B2030"
      Non Homeless - student_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of students identified as Homeless out of total student
      population.
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 110
    col: 0
    width: 13
    height: 6
    tab_name: ''
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    body_text: '[{"type":"h1","children":[{"text":"Homeless Status"}],"align":"center"},{"type":"p","children":[{"text":"Comparison
      of discipline data between the population of students who are Homeless and those
      who are not."}],"align":"center","id":"nfnrk"}]'
    rich_content_json: '{"format":"slate"}'
    row: 108
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - title: Homeless Discipline Responses
    name: Homeless Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.homeless_status: Homeless
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among Homeless students, the percentage receiving each type of discipline
      response. Responses that resulted in removal are highlighted; all other responses
      are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 124
    col: 2
    width: 9
    height: 6
    tab_name: ''
  - name: "% Student Population with Discipline Response - Homeless"
    title: "% Student Population with Discipline Response - Homeless"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of Homeless and non-Homeless students
      with incidents, disaggregated by discipline response type and calculated out
      of each group’s total population. Responses resulting in removal are shown separately,
      while all non-removal responses are grouped under ‘Other.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.homeless_status]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.discipline_response,
        discipline_demographics.homeless_status]
      sorts: [discipline_demographics.discipline_response, discipline_demographics.count_students
          desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.homeless_status
        source_field_name: student_demographics.homeless_status
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "% Students", orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      ELL - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
      Homeless - students_with_discipline_incidents: "#9B2030"
      Non Homeless - students_with_discipline_incidents: "#A8876C"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.homeless_status]
    sorts: [students_with_discipline_incidents desc 0]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 116
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - name: "% Students Population with Incidents - Homeless"
    title: "% Students Population with Incidents - Homeless"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of students with documented incidents
      within two groups—homeless and non-homeless—expressed as a percentage of each
      group’s total population.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.homeless_status]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.homeless_status]
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.homeless_status
        source_field_name: student_demographics.homeless_status
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
      ELL - students_with_discipline_incidents: "#9B2030"
      Non Homeless - students_with_discipline_incidents: "#A8876C"
      Homeless - students_with_discipline_incidents: "#9B2030"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.homeless_status]
    sorts: [student_demographics.homeless_status]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 110
    col: 13
    width: 11
    height: 6
    tab_name: ''
  - title: Non Homeless Responses
    name: Non Homeless Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.homeless_status: Non Homeless
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Modified Expulsion: "#9B8E20"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among non Homeless students, the percentage receiving each type of
      discipline response. Responses that resulted in removal are highlighted; all
      other responses are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 124
    col: 13
    width: 9
    height: 6
    tab_name: ''
  - title: "% of Total Incidents - Homeless"
    name: "% of Total Incidents - Homeless"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.homeless_status]
    sorts: [discipline_demographics.homeless_status]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Non ELL: "#A8876C"
      ELL: "#9B2030"
      Non Homeless: "#A8876C"
      Homeless: "#9B2030"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to Homeless
      students versus non-Homeless students.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 130
    col: 0
    width: 9
    height: 6
    tab_name: ''
  - title: "% of Total Incidents by Response - Homeless"
    name: "% of Total Incidents by Response - Homeless"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.homeless_status]
    pivots: [discipline_demographics.homeless_status]
    sorts: [discipline_demographics.homeless_status, discipline_demographics.count
        desc 0]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      ELL - discipline_demographics.count: "#9B2030"
      Non ELL - discipline_demographics.count: "#A8876C"
      Homeless - discipline_demographics.count: "#9B2030"
      Non Homeless - discipline_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by Homeless and non-Homeless status.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 130
    col: 9
    width: 15
    height: 6
    tab_name: ''
  - name: "  (3)"
    type: text
    title_text: " "
    body_text: "------------------------------------------------------"
    row: 136
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - title: Economically Disadvantaged Population
    name: Economically Disadvantaged Population
    model: ped_public_financials
    explore: student_demographics
    type: looker_bar
    fields: [student_demographics.count, student_demographics.econ_disadvantaged]
    pivots: [student_demographics.econ_disadvantaged]
    sorts: [student_demographics.econ_disadvantaged]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Non Special Ed - student_demographics.count,
            id: Non Special Ed - student_demographics.count, name: Non Special Ed},
          {axisId: Special Ed - student_demographics.count, id: Special Ed - student_demographics.count,
            name: Special Ed}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Ed - student_demographics.count: "#A8876C"
      Special Ed - student_demographics.count: "#9B2030"
      Non Special Education - student_demographics.count: "#A8876C"
      Special Education - student_demographics.count: "#9B2030"
      ELL - student_demographics.count: "#9B2030"
      Non ELL - student_demographics.count: "#A8876C"
      Homeless - student_demographics.count: "#9B2030"
      Non Homeless - student_demographics.count: "#A8876C"
      Economically Disadvantaged - student_demographics.count: "#9B2030"
      Non Economically Disadvantaged - student_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of students identified as Economically Disadvantaged out
      of total student population.
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 139
    col: 0
    width: 13
    height: 6
    tab_name: ''
  - name: " (Copy 4)"
    type: text
    title_text: " (Copy 4)"
    body_text: '[{"type":"h1","children":[{"text":"Economically Disadvantaged Status"}],"align":"center"},{"type":"p","children":[{"text":"Comparison
      of discipline data between the population of students who are Economically Disadantaged
      and those who are not."}],"align":"center","id":"m5vzf"}]'
    rich_content_json: '{"format":"slate"}'
    row: 137
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - title: Economically Disadvantaged Discipline Responses
    name: Economically Disadvantaged Discipline Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.econ_disadvantaged: Economically Disadvantaged
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among Economically Disadvantaged students, the percentage receiving
      each type of discipline response. Responses that resulted in removal are highlighted;
      all other responses are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 153
    col: 2
    width: 9
    height: 6
    tab_name: ''
  - name: "% Students Population with Incidents - Economically Disadvantaged"
    title: "% Students Population with Incidents - Economically Disadvantaged"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of students with documented incidents
      within two groups—economically disadvantaged and non-economically disadvantaged—expressed
      as a percentage of each group’s total population.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.econ_disadvantaged]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.econ_disadvantaged]
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.econ_disadvantaged
        source_field_name: student_demographics.econ_disadvantaged
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
      ELL - students_with_discipline_incidents: "#9B2030"
      Non Homeless - students_with_discipline_incidents: "#A8876C"
      Homeless - students_with_discipline_incidents: "#9B2030"
      Economically Disadvantaged - students_with_discipline_incidents: "#9B2030"
      Non Economically Disadvantaged - students_with_discipline_incidents: "#A8876C"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.econ_disadvantaged]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 139
    col: 13
    width: 11
    height: 6
    tab_name: ''
  - name: "% Student Population with Discipline Response - Economically Disadvantaged"
    title: "% Student Population with Discipline Response - Economically Disadvantaged"
    note_state: collapsed
    note_display: above
    note_text: A comparison of the proportion of Economically Disadvantaged and non-Economically
      Disadvantaged students with incidents, disaggregated by discipline response
      type and calculated out of each group’s total population. Responses resulting
      in removal are shown separately, while all non-removal responses are grouped
      under ‘Other.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.econ_disadvantaged]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.discipline_response,
        discipline_demographics.econ_disadvantaged]
      sorts: [discipline_demographics.discipline_response, discipline_demographics.count_students
          desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.econ_disadvantaged
        source_field_name: student_demographics.econ_disadvantaged
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "% Students", orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: Non Special Ed - students_with_discipline_incidents, name: Non Special
              Ed}, {axisId: students_with_discipline_incidents, id: Special Ed - students_with_discipline_incidents,
            name: Special Ed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Non Special Ed - students_with_discipline_incidents: "#A8876C"
      Special Ed - students_with_discipline_incidents: "#9B2030"
      Non Special Education - students_with_discipline_incidents: "#A8876C"
      Special Education - students_with_discipline_incidents: "#9B2030"
      ELL - students_with_discipline_incidents: "#9B2030"
      Non ELL - students_with_discipline_incidents: "#A8876C"
      Homeless - students_with_discipline_incidents: "#9B2030"
      Non Homeless - students_with_discipline_incidents: "#A8876C"
      Economically Disadvantaged - students_with_discipline_incidents: "#9B2030"
      Non Economically Disadvantaged - students_with_discipline_incidents: "#A8876C"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.econ_disadvantaged]
    sorts: [students_with_discipline_incidents desc 0]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 145
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: "% of Total Incidents - Economically Disadvantaged"
    name: "% of Total Incidents - Economically Disadvantaged"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.econ_disadvantaged]
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Non ELL: "#A8876C"
      ELL: "#9B2030"
      Non Homeless: "#A8876C"
      Homeless: "#9B2030"
      Economically Disadvantaged: "#9B2030"
      Non Economically Disadvantaged: "#A8876C"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to Economically
      Disadvantaged students versus non-Economically Disadvantaged students.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 159
    col: 0
    width: 9
    height: 6
    tab_name: ''
  - title: Non Economically Disadvantaged Responses
    name: Non Economically Disadvantaged Responses
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.discipline_response]
    filters:
      discipline_demographics.econ_disadvantaged: Non Economically Disadvantaged
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Modified Expulsion: "#9B8E20"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among Economically Disadvantaged students, the percentage receiving
      each type of discipline response. Responses that resulted in removal are highlighted;
      all other responses are grouped under 'Other.'
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 153
    col: 13
    width: 9
    height: 6
    tab_name: ''
  - title: "% of Total Incidents by Response - Economically Disadvantaged"
    name: "% of Total Incidents by Response - Economically Disadvantaged"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.econ_disadvantaged]
    pivots: [discipline_demographics.econ_disadvantaged]
    sorts: [discipline_demographics.econ_disadvantaged, discipline_demographics.count
        desc 0]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      ELL - discipline_demographics.count: "#9B2030"
      Non ELL - discipline_demographics.count: "#A8876C"
      Homeless - discipline_demographics.count: "#9B2030"
      Non Homeless - discipline_demographics.count: "#A8876C"
      Economically Disadvantaged - discipline_demographics.count: "#9B2030"
      Non Economically Disadvantaged - discipline_demographics.count: "#A8876C"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by Economically Disadvantaged and
      non-Economically Disadvantaged status.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 159
    col: 9
    width: 15
    height: 6
    tab_name: ''
  - name: "  "
    type: text
    title_text: "  "
    body_text: "------------------------------------------------------"
    row: 165
    col: 0
    width: 24
    height: 1
    tab_name: ''
  - name: " (Copy 5)"
    type: text
    title_text: " (Copy 5)"
    body_text: '[{"type":"h1","children":[{"text":"Gender and Race/Ethnicity"}],"align":"center"},{"type":"p","children":[{"text":"Comparison
      of discipline data by student gender and race/ethnicity. If gender identity
      is not specified, birth gender is used."}],"align":"center","id":"yq4pf"}]'
    rich_content_json: '{"format":"slate"}'
    row: 166
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - title: "% of Total Incidents - Gender"
    name: "% of Total Incidents - Gender"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.gender]
    filters:
      discipline_demographics.gender: Female,Male,Non-Binary
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Female: "#c7318a"
      Male: "#6caff2"
      Non-Binary: "#b388e3"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to students
      by gender.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 175
    col: 0
    width: 9
    height: 6
    tab_name: ''
  - title: Race/Ethnicity Population
    name: Race/Ethnicity Population
    model: ped_public_financials
    explore: student_demographics
    type: looker_bar
    fields: [student_demographics.count, student_demographics.student_race_ethnicity_derived]
    pivots: [student_demographics.student_race_ethnicity_derived]
    filters:
      student_demographics.student_race_ethnicity_derived: "-NULL"
    sorts: [student_demographics.student_race_ethnicity_derived]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Non Special Ed - student_demographics.count,
            id: Non Special Ed - student_demographics.count, name: Non Special Ed},
          {axisId: Special Ed - student_demographics.count, id: Special Ed - student_demographics.count,
            name: Special Ed}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      American Indian/Alaskan Native - student_demographics.count: "#b09f16"
      Asian - student_demographics.count: "#dd7330"
      Black or African American - student_demographics.count: "#d9c202"
      Caucasian - student_demographics.count: "#698c46"
      Hispanic - student_demographics.count: "#068993"
      Middle Eastern or North African - student_demographics.count: "#9B2030"
      Multi-Racial - student_demographics.count: "#e39520"
      Native Hawaiian or Other Pacific Islander - student_demographics.count: "#c75a31"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Percentage of race/ethnicity out of total student population.
    listen:
      School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 181
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: Discipline Responses by Gender
    name: Discipline Responses by Gender
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_donut_multiples
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.gender]
    pivots: [discipline_demographics.discipline_response]
    filters:
      discipline_demographics.gender: Female,Male,Non-Binary
    sorts: [discipline_demographics.discipline_response, discipline_demographics.gender]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Expulsion - discipline_demographics.count: "#F2C73C"
      Modified Expulsion - discipline_demographics.count: "#9B8E20"
      Other - discipline_demographics.count: "#A85573"
      Out of School Suspension - discipline_demographics.count: "#F15922"
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among students who had incidents, the percentage receiving each type
      of discipline response by gender. Responses that resulted in removal are highlighted;
      all other responses are grouped under ‘Other.’
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 168
    col: 0
    width: 24
    height: 7
    tab_name: ''
  - title: "% of Total Incidents by Response - Gender"
    name: "% of Total Incidents by Response - Gender"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.gender]
    pivots: [discipline_demographics.gender]
    filters:
      discipline_demographics.gender: Female,Male,Non-Binary
    sorts: [discipline_demographics.gender, discipline_demographics.count desc 0]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      ELL - discipline_demographics.count: "#9B2030"
      Non ELL - discipline_demographics.count: "#A8876C"
      Homeless - discipline_demographics.count: "#9B2030"
      Non Homeless - discipline_demographics.count: "#A8876C"
      Economically Disadvantaged - discipline_demographics.count: "#9B2030"
      Non Economically Disadvantaged - discipline_demographics.count: "#A8876C"
      Non-Binary - discipline_demographics.count: "#b388e3"
      Female - discipline_demographics.count: "#c7318a"
      Male - discipline_demographics.count: "#6caff2"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by gender.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 175
    col: 9
    width: 15
    height: 6
    tab_name: ''
  - name: "% Students Population with Incidents - Race/Ethnicity"
    title: "% Students Population with Incidents - Race/Ethnicity"
    note_state: collapsed
    note_display: above
    note_text: The proportion of students with documented incidents within each race/ethnicity
      group expressed as a percentage of each group’s total population.
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.student_race_ethnicity_derived]
      filters:
        student_demographics.student_race_ethnicity_derived: American Indian/Alaskan
          Native,Asian,Black or African American,Caucasian,Hispanic,Middle Eastern
          or North African,Multi-Racial,Native Hawaiian or Other Pacific Islander
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.student_race_ethnicity_derived]
      filters:
        discipline_demographics.student_race_ethnicity_derived: American Indian/Alaskan
          Native,Asian,Black or African American,Caucasian,Hispanic,Multi-Racial,Native
          Hawaiian or Other Pacific Islander
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.student_race_ethnicity_derived
        source_field_name: student_demographics.student_race_ethnicity_derived
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: students_with_discipline_incidents,
            id: students_with_discipline_incidents, name: "% Students with Discipline\
              \ Incidents"}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [student_demographics.count, discipline_demographics.count_students]
    type: looker_column
    hidden_pivots: {}
    pivots: [student_demographics.student_race_ethnicity_derived]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 189
    col: 0
    width: 24
    height: 10
    tab_name: ''
  - title: Discipline Responses by Race/Ethnicity
    name: Discipline Responses by Race/Ethnicity
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_donut_multiples
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.student_race_ethnicity_derived]
    pivots: [discipline_demographics.discipline_response]
    filters:
      discipline_demographics.student_race_ethnicity_derived: American Indian/Alaskan
        Native,Asian,Black or African American,Caucasian,Hispanic,Multi-Racial,Native
        Hawaiian or Other Pacific Islander
    sorts: [discipline_demographics.discipline_response, discipline_demographics.count
        desc 0]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    charts_across: 3
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      Non Special Education: "#A8876C"
      Special Education: "#9B2030"
      Expulsion: "#F2C73C"
      Expulsion - discipline_demographics.count: "#F2C73C"
      Modified Expulsion - discipline_demographics.count: "#9B8E20"
      Other - discipline_demographics.count: "#A85573"
      Out of School Suspension - discipline_demographics.count: "#F15922"
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Among students who had incidents, the percentage receiving each type
      of discipline response by race/ethnicity. Responses that resulted in removal
      are highlighted; all other responses are grouped under ‘Other.’
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 199
    col: 0
    width: 24
    height: 21
    tab_name: ''
  - title: "% of Total Incidents by Response - Race/Ethnicity"
    name: "% of Total Incidents by Response - Race/Ethnicity"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_bar
    fields: [discipline_demographics.count, discipline_demographics.discipline_response,
      discipline_demographics.student_race_ethnicity_derived]
    pivots: [discipline_demographics.student_race_ethnicity_derived]
    filters:
      discipline_demographics.student_race_ethnicity_derived: American Indian/Alaskan
        Native,Asian,Black or African American,Caucasian,Hispanic,Native Hawaiian
        or Other Pacific Islander,Multi-Racial
    sorts: [discipline_demographics.student_race_ethnicity_derived, discipline_demographics.count
        desc 0]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Non Special Education - discipline_demographics.count: "#A8876C"
      Special Education - discipline_demographics.count: "#9B2030"
      ELL - discipline_demographics.count: "#9B2030"
      Non ELL - discipline_demographics.count: "#A8876C"
      Homeless - discipline_demographics.count: "#9B2030"
      Non Homeless - discipline_demographics.count: "#A8876C"
      Economically Disadvantaged - discipline_demographics.count: "#9B2030"
      Non Economically Disadvantaged - discipline_demographics.count: "#A8876C"
      Non-Binary - discipline_demographics.count: "#b388e3"
      Female - discipline_demographics.count: "#c7318a"
      Male - discipline_demographics.count: "#6caff2"
      American Indian/Alaskan Native - discipline_demographics.count: "#b09f16"
      Asian - discipline_demographics.count: "#dd7330"
      Black or African American - discipline_demographics.count: "#d9c202"
      Caucasian - discipline_demographics.count: "#698c46"
      Hispanic - discipline_demographics.count: "#068993"
      Multi-Racial - discipline_demographics.count: "#e39520"
      Native Hawaiian or Other Pacific Islander - discipline_demographics.count: "#c75a31"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: A comparison of the distribution of discipline response types issued
      to students with incidents, disaggregated by race/ethnicity.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 228
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: "% of Total Incidents - Race/Ethnicity"
    name: "% of Total Incidents - Race/Ethnicity"
    model: ped_public_financials
    explore: discipline_demographics
    type: looker_pie
    fields: [discipline_demographics.count, discipline_demographics.student_race_ethnicity_derived]
    filters:
      discipline_demographics.student_race_ethnicity_derived: American Indian/Alaskan
        Native,Asian,Black or African American,Caucasian,Hispanic,Multi-Racial,Native
        Hawaiian or Other Pacific Islander
    sorts: [discipline_demographics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
        reverse: false
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Non Special Education
              - discipline_demographics.count, id: Non Special Education - discipline_demographics.count,
            name: Non Special Education}, {axisId: Special Education - discipline_demographics.count,
            id: Special Education - discipline_demographics.count, name: Special Education}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: percent
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The proportion of total incidents that were attributed to students
      by race/ethnicity.
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 220
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - name: Risk Ratio - Race/Ethnicity
    title: Risk Ratio - Race/Ethnicity
    note_state: collapsed
    note_display: above
    note_text: A risk ratio is a measure of the risk of a certain event happening
      in one group compared to the risk of the same event happening in all others
      not in that group. For example the Hispanic bar on this risk ratio chart compares
      the percentage of Hispanic students who have incidents to the percentage of
      non-Hispanic students with incidents. Greater than 1 means the group is more
      likely to have an incident, less than 1 means that they are less likely to have
      an incident.
    merged_queries:
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.school_year, discipline_demographics.student_race_ethnicity_derived,
        discipline_demographics.count]
      filters:
        discipline_demographics.student_race_ethnicity_derived: American Indian/Alaskan
          Native,Asian,Black or African American,Caucasian,Hispanic,Multi-Racial,Native
          Hawaiian or Other Pacific Islander
      sorts: [discipline_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count, discipline_demographics.school_year]
      sorts: [discipline_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.school_year
        source_field_name: discipline_demographics.school_year
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.school_year, student_demographics.student_race_ethnicity_derived,
        student_demographics.count]
      filters:
        student_demographics.student_race_ethnicity_derived: American Indian/Alaskan
          Native,Asian,Black or African American,Caucasian,Hispanic,Middle Eastern
          or North African,Multi-Racial,Native Hawaiian or Other Pacific Islander
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: student_demographics.school_year
        source_field_name: discipline_demographics.school_year
      - field_name: student_demographics.student_race_ethnicity_derived
        source_field_name: discipline_demographics.student_race_ethnicity_derived
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.school_year, student_demographics.count]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: student_demographics.school_year
        source_field_name: discipline_demographics.school_year
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      Hispanic - risk_ratio: "#068993"
      Caucasian - risk_ratio: "#698c46"
      American Indian/Alaskan Native - risk_ratio: "#b09f16"
      Black or African American - risk_ratio: "#d9c202"
      Multi-Racial - risk_ratio: "#e39520"
      Asian - risk_ratio: "#dd7330"
      Native Hawaiian or Other Pacific Islander - risk_ratio: "#c75a31"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [discipline_demographics.count, q1_discipline_demographics.count,
      student_demographics.count, q3_student_demographics.count]
    hidden_pivots: {}
    type: looker_column
    pivots: [discipline_demographics.student_race_ethnicity_derived]
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "if(${student_demographics.count}>10, \n    (${discipline_demographics.count}/${student_demographics.count})/\n\
        \t((${q1_discipline_demographics.count}-${discipline_demographics.count})/(${q3_student_demographics.count}-${student_demographics.count})),\
        \ 0)"
      label: Risk Ratio
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: risk_ratio
      _type_hint: number
    listen:
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    row: 236
    col: 0
    width: 24
    height: 8
    tab_name: ''
  - title: 'Students by # Incidents'
    name: 'Students by # Incidents'
    model: ped_public_financials
    explore: discipline_incident_rollup
    type: looker_column
    fields: [discipline_incident_rollup.student_count, discipline_incident_rollup.incident_count_range]
    sorts: [discipline_incident_rollup.student_count desc 0]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 364b5000-be28-40e9-a495-81343e4830d5
      options:
        steps: 5
        reverse: false
    series_colors: {}
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Students with discipline incidents correlated with the number of incidents
      they incurred over the year.
    listen:
      School Year: discipline_incident_rollup.school_year
      District Name: discipline_incident_rollup.district_name
      School Name: discipline_incident_rollup.school_name
    row: 16
    col: 3
    width: 18
    height: 6
    tab_name: ''
  - title: Total In School Suspension Days
    name: Total In School Suspension Days
    model: ped_public_financials
    explore: discipline_demographics
    type: single_value
    fields: [discipline_demographics.discipline_response_duration]
    filters:
      discipline_demographics.discipline_response: In School Suspension
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.discipline_response_duration}/${discipline_demographics.count}"
      label: Average Suspension Duration
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: average_suspension_duration
      _type_hint: number
      is_disabled: true
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
    y_axes: [{label: Average Suspension Duration in Days, orientation: bottom, series: [
          {axisId: average_suspension_duration, id: In school suspension - average_suspension_duration,
            name: In school suspension}, {axisId: average_suspension_duration, id: Out
              of school suspension - average_suspension_duration, name: Out of school
              suspension}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      In school suspension - average_suspension_duration: "#068993"
      Out of school suspension - average_suspension_duration: "#F15922"
      In School Suspension - average_suspension_duration: "#068993"
      Out of School Suspension - average_suspension_duration: "#F15922"
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 47
    col: 8
    width: 8
    height: 2
    tab_name: ''
  - title: Total Out of School Suspension Days
    name: Total Out of School Suspension Days
    model: ped_public_financials
    explore: discipline_demographics
    type: single_value
    fields: [discipline_demographics.discipline_response_duration]
    filters:
      discipline_demographics.discipline_response: Out of School Suspension
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.discipline_response_duration}/${discipline_demographics.count}"
      label: Average Suspension Duration
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: average_suspension_duration
      _type_hint: number
      is_disabled: true
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
    y_axes: [{label: Average Suspension Duration in Days, orientation: bottom, series: [
          {axisId: average_suspension_duration, id: In school suspension - average_suspension_duration,
            name: In school suspension}, {axisId: average_suspension_duration, id: Out
              of school suspension - average_suspension_duration, name: Out of school
              suspension}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      In school suspension - average_suspension_duration: "#068993"
      Out of school suspension - average_suspension_duration: "#F15922"
      In School Suspension - average_suspension_duration: "#068993"
      Out of School Suspension - average_suspension_duration: "#F15922"
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 47
    col: 16
    width: 8
    height: 2
    tab_name: ''
  - title: 'Students by # Removal Responses'
    name: 'Students by # Removal Responses'
    model: ped_public_financials
    explore: discipline_response_rollup
    type: looker_column
    fields: [discipline_response_rollup.response_count_range, discipline_response_rollup.student_count]
    filters:
      discipline_response_rollup.response_category: Removal
    sorts: [discipline_response_rollup.student_count desc 0]
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
      palette_id: 364b5000-be28-40e9-a495-81343e4830d5
      options:
        steps: 5
        reverse: true
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      1 response: 1 removal
      2 to 5 responses: 2 to 5 removals
      6 to 10 responses: 6 to 10 removals
      11 to 15 responses: 11 to 15 removals
      16+ responses: 16+ removals
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Students with discipline incidents correlated with the number of removal
      responses they incurred over the year.
    listen:
      School Year: discipline_response_rollup.school_year
      District Name: discipline_response_rollup.district_name
      School Name: discipline_response_rollup.school_name
    row: 22
    col: 0
    width: 12
    height: 9
    tab_name: ''
  - title: 'Students by # Removal Days'
    name: 'Students by # Removal Days'
    model: ped_public_financials
    explore: discipline_duration_rollup
    type: looker_column
    fields: [discipline_duration_rollup.response_duration_range, discipline_duration_rollup.student_count]
    filters:
      discipline_duration_rollup.response_category: Removal
    sorts: [discipline_duration_rollup.response_duration_range]
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
      palette_id: 364b5000-be28-40e9-a495-81343e4830d5
      options:
        steps: 5
        reverse: true
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      discipline_duration_rollup.student_count: "#C75A31"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Students with discipline incidents correlated with the number of removal
      days they incurred over the year.
    listen:
      School Year: discipline_duration_rollup.school_year
      District Name: discipline_duration_rollup.district_name
      School Name: discipline_duration_rollup.school_name
    row: 22
    col: 12
    width: 12
    height: 9
    tab_name: ''
  - title: Discipline Incidents
    name: Discipline Incidents
    model: ped_public_financials
    explore: discipline_demographics
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [discipline_demographics.count_students, discipline_demographics.count_incidents,
      discipline_demographics.count_responses]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_discipline_demographics.count_students: "#3A4245"
    show_title_discipline_demographics.count_students: true
    title_override_discipline_demographics.count_students: Students with Discipline
      Incidents
    title_placement_discipline_demographics.count_students: above
    value_format_discipline_demographics.count_students: ''
    style_discipline_demographics.count_incidents: "#3A4245"
    show_title_discipline_demographics.count_incidents: true
    title_override_discipline_demographics.count_incidents: Number of Discipline Incidents
    title_placement_discipline_demographics.count_incidents: above
    value_format_discipline_demographics.count_incidents: ''
    show_comparison_discipline_demographics.count_incidents: false
    title_override_discipline_demographics.count_responses: Number of Discipline Responses
    title_placement_discipline_demographics.count_responses: above
    title_override_discipline_demographics.count: Total Discipline Responses
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hidden_pivots: {}
    listen:
      School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 9
    col: 0
    width: 14
    height: 3
    tab_name: ''
  - name: "% Students with Discipline Removals"
    title: "% Students with Discipline Removals"
    merged_queries:
    - model: ped_public_financials
      explore: student_demographics
      type: table
      fields: [student_demographics.count, student_demographics.school_year]
      sorts: [student_demographics.count desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials
      explore: discipline_demographics
      type: table
      fields: [discipline_demographics.count_students, discipline_demographics.school_year]
      filters:
        discipline_demographics.discipline_category: Removal
      sorts: [discipline_demographics.count_students desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: discipline_demographics.school_year
        source_field_name: student_demographics.school_year
    hidden_fields: [student_demographics.school_year, student_demographics.count,
      discipline_demographics.count_students]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${discipline_demographics.count_students}/${student_demographics.count}"
      label: "% Students with Discipline Incidents"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: students_with_discipline_incidents
      _type_hint: number
    listen:
    - School Year: student_demographics.school_year
      District Name: student_demographics.district_name
      School Name: student_demographics.school_name
    - School Year: discipline_demographics.school_year
      District Name: discipline_demographics.district_name
      School Name: discipline_demographics.school_name
    row: 12
    col: 7
    width: 7
    height: 4
    tab_name: ''
  filters:
  - name: School Year
    title: School Year
    type: field_filter
    default_value: 2024-2025
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials
    explore: student_demographics
    listens_to_filters: []
    field: student_demographics.school_year
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: ped_public_financials
    explore: student_demographics
    listens_to_filters: []
    field: student_demographics.district_name
  - name: School Name
    title: School Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: ped_public_financials
    explore: student_demographics
    listens_to_filters: [District Name]
    field: student_demographics.school_name
