view: coa_job_class_category {
  sql_table_name: COA.CoaJobClassCategory ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ordinal {
    type: number
    hidden: yes
    sql: ${TABLE}.Ordinal ;;
  }

  dimension: pk_coa_job_class_category {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaJobClassCategory ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
