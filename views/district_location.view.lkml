view: district_location {
  sql_table_name: looker.district_location ;;

  dimension: address_line {
    type: string
    sql: ${TABLE}.address_line ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }
  dimension: district_code {
    type: string
    sql: ${TABLE}.district_code ;;
  }
  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }
  dimension: district_organization_type {
    type: string
    sql: ${TABLE}.district_organization_type ;;
  }
  dimension_group: location_close {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.location_close_date ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }
  dimension: location_latitude {
    type: string
    sql: ${TABLE}.location_latitude ;;
  }
  dimension: location_locale {
    type: string
    sql: ${TABLE}.location_locale ;;
  }
  dimension: location_longitude {
    type: string
    sql: ${TABLE}.location_longitude ;;
  }
  dimension_group: location_open {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.location_open_date ;;
  }
  dimension: location_organization_type {
    type: string
    sql: ${TABLE}.location_organization_type ;;
  }
  dimension: location_status {
    type: string
    sql: ${TABLE}.location_status ;;
  }
  dimension: location_web_site {
    type: string
    sql: ${TABLE}.location_web_site ;;
  }
  dimension: school_level {
    type: string
    sql: ${TABLE}.school_level ;;
  }
  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }
  dimension: school_year {
    type: string
    sql: ${TABLE}.school_year ;;
  }
  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }
  dimension: title_i_status {
    type: string
    sql: ${TABLE}.title_i_status ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
  measure: count {
    type: count
    drill_fields: [district_name, school_name, county_name]
  }
}
