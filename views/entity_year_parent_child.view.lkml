view: entity_year_parent_child {
  sql_table_name: Common.EntityYearParentChild ;;

  dimension: fk_entity_year_child {
    type: number
    hidden:  yes
    sql: ${TABLE}.fkEntityYearChild ;;
  }

  dimension: fk_entity_year_parent {
    type: number
    hidden: yes
    sql: ${TABLE}.fkEntityYearParent ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
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

  dimension: pk_entity_year_parent_child {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkEntityYearParentChild ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
