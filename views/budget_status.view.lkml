view: budget_status {
  sql_table_name: dbo.BudgetStatus ;;

  dimension: code {
    type: string
    hidden: yes
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    hidden: yes
    sql: ${TABLE}.Description ;;
  }

  dimension: exportable {
    type: string
    hidden: yes
    sql: ${TABLE}.Exportable ;;
  }

  dimension: fk_primary_event {
    type: number
    hidden: yes
    sql: ${TABLE}.fkPrimaryEvent ;;
  }

  dimension: fk_secondary_event {
    type: number
    hidden: yes
    sql: ${TABLE}.fkSecondaryEvent ;;
  }

  dimension: importable {
    type: string
    hidden: yes
    sql: ${TABLE}.Importable ;;
  }

  dimension: name {
    type: string
    hidden: yes
    label: "Budget Status"
    description: "Description of the budget status"
    sql: ${TABLE}.Name ;;
  }

  dimension: ordinal {
    type: number
    hidden: yes
    sql: ${TABLE}.Ordinal ;;
  }

  dimension: pk_budget_status {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkBudgetStatus ;;
  }

  dimension: track_line_changes {
    type: string
    hidden: yes
    sql: ${TABLE}.TrackLineChanges ;;
  }

}
