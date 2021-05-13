view: coa_account_type {
  sql_table_name: COA.CoaAccountType ;;

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

  dimension: pk_coa_account_type {
    type: number
    hidden:  yes
    primary_key:  yes
    sql: ${TABLE}.pkCoaAccountType ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
