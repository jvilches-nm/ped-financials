view: coa_function_hierarchy {
  derived_table: {
    sql: select f1.code lvl1_code, f1.name lvl1_name,
        case when f2.code is not null then f2.code else f1.code end lvl2_code,
        case when f2.name is not null then f2.name else f1.name end lvl2_name,
        case when f2.code is not null then f2.pkcoafunction else f1.pkcoafunction end pkcoafunction,
        case when f2.code is not null then f2.fkcoatype else f1.fkcoatype end fkcoatype
        from coa.coafunction f1
        left join coa.coafunction f2 on f2.fkparentfunction=f1.pkcoafunction
        where f1.fkparentfunction is null ;;
  }
  label: "UCOA Function"
  dimension: pk_coa_function {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafunction ;;
  }
  dimension: fk_coa_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkcoatype ;;
  }
  dimension: lvl1_code {
    type: string
    label: "Rollup Code"
    sql: ${TABLE}.lvl1_code ;;
  }
  dimension: lvl1_name {
    type: string
    label: "Rollup Name"
    sql: ${TABLE}.lvl1_name ;;
  }
  dimension: lvl2_code {
    type: string
    label: "Detail Code"
    sql: ${TABLE}.lvl2_code ;;
  }
  dimension: lvl2_name {
    type: string
    label: "Detail Name"
    sql: ${TABLE}.lvl2_name ;;
  }
}
