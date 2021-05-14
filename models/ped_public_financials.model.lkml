connection: "obms-reporting"

# include all the views
include: "/views/**/*.view"

datagroup: ped_public_financials_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_public_financials_default_datagroup

explore: actuals_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='E' and ${actuals_reporting_period.code}='YTD';;
  label: "Actual Expenditures"
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_line.fk_coa_line}=${coa_line.pk_coaline} ;;
    }
  join: coa_function_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_function}=${coa_function_hierarchy.pk_coa_function} ;;
    }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund}.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_line.fk_location_year}=${entity_year.pk_entity_year};;
    }
  join: coa_job_class {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_job_class}=${coa_job_class.pk_coa_job_class} ;;
  }
  join: coa_job_class_category {
    relationship:  many_to_one
    type:  left_outer
    sql_on: ${coa_job_class.fk_coa_job_class_category}=${coa_job_class_category.pk_coa_job_class_category} ;;
  }
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object}.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program}.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: actuals_budget_period {
    relationship: many_to_one
    type:  left_outer
    sql_on:  ${actuals_line.fk_actuals_budget_period}=${actuals_budget_period.pk_actuals_budget_period} ;;
  }
  join: actuals_reporting_period {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_budget_period.fk_actuals_reporting_period}=${actuals_reporting_period.pk_actuals_reporting_period} ;;
  }
}

explore: budget_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='R';;
  label: "Budget Revenue"
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_line.fk_coaline}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_function_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_function}=${coa_function_hierarchy.pk_coa_function} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund}.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_job_class {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_job_class}=${coa_job_class.pk_coa_job_class} ;;
  }
  join: coa_job_class_category {
    relationship:  many_to_one
    type:  left_outer
    sql_on: ${coa_job_class.fk_coa_job_class_category}=${coa_job_class_category.pk_coa_job_class_category} ;;
  }
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program}.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
}

explore: budget_expenditures_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='E';;
  label: "Budget Expenditures"
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_expenditures_line.fk_coaline}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_function_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_function}=${coa_function_hierarchy.pk_coa_function} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund}.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_expenditures_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_job_class {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_job_class}=${coa_job_class.pk_coa_job_class} ;;
  }
  join: coa_job_class_category {
    relationship:  many_to_one
    type:  left_outer
    sql_on: ${coa_job_class.fk_coa_job_class_category}=${coa_job_class_category.pk_coa_job_class_category} ;;
  }
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program}.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
}
