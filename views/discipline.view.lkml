view: discipline {
  sql_table_name: looker.discipline ;;

  dimension: school_year {
    type: string
    sql: ${TABLE}.school_year ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.district_code ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: discipline_response {
    type: string
    sql: ${TABLE}.discipline_response ;;
  }
  dimension: infraction {
    type: string
    sql: replace(replace(replace(replace(replace(replace(replace(${TABLE}.infraction, ' - Describe in Comment Field 15', ''), 'Other Violence - ', ''), 'General (includes threat or intimidation)', 'Violence - threat or intimidation'), ' simple', ''), 'NOT based on sex/race/color/national origin or disability', ''), ' NOT based on sex, race, color, national origin or disability', ''), ' - Descr in Comment Field'. '') ;;
    }
  dimension: infraction_category {
    type: string
    sql: ${TABLE}.infraction_category ;;
  }
  dimension_group: infraction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.infraction_date ;;
  }

  dimension: response_duration {
    type: number
    sql: ${TABLE}.response_duration ;;
  }
  dimension: response_duration_band {
    type: string
    sql: ${TABLE}.response_duration_band ;;
  }

  dimension: alcohol_related {
    type: string
    sql: ${TABLE}.alcohol_related ;;
  }
  dimension: criminal_charge {
    type: string
    sql: ${TABLE}.criminal_charge ;;
  }
  dimension: drug_related {
    type: string
    sql: ${TABLE}.drug_related ;;
  }
  dimension: gang_related {
    type: string
    sql: ${TABLE}.gang_related ;;
  }
  dimension: hate_crime {
    type: string
    sql: ${TABLE}.hate_crime ;;
  }
  dimension: serious_injury {
    type: string
    sql: ${TABLE}.serious_injury ;;
  }
  dimension: weapon_related {
    type: string
    sql: ${TABLE}.weapon_related ;;
  }

  measure: discipline_count {
    type: sum
    sql: ${TABLE}.discipline_count ;;
  }
  measure: discipline_respons_days {
    type: sum
    sql: ${TABLE}.discipline_count * ${TABLE}.response_duration;;
  }
}
