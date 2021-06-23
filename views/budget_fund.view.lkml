view: budget_fund {
  sql_table_name: dbo.BudgetFund ;;

  dimension: cash_balance_prev_year {
    type: string
    hidden: yes
    sql: ${TABLE}.CashBalancePrevYear ;;
  }

  dimension: fk_budget {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudget ;;
  }

  dimension: fk_coa_fund {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaFund ;;
  }

  dimension: fk_fund_status {
    type: number
    hidden: yes
    sql: ${TABLE}.fkFundStatus ;;
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

  dimension: modify_comment {
    type: string
    hidden: yes
    sql: ${TABLE}.ModifyComment ;;
  }

  dimension: pk_budget_fund {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkBudgetFund ;;
  }

}
