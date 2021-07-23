connection: "obms-reporting"

# include all the views
include: "/views/**/*.view"

datagroup: ped_public_financials_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_public_financials_default_datagroup

explore: actuals_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='E' and ${actuals_reporting_period.code}='YTD' and ${actuals_status.code}='AA';;
  label: "Expenditures"

  join: actuals_budget_period {
    relationship: many_to_one
    type:  inner
    sql_on:  ${actuals_line.fk_actuals_budget_period}=${actuals_budget_period.pk_actuals_budget_period} ;;
  }
  join: actuals_reporting_period {
    relationship: many_to_one
    type: inner
    sql_on: ${actuals_budget_period.fk_actuals_reporting_period}=${actuals_reporting_period.pk_actuals_reporting_period} ;;
  }
  join: actuals_status {
    relationship: many_to_one
    type: inner
    sql_on:  ${actuals_budget_period.fk_actuals_status}=${actuals_status.pk_actuals_status} ;;
  }
  join: budget {
    relationship: many_to_one
    type: inner
    sql_on: ${actuals_budget_period.fk_budget} = ${budget.pk_budget} ;;
  }
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
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
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
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
}

explore: budget_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='R' and ${budget_status.ordinal}>=12;;
  label: "Revenue"

  join: budget_fund {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_line.fk_budget_fund}=${budget_fund.pk_budget_fund} ;;
  }
  join: budget {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_fund.fk_budget}=${budget.pk_budget} ;;
  }
  join: budget_status {
    relationship: many_to_one
    type: inner
    sql_on: ${budget.fk_budget_status}=${budget_status.pk_budget_status} ;;
  }
  join: coa_line {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_line.fk_coaline}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: inner
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_object_hierarchy_revenue {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy_revenue.pk_coa_object} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
}

explore: budget_expenditures_line {
  sql_always_where: ${budget_year.start_year}>=datepart(yyyy, getdate())-4 and ${coa_account_type.code}='E' and ${budget_status.ordinal}>=12;;
  label: "Budget"
  join: budget_fund {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_expenditures_line.fk_budget_fund}=${budget_fund.pk_budget_fund} ;;
  }
  join: budget {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_fund.fk_budget}=${budget.pk_budget} ;;
  }
  join: budget_status {
    relationship: many_to_one
    type: inner
    sql_on: ${budget.fk_budget_status}=${budget_status.pk_budget_status} ;;
  }
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
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
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
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
}

explore: stars_locations {
  label: "School Data"
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id}
    and ${stars_locations.location_year}=${stars_districts.location_year}
    ;;
  }}

  map_layer: my_neighborhood_layer {
    file: "/Map_Shapefiles/dist_school_map.topojson"
    property_key: "name"

  }
