view: discipline_incident_rollup {
  derived_table: {
    sql: select school_year, district_code, district_name, school_code, school_name,
            case when student_incident_count=1 then '1 incident'
                 when (student_incident_count>1 and student_incident_count<=5) then '2 to 5 incidents'
                 when (student_incident_count>5 and student_incident_count<=10) then '6 to 10 incidents'
                 when (student_incident_count>10 and student_incident_count<=15) then '11 to 15 incidents'
                 else '16+ incidents' end incident_count_range, count(student_id) student_count
            from looker.discipline_incident_rollup
           group by school_year, district_code, district_name, school_code, school_name,
            case when student_incident_count=1 then '1 incident'
                 when (student_incident_count>1 and student_incident_count<=5) then '2 to 5 incidents'
                 when (student_incident_count>5 and student_incident_count<=10) then '6 to 10 incidents'
                 when (student_incident_count>10 and student_incident_count<=15) then '11 to 15 incidents'
                 else '16+ incidents' end
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

  dimension: incident_count_range {
    type: string
    order_by_field: incident_count_range_order
    sql: ${TABLE}.incident_count_range;;
  }

  dimension: incident_count_range_order {
    type: number
    hidden:  yes
    sql: case left(${TABLE}.incident_count_range, 2) when '1 ' then 1
              when '2 ' then 2
              when '6 ' then 3
              when '11' then 4
              else 5 end;;
  }


  measure: student_count {
    description: "Students with incidents"
    type: sum
    sql: ${TABLE}.student_count ;;
  }

}
