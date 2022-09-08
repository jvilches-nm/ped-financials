view: coa_function_test {
  sql_table_name: coa.CoaFunction ;;

  label: "UCOA Function"

  dimension: pk_coa_function {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafunction ;;
  }

  dimension: fk_coa_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkcoatype ;;
  }

  dimension: function_code {
    type: string
    label: "Function Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: function_name {
    type: string
    label: "Function Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: function_group {
    type: string
    label: "Function Group"
    sql: case left(${function_code}, 2)
        when '10' then 'Classroom'
        when '21' then 'Classroom'
        when '22' then 'Classroom'
        when '23' then 'Central Administration'
        when '24' then 'School Administration'
        when '25' then 'Central Administration'
        when '40' then 'Capital Outlay'
        when '50' then 'Debt Service'
        else 'Other' end;;
    drill_fields: [function_name]
  }

}
