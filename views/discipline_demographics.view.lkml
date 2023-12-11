view: discipline_demographics {
  sql_table_name: looker.discipline_demographics ;;

  measure: discipline_count {
    type: sum
    sql: ${TABLE}.discipline_count ;;
  }
  dimension: discipline_response {
    type: string
    sql: ${TABLE}.discipline_response ;;
  }
  dimension: district_code {
    type: string
    sql: ${TABLE}.district_code ;;
  }
  dimension: economically_disadvantaged_status {
    type: string
    sql: ${TABLE}.economically_disadvantaged_status ;;
  }
  dimension: english_learner {
    type: string
    sql: ${TABLE}.english_learner ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: gender_identity {
    type: string
    sql: ${TABLE}.gender_identity ;;
  }
  dimension: grade_level {
    type: string
    sql: ${TABLE}.grade_level ;;
  }
  dimension: homeless_status {
    type: string
    sql: ${TABLE}.homeless_Status ;;
  }
  dimension: infraction {
    type: string
    sql: ${TABLE}.infraction ;;
  }
  dimension: infraction_category {
    type: string
    sql: ${TABLE}.infraction_category ;;
  }
  dimension_group: infraction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.infraction_date ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }
  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}.race_ethnicity ;;
  }
  dimension: response_duration {
    type: number
    sql: ${TABLE}.response_duration ;;
  }
  dimension: response_duration_band {
    type: string
    sql: ${TABLE}.response_duration_band ;;
  }
  measure: response_duration_total {
    type: sum
    sql: ${TABLE}.response_duration_total ;;
  }
  dimension: school_year {
    type: string
    sql: ${TABLE}.school_year ;;
  }
  dimension: special_ed_status {
    type: string
    sql: ${TABLE}.special_ed_status ;;
  }
  measure: student_count {
    type: sum
    sql: ${TABLE}.student_count ;;
  }
}
