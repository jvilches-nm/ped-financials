view: parent_coa_fund {
  sql_table_name: COA.CoaFund ;;

  dimension: advanceable {
    type: string
    sql: ${TABLE}.Advanceable ;;
  }

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

  dimension: fk_fund_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkFundType ;;
  }

  dimension: fk_grant {
    type: number
    hidden: yes
    sql: ${TABLE}.fkGrant ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: fk_parent_fund {
    type: number
    sql: ${TABLE}.fkParentFund ;;
  }

  dimension: fk_rev_object_curr_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkRevObjectCurrYear ;;
  }

  dimension: fk_rev_object_prior_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkRevObjectPriorYear ;;
  }

  dimension: grant {
    type: string
    sql: ${TABLE}."Grant" ;;
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

  dimension: pk_coa_fund {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkCoaFund ;;
  }

  dimension: postable {
    type: string
    sql: ${TABLE}.Postable ;;
  }

  dimension: reimbursable {
    type: string
    sql: ${TABLE}.Reimbursable ;;
  }

  dimension: requires_approvals {
    type: string
    sql: ${TABLE}.RequiresApprovals ;;
  }

  dimension: requires_project_number {
    type: string
    sql: ${TABLE}.RequiresProjectNumber ;;
  }

  dimension: requires_project_validation {
    type: string
    sql: ${TABLE}.RequiresProjectValidation ;;
  }

  dimension: summary_line {
    type: string
    sql: ${TABLE}.SummaryLine ;;
  }

  dimension: supports_assessed_valuations {
    type: string
    sql: ${TABLE}.SupportsAssessedValuations ;;
  }

  dimension: uses_dependent_charter_xfer {
    type: string
    sql: ${TABLE}.UsesDependentCharterXfer ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
