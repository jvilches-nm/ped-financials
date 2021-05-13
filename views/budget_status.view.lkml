view: budget_status {
  sql_table_name: dbo.BudgetStatus ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: exportable {
    type: string
    sql: ${TABLE}.Exportable ;;
  }

  dimension: fk_primary_event {
    type: number
    sql: ${TABLE}.fkPrimaryEvent ;;
  }

  dimension: fk_secondary_event {
    type: number
    sql: ${TABLE}.fkSecondaryEvent ;;
  }

  dimension: importable {
    type: string
    sql: ${TABLE}.Importable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ordinal {
    type: number
    sql: ${TABLE}.Ordinal ;;
  }

  dimension: pk_budget_status {
    type: number
    sql: ${TABLE}.pkBudgetStatus ;;
  }

  dimension: track_line_changes {
    type: string
    sql: ${TABLE}.TrackLineChanges ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
