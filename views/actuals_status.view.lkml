view: actuals_status {
  sql_table_name: Actuals.ActualsStatus ;;

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

  dimension: pk_actuals_status {
    type: number
    sql: ${TABLE}.pkActualsStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
