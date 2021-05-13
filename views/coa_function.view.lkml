view: coa_function {
  sql_table_name: COA.CoaFunction ;;

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

  dimension: fk_coa_account_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaAccountType ;;
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

  dimension: fk_parent_function {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentFunction ;;
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

  dimension: ncesreporting_required {
    type: string
    sql: ${TABLE}.NCESReportingRequired ;;
  }

  dimension: not_in_use {
    type: string
    sql: ${TABLE}.NotInUse ;;
  }

  dimension: parent_type {
    type: string
    sql: ${TABLE}.ParentType ;;
  }

  dimension: pk_coa_function {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaFunction ;;
  }

  dimension: postable {
    type: string
    sql: ${TABLE}.Postable ;;
  }

  dimension: summary_line {
    type: string
    sql: ${TABLE}.SummaryLine ;;
  }

  dimension: supports_programs {
    type: string
    sql: ${TABLE}.SupportsPrograms ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
