view: actuals_status {
  sql_table_name: Actuals.ActualsStatus ;;

  dimension: code {
    type: string
    hidden: yes
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    hidden: yes
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    hidden: yes
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_actuals_status {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkActualsStatus ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [name]
  }
}
