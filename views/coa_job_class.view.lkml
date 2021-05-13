view: coa_job_class {
  sql_table_name: COA.CoaJobClass ;;

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

  dimension: fk_coa_job_class_category {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaJobClassCategory ;;
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

  dimension: fk_parent_job_class {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentJobClass ;;
  }

  dimension: fk_stat_ftitles_report_title {
    type: number
    hidden: yes
    sql: ${TABLE}.fkStatFTitlesReportTitle ;;
  }

  dimension: is_licensed {
    type: string
    sql: ${TABLE}.IsLicensed ;;
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

  dimension: pk_coa_job_class {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaJobClass ;;
  }

  dimension: postable {
    type: string
    sql: ${TABLE}.Postable ;;
  }

  dimension: requires_nonzero_fte {
    type: string
    sql: ${TABLE}.RequiresNonzeroFTE ;;
  }

  dimension: summary_line {
    type: string
    sql: ${TABLE}.SummaryLine ;;
  }

  dimension: supports_fte {
    type: string
    sql: ${TABLE}.SupportsFTE ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
