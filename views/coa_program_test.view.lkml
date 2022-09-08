view: coa_program_test {
  sql_table_name: coa.coaProgram ;;
  label: "UCOA Program"
  dimension: pk_coa_program {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaprogram ;;
  }
  dimension: program_code {
    type: string
    label: "Program Code"
    sql: ${TABLE}.Code ;;
  }
  dimension: program_name {
    type: string
    label: "Program Name"
    sql: replace(${TABLE}.Name, 'Special ', 'Special Ed ') ;;
  }
  dimension: program_group {
    type: string
    label: "Program Group"
    sql: case left(${program_code}, 3) WHEN '200' then 'Special Education'
                                       WHEN '401' then 'Bilingual & Multicultural'
                                       WHEN '402' then 'At Risk'
                                       WHEN '100' then 'Regular Education'
                                       WHEN '300' then 'Vocational & Techncial'
                                       WHEN '403' then 'K-5 Plus'
                                       WHEN '404' then 'Extending Learning Time'
                                       WHEN '900' then 'Co-Curricular & Extra-Curricular'
                                       ELSE 'No Program' end ;;
  }
}
