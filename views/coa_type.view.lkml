view: coa_type {
  sql_table_name: COA.CoaType ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_coa_type {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaType ;;
  }

}
