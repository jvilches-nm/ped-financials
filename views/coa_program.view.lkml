view: coa_program {
  sql_table_name: COA.CoaProgram ;;

  dimension: budgetable {
    type: string
    sql: ${TABLE}.Budgetable ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: fk_coa_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaType ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: fk_parent_program {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentProgram ;;
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
    sql: ${TABLE}.Name ;;
  }

  dimension: not_in_use {
    type: string
    sql: ${TABLE}.NotInUse ;;
  }

  dimension: parent_type {
    type: string
    sql: ${TABLE}.ParentType ;;
  }

  dimension: pk_coa_program {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaProgram ;;
  }

  dimension: postable {
    type: string
    sql: ${TABLE}.Postable ;;
  }

  dimension: summary_line {
    type: string
    sql: ${TABLE}.SummaryLine ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
