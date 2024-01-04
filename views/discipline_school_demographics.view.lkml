view: discipline_school_demographics {
  sql_table_name: looker.discipline_school_demographics ;;

  dimension: demographic {
    type: string
    order_by_field: demographic_sort
    sql: case ${TABLE}.demographic
         when 'Homeless eligible and served under McKenny Vento Funds' then 'Homeless'
         when 'Homeless eligible and not served under McKenny Vento Funds' then 'Homeless'
         when 'Student is not homeless' then 'Not Homeless'
         when 'SNAP Direct Cert' then 'Economically Disadvantaged'
         when 'OTHER Direct Cert' then 'Economically Disadvantaged'
         when 'Family Members of SNAP identified' then 'Economically Disadvantaged'
         else ${TABLE}.demographic end ;;
  }

  dimension: demographic_sort {
    type: number
    sql: case ${demographic} when 'PK' then 0
                                   when 'KF' then 1
                                   when '01' then 2
                                   when '02' then 3
                                   when '03' then 4
                                   when '04' then 5
                                   when '05' then 6
                                   when '06' then 7
                                   when '07' then 8
                                   when '08' then 9
                                   when '09' then 10
                                   when '10' then 11
                                   when '11' then 12
                                   when '12' then 13
                                   when 'Economically Disadvantaged' then 1
                                   when 'Not Economically Disadvantaged' then 2
                                   when 'Homeless' then 1
                                   when 'Not Homeless' then 2
                                   when 'Female' then 1
                                   when 'Male' then 2
                                   when 'Non-Binary' then 3
                                   when 'English Learner' then 1
                                   when 'Non English Learner' then 2
                                   when 'Regular Education and Gifted only Students' then 1
                                   when 'Students with disabilities' then 2
                                   when 'American Indian/Alaskan Native' then 1
                                   when 'Asian' then 2
                                   when 'Black or African American' then 3
                                   when 'Caucasian' then 4
                                   when 'Hispanic' then 5
                                   when 'Multiracial' then 6
                                   when 'Native Hawaiian or Other Pacific Islander' then 7
                                   else 0 end;;
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
