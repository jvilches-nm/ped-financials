- dashboard: district_map_test
  title: District Map TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: State Map
    name: State Map
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_map
    fields: [stars_districts.District_Custom_Map_color, stars_districts.total_students]
    filters:
      stars_districts.district_type: State District
      stars_districts.location_year: 2020-2021
    sorts: [stars_districts.total_students desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: traffic_day
    map_position: custom
    map_scale_indicator: metric
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
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 34.27016350693672
    map_longitude: -106.09944596886636
    map_zoom: 7
    map_value_colors: ["#3F6173"]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 1500
    map: auto
    map_projection: ''
    outer_border_width: 1
    inner_border_width: 3
    colors: [blue]
    empty_color: blue
    quantize_colors: true
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 18
    height: 15
  - title: Districts
    name: Districts
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_grid
    fields: [stars_districts.District_Custom_Map]
    filters:
      stars_districts.district_type: State District
      stars_districts.location_year: 2020-2021
    sorts: [stars_districts.District_Custom_Map]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '18'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      stars_districts.District_Custom_Map: Districts
    series_text_format:
      stars_districts.District_Custom_Map:
        align: left
        fg_color: "#000000"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#f4f4ff"
    header_background_color: "#F15922"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: c80fe9b3-6c8e-48c6-891b-c9107bae6f6d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 15
