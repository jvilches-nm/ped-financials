view: budget_line {
  sql_table_name: dbo.BudgetLine ;;
  label: "Budgeted Revenue"

  set: fund_and_object_codes {
    fields: [coa_fund_hierarchy.fund_name, coa_object_hierarchy_revenue.object_name, projected_amt]
  }

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
    hidden: yes
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
    label: "Budgeted Revenue"
    value_format: "$#,##0"
    sql: ${TABLE}.ProjectedAmt ;;
    drill_fields: [fund_and_object_codes*]
  }

  measure: projected_fte {
    type: sum
    label: "FTE"
    description: "Full Time Equivalents"
    sql: ${TABLE}.ProjectedFTE ;;
  }

}
