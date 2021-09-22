view: budget_expenditures_line {
  sql_table_name: dbo.BudgetLine ;;
  label: "Budgeted Expenditures"

  set: ucoa_codes {
    fields: [coa_fund_hierarchy.fund_code, coa_fund_hierarchy.fund_name, coa_object_hierarchy.object_code,
      coa_object_hierarchy.object_name, coa_function_hierarchy.function_code, coa_function_hierarchy.function_name, coa_job_class.job_code,
      coa_job_class.job_name, coa_program_hierarchy.program_code, coa_program_hierarchy.program_name, budget_amount]
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
    label: "Initial Amount"
    type: sum
    hidden: yes
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

  measure: budget_amount {
    type: sum
    label: "Budgeted Expenditures"
    value_format: "$#,##0"
    sql: ${TABLE}.ProjectedAmt ;;
    drill_fields: [ucoa_codes*]
  }

  dimension: budget_fte {
    type: number
    label: "FTE"
    description: "Full Time Equivalent"
    sql: ${TABLE}.ProjectedFTE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
