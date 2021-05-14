view: coa_fund_hierarchy {
  derived_table: {
  sql: select f1.code lvl1_fundcode, f1.name lvl1_fundname, f2.code lvl2_fundcode, f2.name lvl2_fundname,
case when f3.code is not null then f3.code else f2.code end level3_fundcode, case when f3.name is not null then f3.name else f2.name end level3_fundname,
case when f4.code is not null then f4.code when f3.code is not null then f3.code else f2.code end lvl4_fundcode,
case when f4.name is not null then f4.name when f3.name is not null then f3.name else f2.name end lvl4_fundname,
case when f4.pkcoafund is not null then f4.pkcoafund when f3.pkcoafund is not null then f3.pkcoafund when f2.pkcoafund is not null then f2.pkcoafund else f1.pkcoafund end pkcoafund
from coa.coafund f1
left join coa.coafund f2 on f2.fkparentfund=f1.pkcoafund
left join coa.coafund f3 on f3.fkparentfund=f2.pkcoafund
left join coa.coafund f4 on f4.fkparentfund=f3.pkcoafund
where f1.fkparentfund is null;;
}
  dimension: pk_coa_fund {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafund ;;
  }
  dimension: parent_fund_code {
    type: string
    label: "Level 1 Fund Code"
    sql: ${TABLE}.lvl1_fundcode ;;
  }
  dimension: parent_fund_name {
    type: string
    label: "Level 1 Fund Name"
    sql: ${TABLE}.lvl1_fundname ;;
  }
  dimension: child_fund_code {
    type: string
    label: "Level 2 Fund Code"
    sql: ${TABLE}.lvl2_fundcode ;;
  }
  dimension: child_fund_name {
    type: string
    label: "Level 2 Fund Name"
    sql: ${TABLE}.lvl2_fundname ;;
  }
  dimension: lvl3_fund_code {
    type: string
    label: "Level 3 Fund Code"
    hidden: yes
    sql: ${TABLE}.lvl3_fundcode ;;
  }
  dimension: lvl3_fund_name {
    type: string
    hidden: yes
    label: "Level 3 Fund Name"
    sql: ${TABLE}.lvl3_fundname ;;
  }
  dimension: lvl4_fund_code {
    type: string
    hidden: yes
    label: "Level 4 Fund Code"
    sql: ${TABLE}.lvl4_fundcode ;;
  }
  dimension: lvl4_fund_name {
    type: string
    hidden: yes
    label: "Level 4 Fund Name"
    sql: ${TABLE}.lvl4_fundname ;;
  }
}
