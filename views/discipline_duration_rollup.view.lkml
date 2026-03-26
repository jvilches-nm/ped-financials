view: discipline_duration_rollup {
  derived_table: {
    sql: select school_year, district_code, district_name, school_code, school_name, discipline_category,
            case when student_response_duration<=1 then '1 day'
                 when (student_response_duration>1 and student_response_duration<=5) then '2 to 5 days'
                 when (student_response_duration>5 and student_response_duration<=10) then '6 to 10 days'
                 when (student_response_duration>10 and student_response_duration<=15) then '11 to 15 days'
                 else '16+ days' end response_duration_range, count(student_id) student_count
            from looker.discipline_response_rollup
           group by school_year, district_code, district_name, school_code, school_name, discipline_category,
            case when student_response_duration<=1 then '1 day'
                 when (student_response_duration>1 and student_response_duration<=5) then '2 to 5 days'
                 when (student_response_duration>5 and student_response_duration<=10) then '6 to 10 days'
                 when (student_response_duration>10 and student_response_duration<=15) then '11 to 15 days'
                 else '16+ days' end
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

  dimension: response_duration_range {
    type: string
    order_by_field: response_duration_range_order
    sql: ${TABLE}.response_duration_range;;
  }

  dimension: response_duration_range_order {
    type: number
    hidden:  yes
    sql: case left(${TABLE}.response_duration_range, 2) when '1 ' then 1
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

}
