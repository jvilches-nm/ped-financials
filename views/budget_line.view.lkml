view: budget_line {
  sql_table_name: dbo.BudgetLine ;;
  label: "Revenue"

  measure: adjustment_amount {
    type: sum
    hidden: yes
    sql: ${TABLE}.AdjustmentAmount ;;
  }

  dimension: adjustment_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.AdjustmentFTE ;;
  }

  measure: estimated_amt {
    type: sum
    hidden: yes
    sql: ${TABLE}.EstimatedAmt ;;
  }

  dimension: estimated_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.EstimatedFTE ;;
  }

  measure: final_amount {
    label: "Initial Budget Amount"
    type: sum
    value_format: "$#,##0"
    sql: ${TABLE}.FinalAmount ;;
  }

  dimension: final_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.FinalFTE ;;
  }

  dimension: fk_budget_fund {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetFund ;;
  }

  dimension: fk_coaline {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCOALine ;;
  }

  dimension: fk_location_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocationYear ;;
  }

  dimension: fk_locked_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLockedBy ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden:  yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension_group: locked {
    type: time
    hidden:  yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LockedDate ;;
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

  dimension: pk_budget_line {
    type: number
    primary_key:  yes
    hidden:  yes
    sql: ${TABLE}.pkBudgetLine ;;
  }

  measure: projected_amt {
    type: sum
    label: "Budget Amount"
    value_format: "$#,##0"
    sql: ${TABLE}.ProjectedAmt ;;
  }

  measure: projected_fte {
    type: sum
    label: "FTE"
    description: "Full Time Equivalents"
    sql: ${TABLE}.ProjectedFTE ;;
  }

}
