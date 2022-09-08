view: coa_object_rev_test {
  derived_table: {
    sql: select * from coa.coaobject where left(code, 1)='4' or left(code, 1)='1';;
  }

  label: "UCOA Object"

  dimension: pk_coa_object {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaobject ;;
  }

  dimension: object_code {
    type: string
    label: "Object Code"
    sql: ${TABLE}.Code ;;
  }
  dimension: object_name {
    type: string
    label: "Object Name"
    sql: ${TABLE}.Name ;;
  }
  dimension: object_group {
    type: string
    label: "Object Group"
    sql: CASE WHEN left(${object_code}, 2) = '41' THEN 'Local'
              WHEN left(${object_code}, 2) = '43' THEN 'State'
              WHEN left(${object_code}, 2) = '44' THEN 'Federal'
              WHEN left(${object_code}, 2) = '45' THEN 'Other Financing'
              WHEN left(${object_code}, 2) = '46' THEN 'Other Items'
              WHEN left(${object_code}, 1) = '1' THEN 'Cash Assets'
              ELSE 'Other' END;;
    drill_fields: [object_name]
  }
}
