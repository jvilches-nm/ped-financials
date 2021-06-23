view: budget {
  sql_table_name: dbo.Budget ;;

  dimension: 925_fclosed {
    type: string
    hidden: yes
    sql: ${TABLE}."925FClosed" ;;
  }

  dimension: actuals_closed {
    type: string
    hidden: yes
    sql: ${TABLE}.ActualsClosed ;;
  }

  dimension: bars_closed {
    type: string
    hidden: yes
    sql: ${TABLE}.BARsClosed ;;
  }

  dimension: fk_budget_status {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetStatus ;;
  }

  dimension: fk_budget_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetYear ;;
  }

  dimension: fk_coa {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCOA ;;
  }

  dimension: fk_entity_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkEntityYear ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: maintenance_bars_closed {
    type: string
    hidden: yes
    sql: ${TABLE}.MaintenanceBARsClosed ;;
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

  dimension: name {
    type: string
    hidden: yes
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_budget {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkBudget ;;
  }

  dimension: reimbursements_closed {
    type: string
    hidden: yes
    sql: ${TABLE}.ReimbursementsClosed ;;
  }

}
