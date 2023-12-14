view: school_discipline_demographics {
  sql_table_name: looker.school_discipline_demographics ;;

  measure: asian_infractions {
    type: sum
    sql: ${TABLE}.asian_infractions ;;
  }
  measure: asian_students {
    type: sum
    sql: ${TABLE}.asian_students ;;
  }
  measure: asians_with_infractions {
    type: sum
    sql: ${TABLE}.asians_with_infractions ;;
  }
  measure: black_infractions {
    type: sum
    sql: ${TABLE}.black_infractions ;;
  }
  measure: black_students {
    type: sum
    sql: ${TABLE}.black_students ;;
  }
  measure: blacks_with_infractions {
    type: sum
    sql: ${TABLE}.blacks_with_infractions ;;
  }
  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.district_code ;;
  }
  measure: english_learner_infractions {
    type: sum
    sql: ${TABLE}.english_learner_infractions ;;
  }
  measure: english_learner_students {
    type: sum
    sql: ${TABLE}.english_learner_students ;;
  }
  measure: english_learners_with_infractions {
    type: sum
    sql: ${TABLE}.english_learners_with_infractions ;;
  }
  measure: female_infractions {
    type: sum
    sql: ${TABLE}.female_infractions ;;
  }
  measure: female_students {
    type: sum
    sql: ${TABLE}.female_students ;;
  }
  measure: females_with_infractions {
    type: sum
    sql: ${TABLE}.females_with_infractions ;;
  }
  measure: g10_infractions {
    type: sum
    sql: ${TABLE}.g10_infractions ;;
  }
  measure: g10_students {
    type: sum
    sql: ${TABLE}.g10_students ;;
  }
  measure: g10_with_infractions {
    type: sum
    sql: ${TABLE}.g10_with_infractions ;;
  }
  measure: g11_infractions {
    type: sum
    sql: ${TABLE}.g11_infractions ;;
  }
  measure: g11_students {
    type: sum
    sql: ${TABLE}.g11_students ;;
  }
  measure: g11_with_infractions {
    type: sum
    sql: ${TABLE}.g11_with_infractions ;;
  }
  measure: g12_infractions {
    type: sum
    sql: ${TABLE}.g12_infractions ;;
  }
  measure: g12_students {
    type: sum
    sql: ${TABLE}.g12_students ;;
  }
  measure: g12_with_infractions {
    type: sum
    sql: ${TABLE}.g12_with_infractions ;;
  }
  measure: g1_infractions {
    type: sum
    sql: ${TABLE}.g1_infractions ;;
  }
  measure: g1_students {
    type: sum
    sql: ${TABLE}.g1_students ;;
  }
  measure: g1_with_infractions {
    type: sum
    sql: ${TABLE}.g1_with_infractions ;;
  }
  measure: g2_infractions {
    type: sum
    sql: ${TABLE}.g2_infractions ;;
  }
  measure: g2_students {
    type: sum
    sql: ${TABLE}.g2_students ;;
  }
  measure: g2_with_infractions {
    type: sum
    sql: ${TABLE}.g2_with_infractions ;;
  }
  measure: g3_infractions {
    type: sum
    sql: ${TABLE}.g3_infractions ;;
  }
  measure: g3_students {
    type: sum
    sql: ${TABLE}.g3_students ;;
  }
  measure: g3_with_infractions {
    type: sum
    sql: ${TABLE}.g3_with_infractions ;;
  }
  measure: g4_infractions {
    type: sum
    sql: ${TABLE}.g4_infractions ;;
  }
  measure: g4_students {
    type: sum
    sql: ${TABLE}.g4_students ;;
  }
  measure: g4_with_infractions {
    type: sum
    sql: ${TABLE}.g4_with_infractions ;;
  }
  measure: g5_infractions {
    type: sum
    sql: ${TABLE}.g5_infractions ;;
  }
  measure: g5_students {
    type: sum
    sql: ${TABLE}.g5_students ;;
  }
  measure: g5_with_infractions {
    type: sum
    sql: ${TABLE}.g5_with_infractions ;;
  }
  measure: g6_infractions {
    type: sum
    sql: ${TABLE}.g6_infractions ;;
  }
  measure: g6_students {
    type: sum
    sql: ${TABLE}.g6_students ;;
  }
  measure: g6_with_infractions {
    type: sum
    sql: ${TABLE}.g6_with_infractions ;;
  }
  measure: g7_infractions {
    type: sum
    sql: ${TABLE}.g7_infractions ;;
  }
  measure: g7_students {
    type: sum
    sql: ${TABLE}.g7_students ;;
  }
  measure: g7_with_infractions {
    type: sum
    sql: ${TABLE}.g7_with_infractions ;;
  }
  measure: g8_infractions {
    type: sum
    sql: ${TABLE}.g8_infractions ;;
  }
  measure: g8_students {
    type: sum
    sql: ${TABLE}.g8_students ;;
  }
  measure: g8_with_infractions {
    type: sum
    sql: ${TABLE}.g8_with_infractions ;;
  }
  measure: g9_infractions {
    type: sum
    sql: ${TABLE}.g9_infractions ;;
  }
  measure: g9_students {
    type: sum
    sql: ${TABLE}.g9_students ;;
  }
  measure: g9_with_infractions {
    type: sum
    sql: ${TABLE}.g9_with_infractions ;;
  }
  measure: hispanic_infractions {
    type: sum
    sql: ${TABLE}.hispanic_infractions ;;
  }
  measure: hispanic_students {
    type: sum
    sql: ${TABLE}.hispanic_students ;;
  }
  measure: hispanics_with_infractions {
    type: sum
    sql: ${TABLE}.hispanics_with_infractions ;;
  }
  measure: homeless_infractions {
    type: sum
    sql: ${TABLE}.homeless_infractions ;;
  }
  measure: homeless_students {
    type: sum
    sql: ${TABLE}.homeless_students ;;
  }
  measure: homeless_with_infractions {
    type: sum
    sql: ${TABLE}.homeless_with_infractions ;;
  }
  measure: islander_infractions {
    type: sum
    sql: ${TABLE}.islander_infractions ;;
  }
  measure: islander_students {
    type: sum
    sql: ${TABLE}.islander_students ;;
  }
  measure: islanders_with_infractions {
    type: sum
    sql: ${TABLE}.islanders_with_infractions ;;
  }
  measure: kf_infractions {
    type: sum
    sql: ${TABLE}.kf_infractions ;;
  }
  measure: kf_students {
    type: sum
    sql: ${TABLE}.kf_students ;;
  }
  measure: kf_with_infractions {
    type: sum
    sql: ${TABLE}.kf_with_infractions ;;
  }
  dimension: location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.location_code ;;
  }
  measure: male_infractions {
    type: sum
    sql: ${TABLE}.male_infractions ;;
  }
  measure: male_students {
    type: sum
    sql: ${TABLE}.male_students ;;
  }
  measure: males_with_infractions {
    type: sum
    sql: ${TABLE}.males_with_infractions ;;
  }
  measure: multiracial_infractions {
    type: sum
    sql: ${TABLE}.multiracial_infractions ;;
  }
  measure: multiracial_students {
    type: sum
    sql: ${TABLE}.multiracial_students ;;
  }
  measure: multiracials_with_infractions {
    type: sum
    sql: ${TABLE}.multiracials_with_infractions ;;
  }
  measure: native_infractions {
    type: sum
    sql: ${TABLE}.native_infractions ;;
  }
  measure: native_students {
    type: sum
    sql: ${TABLE}.native_students ;;
  }
  measure: natives_with_infractions {
    type: sum
    sql: ${TABLE}.natives_with_infractions ;;
  }
  measure: other_direct_infractions {
    type: sum
    sql: ${TABLE}.other_direct_infractions ;;
  }
  measure: other_direct_students {
    type: sum
    sql: ${TABLE}.other_direct_students ;;
  }
  measure: other_direct_with_infractions {
    type: sum
    sql: ${TABLE}.other_direct_with_infractions ;;
  }
  measure: pk_infractions {
    type: sum
    sql: ${TABLE}.pk_infractions ;;
  }
  measure: pk_students {
    type: sum
    sql: ${TABLE}.pk_students ;;
  }
  measure: pk_with_infractions {
    type: sum
    sql: ${TABLE}.pk_with_infractions ;;
  }
  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }
  measure: snap_direct_infractions {
    type: sum
    sql: ${TABLE}.snap_direct_infractions ;;
  }
  measure: snap_direct_students {
    type: sum
    sql: ${TABLE}.snap_direct_students ;;
  }
  measure: snap_direct_with_infractions {
    type: sum
    sql: ${TABLE}.snap_direct_with_infractions ;;
  }
  measure: snap_family_infractions {
    type: sum
    sql: ${TABLE}.snap_family_infractions ;;
  }
  measure: snap_family_students {
    type: sum
    sql: ${TABLE}.snap_family_students ;;
  }
  measure: snap_family_with_infractions {
    type: sum
    sql: ${TABLE}.snap_family_with_infractions ;;
  }
  measure: specail_ed_infractions {
    type: sum
    sql: ${TABLE}.specail_ed_infractions ;;
  }
  measure: special_ed_students {
    type: sum
    sql: ${TABLE}.special_ed_students ;;
  }
  measure: special_eds_with_infractions {
    type: sum
    sql: ${TABLE}.special_eds_with_infractions ;;
  }
  measure: student_infractions {
    type: sum
    sql: ${TABLE}.student_infractions ;;
  }
  measure: students_with_infractions {
    type: sum
    sql: ${TABLE}.students_with_infractions ;;
  }
  measure: total_students {
    type: sum
    sql: ${TABLE}.total_students ;;
  }
  measure: white_infractions {
    type: sum
    sql: ${TABLE}.white_infractions ;;
  }
  measure: white_students {
    type: sum
    sql: ${TABLE}.white_students ;;
  }
  measure: whites_with_infractions {
    type: sum
    sql: ${TABLE}.whites_with_infractions ;;
  }

}
