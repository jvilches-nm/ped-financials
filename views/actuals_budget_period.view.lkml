view: actuals_budget_period {
  sql_table_name: Actuals.ActualsBudgetPeriod ;;

  dimension: cash_total {
    type: string
    hidden:  yes
    sql: ${TABLE}.CashTotal ;;
  }

  dimension: disapproval_reason {
    type: string
    hidden:  yes
    sql: ${TABLE}.DisapprovalReason ;;
  }

  dimension: expenditure_total {
    type: string
    hidden: yes
    sql: ${TABLE}.ExpenditureTotal ;;
  }

  dimension: fk_actuals_reporting_period {
    type: number
    hidden: yes
    sql: ${TABLE}.fkActualsReportingPeriod ;;
  }

  dimension: fk_actuals_status {
    type: number
    hidden: yes
    sql: ${TABLE}.fkActualsStatus ;;
  }

  dimension: fk_budget {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudget ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: ftetotal {
    type: number
    hidden: yes
    sql: ${TABLE}.FTETotal ;;
  }

  dimension_group: modified {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: pk_actuals_budget_period {
    type: number
    primary_key: yes
    hidden:  yes
    sql: ${TABLE}.pkActualsBudgetPeriod ;;
  }

  dimension: revenue_total {
    type: string
    hidden: yes
    sql: ${TABLE}.RevenueTotal ;;
  }

}
