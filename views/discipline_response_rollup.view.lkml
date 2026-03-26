view: discipline_response_rollup {
  derived_table: {
    sql: select school_year, district_code, district_name, school_code, school_name, discipline_category,
            case when student_response_count=1 then '1 response'
                 when (student_response_count>1 and student_response_count<=5) then '2 to 5 responses'
                 when (student_response_count>5 and student_response_count<=10) then '6 to 10 responses'
                 when (student_response_count>10 and student_response_count<=15) then '11 to 15 responses'
                 else '16+ responses' end response_count_range, count(student_id) student_count, sum(student_response_duration) total_response_duration
            from looker.discipline_response_rollup
           group by school_year, district_code, district_name, school_code, school_name, discipline_category,
            case when student_response_count=1 then '1 response'
                 when (student_response_count>1 and student_response_count<=5) then '2 to 5 responses'
                 when (student_response_count>5 and student_response_count<=10) then '6 to 10 responses'
                 when (student_response_count>10 and student_response_count<=15) then '11 to 15 responses'
                 else '16+ responses' end
       ;;
  }

  dimension: district_code {
    type: string
    description:"Three digit district code"
    sql: ${TABLE}.District_Code ;;
  }
  dimension: district_name {
    type: string
    map_layer_name: my_neighborhood_layer_v2
    description: "District name"
    sql: ${TABLE}.district_name ;;
  }

  dimension: school_code {
    type: string
    description: "Three digit school location code"
    sql: ${TABLE}.school_code ;;
  }
  dimension: school_name {
    type: string
    description: "School name"
    sql: ${TABLE}.school_name + ' (' + ${TABLE}.district_code +'-'+${TABLE}.school_code + ')';;
  }
  dimension: school_year {
    type: string
    description: "School year"
    sql: cast(year(${TABLE}.school_year)-1 as varchar) + '-' + cast(year(${TABLE}.school_year) as varchar);;
  }

  dimension: response_count_range {
    type: string
    order_by_field: response_count_range_order
    sql: ${TABLE}.response_count_range;;
  }

  dimension: response_count_range_order {
    type: number
    hidden:  yes
    sql: case left(${TABLE}.response_count_range, 2) when '1 ' then 1
              when '2 ' then 2
              when '6 ' then 3
              when '11' then 4
              else 5 end;;
  }

  dimension: response_category  {
    description: "Category of response - Removal or Other"
    type: string
    sql: ${TABLE}.discipline_category ;;
  }
  measure: student_count {
    description: "Students with responses"
    type: sum
    sql: ${TABLE}.student_count ;;
  }

  measure: total_response_duration {
    description: "Total discipline response duration"
    type: sum
    sql: ${TABLE}.total_response_duration ;;
  }

}
