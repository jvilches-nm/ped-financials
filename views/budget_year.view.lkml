view: budget_year {
  sql_table_name: Common.BudgetYear ;;

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EndDate ;;
  }

  dimension: fk_coa {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCOA ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
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

  dimension: pk_budget_year {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkBudgetYear ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.StartDate ;;
  }

  dimension: budget_year {
    type: string
    sql: ${TABLE}.YearName ;;
  }

  measure: count {
    type: count
  }
}
