view: discipline_school_demographics {
  sql_table_name: looker.discipline_school_demographics ;;

  dimension: demographic {
    type: string
    sql: ${TABLE}.demographic ;;
  }
  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.district_code ;;
  }
  dimension: location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.location_code ;;
  }
  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }
  measure: student_infractions {
    type: sum
    sql: ${TABLE}.student_infractions ;;
  }
  measure: students {
    type: sum
    sql: ${TABLE}.students ;;
  }
  measure: students_with_infractions {
    type: sum
    sql: ${TABLE}.students_with_infractions ;;
  }

}
