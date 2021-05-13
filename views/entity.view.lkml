view: entity {
  sql_table_name: Common.Entity ;;

  dimension_group: create {
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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: dunsnumber {
    type: string
    sql: ${TABLE}.DUNSNumber ;;
  }

  dimension: fed_tax_id {
    type: string
    sql: ${TABLE}.FedTaxID ;;
  }

  dimension: fk_county {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCounty ;;
  }

  dimension: fk_created_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCreatedBy ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: inactive {
    type: string
    sql: ${TABLE}.Inactive ;;
  }

  dimension_group: inactive {
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
    sql: ${TABLE}.InactiveDate ;;
  }

  dimension: lea_id {
    type: string
    sql: ${TABLE}.LEA_ID ;;
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

  dimension: pk_entity {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkEntity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
