view: fund_type {
  sql_table_name: COA.FundType ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: fk_workflow_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkWorkflowType ;;
  }

  dimension: flowthrough {
    type: string
    sql: ${TABLE}.Flowthrough ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_fund_type {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkFundType ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
