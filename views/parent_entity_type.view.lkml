view: parent_entity_type {
  sql_table_name: Common.EntityType ;;
  label: "Parent Location Type"

  dimension: budgetable {
    type: string
    hidden: yes
    sql: ${TABLE}.Budgetable ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: fk_location_for_parent {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocationForParent ;;
  }

  dimension: fk_parent_entity_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentEntityType ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: parent_type {
    type: string
    hidden: yes
    sql: ${TABLE}.ParentType ;;
  }

  dimension: pk_parent_entity_type {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkEntityType ;;
  }

  dimension: postable {
    type: string
    hidden: yes
    sql: ${TABLE}.Postable ;;
  }

  dimension: supports_assessed_valuations {
    type: string
    hidden: yes
    sql: ${TABLE}.SupportsAssessedValuations ;;
  }

  dimension: supports_budget {
    type: string
    hidden: yes
    sql: ${TABLE}.SupportsBudget ;;
  }

  dimension: supports_budget_ordinal {
    type: number
    hidden: yes
    sql: ${TABLE}.SupportsBudgetOrdinal ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
