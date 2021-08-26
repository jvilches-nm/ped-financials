view: coa_object_hierarchy_revenue {
  derived_table: {
    sql: select f1.code lvl1_code, f1.name lvl1_name,
      case when f2.code is not null then f2.code else f1.code end lvl2_code,
      case when f2.name is not null then f2.name else f1.name end lvl2_name,
      case when f3.code is not null then f3.code when f2.code is not null then f2.code else f1.code end lvl3_code,
      case when f3.name is not null then f3.name when f2.name is not null then f2.name else f1.name end lvl3_name,
      case when f4.code is not null then f4.code when f3.code is not null then f3.code when f2.code is not null then f2.code else f1.code end lvl4_code,
      case when f4.name is not null then f4.name when f3.name is not null then f3.name when f2.name is not null then f2.name else f1.name end lvl4_name,
            case when f4.pkcoaobject is not null then f4.pkcoaobject when f3.pkcoaobject is not null then f3.pkcoaobject when f2.pkcoaobject is not null then f2.pkcoaobject else f1.pkcoaobject end pkcoaobject
      from coa.coaobject f1
      left join coa.coaobject f2 on f2.fkparentobject=f1.pkcoaobject
      left join coa.coaobject f3 on f3.fkparentobject=f2.pkcoaobject
      left join coa.coaobject f4 on f4.fkparentobject=f3.pkcoaobject
      where f1.fkparentobject is null;;
  }
  label: "UCOA Object"
  dimension: pk_coa_object {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaobject ;;
  }
  dimension: parent_object_code {
    type: string
    label: "Object Parent Code"
    hidden: yes
    sql: ${TABLE}.lvl1_code ;;
  }
  dimension: parent_object_name {
    type: string
    label: "Object Parent Name"
    sql: ${TABLE}.lvl1_name ;;
    hidden: yes
    drill_fields: [object_name]
  }
  dimension: lvl2_object_code {
    type: string
    label: "Level 2 Code"
    hidden: yes
    sql: ${TABLE}.lvl2_code ;;
  }
  dimension: lvl2_object_name {
    type: string
    label: "Level 2 Name"
    sql: ${TABLE}.lvl2_name ;;
    hidden: yes
  }
  dimension: lvl3_object_code {
    type: string
    label: "Level 3 Object Code"
    hidden: yes
    sql: ${TABLE}.lvl3_code ;;
  }
  dimension: lvl3_object_name {
    type: string
    label: "Level 3 Object Name"
    hidden: yes
    sql: ${TABLE}.lvl3_name ;;
  }
  dimension: object_code {
    type: string
    label: "Object Code"
    sql: ${TABLE}.lvl4_code ;;
  }
  dimension: object_name {
    type: string
    label: "Object Name"
    sql: ${TABLE}.lvl4_name ;;
  }
  dimension: object_group {
    type: string
    label: "Object Rollup Name"
    sql: CASE WHEN left(${object_code}, 2) = '41' THEN 'Local'
              WHEN left(${object_code}, 2) = '43' THEN 'State'
              WHEN left(${object_code}, 2) = '44' THEN 'Federal'
              WHEN left(${object_code}, 2) = '45' THEN 'Other'
              WHEN left(${object_code}, 2) = '46' THEN 'Other'
              WHEN left(${object_code}, 1) = '1' THEN 'Cash Assets'
              ELSE 'Other' END;;
    drill_fields: [object_name]
  }
}
