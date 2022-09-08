view: coa_fund_test {
  sql_table_name: coa.CoaFund ;;

  label: "UCOA Fund"

  dimension: pk_coa_fund {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafund ;;
  }

  dimension: fund_type_code {
    type: string
    label: "Type Code"
    hidden: yes
    sql: ${TABLE}.fund_type_code ;;
  }

  dimension: fund_type {
    type: string
    label: "Fund Type"
    sql: ${TABLE}.fund_type ;;
  }

  dimension: fund_code {
    type: string
    label: "Fund Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: fund_name {
    type: string
    label: "Fund Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: fund_subgroup {
    type: string
    label: "Fund Subgroup"
    sql: CASE WHEN left(${fund_code}, 2) = '11' then 'Operational'
              WHEN left(${fund_code}, 3) = '151' then 'Impact Aid Operational'
              WHEN left(${fund_code}, 3) = '152' then 'Forest Reserve/Ad Valorem/Oil Gass Tax/Copper'
              WHEN left(${fund_code}, 1) = '1' then 'Other Operational'
              WHEN left(${fund_code}, 2) = '21' then 'Food'
              WHEN left(${fund_code}, 2) = '22' then 'Athletics'
              WHEN left(${fund_code}, 2) = '23' then 'Student Activity'
              WHEN left(${fund_code}, 2) = '24' THEN 'Federal'
              WHEN left(${fund_code}, 2) = '25' THEN 'Federal'
              WHEN left(${fund_code}, 2) = '26' then 'State/Local'
              WHEN left(${fund_code}, 2) = '27' then 'State/Local'
              WHEN left(${fund_code}, 2) = '28' then 'State/Local'
              WHEN left(${fund_code}, 2) = '29' then 'State/Local'
              ELSE ${fund_name} END;;
    drill_fields: [fund_name]
  }

  dimension: fund_group {
    type: string
    label: "Fund Group"
    sql: CASE WHEN left(${fund_code}, 1) = '1' then 'Unrestricted'
              WHEN left(${fund_code}, 1) = '2' then 'Restricted'
              WHEN left(${fund_code}, 1) = '3' then 'Capital Outlay'
              WHEN left(${fund_code}, 1) = '4' then 'Debt'
              ELSE 'Other' END;;
    drill_fields: [fund_subgroup]
  }
}
