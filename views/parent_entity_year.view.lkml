view: parent_entity_year {
  sql_table_name: Common.EntityYear ;;
  label: "Parent Location"

  dimension: code {
    type: string
    label: "Parent Location Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: final_membership {
    type: number
    label: "Parent Student Population"
    sql: ${TABLE}.FinalMembership ;;
  }

  dimension: fk_budget_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetYear ;;
  }

  dimension: fk_entity {
    type: number
    hidden: yes
    sql: ${TABLE}.fkEntity ;;
  }

  dimension: fk_entity_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkEntityType ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: legal_name {
    type: string
    hidden: yes
    sql: ${TABLE}.LegalName ;;
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
    label: "Parent Location Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: operational_program_cost {
    type: string
    hidden: yes
    sql: ${TABLE}.OperationalProgramCost ;;
  }

  dimension: pk_entity_year {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkEntityYear ;;
  }

  dimension: preliminary_membership {
    type: number
    hidden: yes
    sql: ${TABLE}.PreliminaryMembership ;;
  }

  dimension: share_vendor_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ShareVendorCode ;;
  }

  measure: count {
    type: count
    drill_fields: [name, legal_name]
  }
}
