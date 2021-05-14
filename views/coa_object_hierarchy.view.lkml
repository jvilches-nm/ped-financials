view: coa_object_hierarchy {
  derived_table: {
    sql: select f1.code lvl1_code, f1.name lvl1_name,
case when f2.code is not null then f2.code else f1.code end lvl2_code,
case when f2.name is not null then f2.name else f1.name end lvl2_name,
case when f3.code is not null then f3.code when f2.code is not null then f2.code else f1.code end lvl3_code,
case when f3.name is not null then f3.name when f2.name is not null then f2.name else f1.name end lvl3_name,
case when f4.code is not null then f4.code when f3.code is not null then f3.code when f2.code is not null then f2.code else f1.code end lvl4_code,
case when f4.name is not null then f4.name when f3.name is not null then f3.name when f2.name is not null then f2.name else f1.name end lvl4_name
      case when f4.pkcoaobject is not null then f4.pkcoaobject when f3.pkcoaobject is not null then f3.pkcoaobject when f2.pkcoaobject is not null then f2.pkcoaobject else f1.pkcoaobject end pkcoaobject
from coa.coaobject f1
left join coa.coaobject f2 on f2.fkparentobject=f1.pkcoaobject
left join coa.coaobject f3 on f3.fkparentobject=f2.pkcoaobject
left join coa.coaobject f4 on f4.fkparentobject=f3.pkcoaobject
where f1.fkparentobject is null;;
  }
  dimension: pk_coa_object {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaobject ;;
  }
  dimension: parent_object_code {
    type: string
    label: "Level 1 Object Code"
    sql: ${TABLE}.lvl1_dcode ;;
  }
  dimension: parent_object_name {
    type: string
    label: "Level 1 Object Name"
    sql: ${TABLE}.lvl1_name ;;
  }
  dimension: child_object_code {
    type: string
    label: "Level 2 Object Code"
    sql: ${TABLE}.lvl2_fundcode ;;
  }
  dimension: child_object_name {
    type: string
    label: "Level 2 Object Name"
    sql: ${TABLE}.lvl2_fundname ;;
  }
  dimension: lvl3_object_code {
    type: string
    label: "Level 3 Object Code"
    sql: ${TABLE}.lvl3_code ;;
  }
  dimension: lvl3_object_name {
    type: string
    label: "Level 3 Object Name"
    sql: ${TABLE}.lvl3_name ;;
  }
  dimension: lvl4_object_code {
    type: string
    label: "Level 4 Object Code"
    sql: ${TABLE}.lvl4_code ;;
  }
  dimension: lvl4_object_name {
    type: string
    label: "Level 4 Object Name"
    sql: ${TABLE}.lvl4_name ;;
  }
}
