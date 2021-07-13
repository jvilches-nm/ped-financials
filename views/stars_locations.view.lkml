view: stars_locations {
  sql_table_name: looker.stars_locations ;;

  dimension: location_identity  {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.location_identity ;;
  }
  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    hidden: yes
    sql: ${TABLE}.district_name ;;
  }

  dimension: district_type {
    type: string
    hidden: yes
    sql: ${TABLE}.district_type ;;
  }

  measure: g10_pop {
    type: sum
    sql: ${TABLE}.g10_pop ;;
  }

  measure: g11_pop {
    type: sum
    sql: ${TABLE}.g11_pop ;;
  }

  measure: g12_pop {
    type: sum
    sql: ${TABLE}.g12_pop ;;
  }

  measure: g1_pop {
    type: sum
    sql: ${TABLE}.g1_pop ;;
  }

  measure: g2_pop {
    type: sum
    sql: ${TABLE}.g2_pop ;;
  }

  measure: g3_pop {
    type: sum
    sql: ${TABLE}.g3_pop ;;
  }

  measure: g4_pop {
    type: sum
    sql: ${TABLE}.g4_pop ;;
  }

  measure: g5_pop {
    type: sum
    sql: ${TABLE}.g5_pop ;;
  }

  measure: g6_pop {
    type: sum
    sql: ${TABLE}.g6_pop ;;
  }

  measure: g7_pop {
    type: sum
    sql: ${TABLE}.g7_pop ;;
  }

  measure: g8_pop {
    type: sum
    sql: ${TABLE}.g8_pop ;;
  }

  measure: g9_pop {
    type: sum
    sql: ${TABLE}.g9_pop ;;
  }

  dimension: grade_range {
    type: string
    sql: ${TABLE}.grade_range ;;
  }

  measure: kf_pop {
    type: sum
    sql: ${TABLE}.kf_pop ;;
  }

  measure: kn_pop {
    type: sum
    sql: ${TABLE}.kn_pop ;;
  }

  dimension: location_address {
    type: string
    sql: ${TABLE}.location_address ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.location_code ;;
  }

  dimension: location_county {
    type: string
    sql: ${TABLE}.location_county ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_latitude {
    type: string
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: string
    sql: ${TABLE}.location_longitude ;;
  }

  dimension: map_location {
    type: location
    sql_latitude:${location_latitude} ;;
    sql_longitude:${location_longitude} ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: location_phone {
    type: string
    sql: ${TABLE}.location_phone ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.location_state ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: location_website {
    type: string
    sql: ${TABLE}.location_website ;;
  }

  dimension: location_year {
    type: string
    sql: ${TABLE}.location_year ;;
  }

  dimension: location_zip {
    type: string
    sql: ${TABLE}.location_zip ;;
  }

  dimension: nces_district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.nces_district_id ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.nces_school_id ;;
  }

  dimension: obms_code {
    type: string
    hidden: yes
    sql: ${TABLE}.obms_code ;;
  }

  measure: pk_pop {
    type: sum
    sql: ${TABLE}.pk_pop ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.school_level ;;
  }

  dimension: school_level_code {
    type: string
    sql: ${TABLE}.school_level_code ;;
  }

  measure: student_pop {
    type: sum
    sql: ${TABLE}.student_pop ;;
  }
  dimension: student_pop_dim {
    type: number
    hidden: yes
    sql: ${TABLE}.student_pop ;;
  }
  dimension: school_size{
    type: string
    sql: CASE WHEN ${school_level_code}='HS' and ${student_pop_dim}<400 then 'S'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<200 then 'S'
              WHEN ${school_level_code}='HS' and ${student_pop_dim}<1000 then 'M'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<700 then 'M'
              ELSE 'L' END;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, location_name]
  }
}
