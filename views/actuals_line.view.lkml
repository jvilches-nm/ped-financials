view: actuals_line {
  sql_table_name: Actuals.ActualsLine ;;
  label: "Spending"

set: ucoa_codes {
  fields: [coa_fund_hierarchy.fund_code, coa_fund_hierarchy.fund_name, coa_object_hierarchy.object_code,
           coa_object_hierarchy.object_name, coa_function_hierarchy.function_code, coa_function_hierarchy.function_name, coa_job_class.job_code,
           coa_job_class.job_name, coa_program_hierarchy.program_code, coa_program_hierarchy.program_name, amount]
}

  measure: amount {
    type: sum
    label: "Actual Expenditures"
    description: "Actual amount spent"
    value_format: "$#,##0"
    sql: ${TABLE}.Amount ;;
    drill_fields: [ucoa_codes*]
  }
  dimension_group: effective {
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
    sql: ${TABLE}.EffectiveDate ;;
  }
  measure: encumbrance {
    type: sum
    description: "Actual encumbrance - amounts promised but not yet actually paid"
    hidden: no
    value_format: "$#,##0"
    sql: ${TABLE}.Encumbrance ;;
  }
  dimension_group: entry {
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
    sql: ${TABLE}.EntryDate ;;
  }
  dimension: fk_actuals_budget_period {
    type: number
    hidden: yes
    sql: ${TABLE}.fkActualsBudgetPeriod ;;
  }

  dimension: fk_coa_line {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaLine ;;
  }

  dimension: fk_location {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocation ;;
  }

  dimension: fk_location_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocationYear ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  measure: fte {
    type: sum
    label: "FTE"
    description: "Full Time Equivalent positions corresponding to the amount spent"
    sql: ${TABLE}.FTE ;;
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

  dimension: pk_actuals_line {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.pkActualsLine ;;
  }

  measure: current_as_of {
    type: date
    label: "Data Current As Of"
    sql: MAX(${modified_date}) ;;
  }

  measure: ytdamount {
    type: sum
    hidden:  yes
    sql: ${TABLE}.YTDAmount ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
