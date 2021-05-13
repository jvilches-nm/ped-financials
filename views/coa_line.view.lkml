view: coa_line {
  sql_table_name: COA.CoaLine ;;

  dimension: fk_coa {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCOA ;;
  }

  dimension: fk_coa_account_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaAccountType ;;
  }

  dimension: fk_coa_function {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaFunction ;;
  }

  dimension: fk_coa_fund {
    hidden: yes
    type: number
    sql: ${TABLE}.fkCoaFund ;;
  }

  dimension: fk_coa_job_class {
    hidden: yes
    type: number
    sql: ${TABLE}.fkCoaJobClass ;;
  }

  dimension: fk_coa_object {
    hidden: yes
    type: number
    sql: ${TABLE}.fkCoaObject ;;
  }

  dimension: fk_coa_program {
    hidden: yes
    type: number
    sql: ${TABLE}.fkCoaProgram ;;
  }

  dimension: fk_modified_by {
    hidden: yes
    type: number
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension_group: modified {
    hidden: yes
    type: time
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

  dimension: pk_coaline {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.pkCOALine ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
