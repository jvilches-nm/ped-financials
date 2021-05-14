view: actuals_line {
  sql_table_name: Actuals.ActualsLine ;;

  measure: amount {
    type: sum
    sql: ${TABLE}.Amount ;;
  }

  measure: operational_amount {
    type: sum
    filters: {field: coa_object_hierarchy.parent_object_code value: "1000"}
    sql: ${TABLE}.Amount ;;
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

  dimension: encumbrance {
    type: string
    hidden: yes
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

  dimension: fte {
    type: number
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

  measure: ytdamount {
    type: sum
    hidden:  yes
    sql: ${TABLE}.YTDAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
