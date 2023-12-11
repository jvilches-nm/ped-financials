view: student_demographics {
  sql_table_name: looker.student_demographics ;;

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
  dimension: location_code {
    type: string
    sql: ${TABLE}.location_code ;;
  }
  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}.race_ethnicity ;;
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
