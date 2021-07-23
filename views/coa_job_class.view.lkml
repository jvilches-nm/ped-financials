view: coa_job_class {
  derived_table: { sql: select jc.*, jcc.code job_category_code, jcc.name job_category_name, jcc.description job_category_descirption
      from COA.CoaJobClass jc left join COA.CoaJobClassCategory jcc on jc.fkcoajobclasscategory=jcc.pkcoajobclasscategory ;;}
  label: "UCOA Job Class"
  dimension: budgetable {
    type: string
    hidden: yes
    sql: ${TABLE}.Budgetable ;;
  }

  dimension: code {
    type: string
    label: "Detail Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    hidden: yes
    label: "Job Class Description"
    sql: ${TABLE}.Description ;;
  }

  dimension: fk_coa_job_class_category {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaJobClassCategory ;;
  }

  dimension: fk_coa_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaType ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: fk_parent_job_class {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentJobClass ;;
  }

  dimension: fk_stat_ftitles_report_title {
    type: number
    hidden: yes
    sql: ${TABLE}.fkStatFTitlesReportTitle ;;
  }

  dimension: is_licensed {
    type: string
    hidden: yes
    sql: ${TABLE}.IsLicensed ;;
  }

  dimension: job_category_code {
    type: string
    label: "Category Code"
    sql: ${TABLE}.job_category_code ;;
  }
  dimension: job_class_category_name {
    type: string
    label: "Category Name"
    sql: ${TABLE}.job_category_name ;;
    drill_fields: [name]
  }

  dimension: job_rollup_name {
    type: string
    label: "Rollup Name"
    sql: CASE WHEN ${job_category_code}='TE' then 'Teachers'
              WHEN ${job_category_code}='OT' then 'Teachers'
              WHEN ${job_category_code}='IA' then 'Assistants'
              WHEN ${job_category_code}='AD' then 'Administrators'
              ELSE 'Support' END ;;
    drill_fields: [job_class_category_name]
  }
  dimension: job_category_description {
    type: string
    label: "Category Description"
    hidden: yes
    sql: ${TABLE}.job_category_description ;;
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

  dimension: name {
    type: string
    label: "Detail Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: not_in_use {
    type: string
    hidden: yes
    sql: ${TABLE}.NotInUse ;;
  }

  dimension: parent_type {
    type: string
    hidden: yes
    sql: ${TABLE}.ParentType ;;
  }

  dimension: pk_coa_job_class {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaJobClass ;;
  }

  dimension: postable {
    type: string
    hidden: yes
    sql: ${TABLE}.Postable ;;
  }

  dimension: requires_nonzero_fte {
    type: string
    hidden: yes
    sql: ${TABLE}.RequiresNonzeroFTE ;;
  }

  dimension: summary_line {
    type: string
    hidden: yes
    sql: ${TABLE}.SummaryLine ;;
  }

  dimension: supports_fte {
    type: string
    hidden: yes
    sql: ${TABLE}.SupportsFTE ;;
  }

}
