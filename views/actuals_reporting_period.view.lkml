view: actuals_reporting_period {
  sql_table_name: Actuals.ActualsReportingPeriod ;;

  dimension: beginning_month {
    type: number
    hidden: yes
    sql: ${TABLE}.BeginningMonth ;;
  }

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

  dimension: ending_month {
    type: number
    hidden: yes
    sql: ${TABLE}.EndingMonth ;;
  }

  dimension: fk_actuals_reporting_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkActualsReportingType ;;
  }

  dimension: last_period {
    type: string
    hidden: yes
    sql: ${TABLE}.LastPeriod ;;
  }

  dimension: ordinal {
    type: number
    hidden: yes
    sql: ${TABLE}.Ordinal ;;
  }

  dimension: pk_actuals_reporting_period {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkActualsReportingPeriod ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
