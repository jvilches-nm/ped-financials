
view: aip_submissions {
  label: "Attendance Improvement Plan Submission"
  derived_table: {
    sql:  select distinct  a.[SBID]
      ,a.[YearID]
    ,c.YearDesc
      ,a.[Type]
      ,a.[DistrictCode]
    ,case when a.SchoolCode = 0 then d.DISTRICT_NAME
      when a.SchoolCode <>0 then s.DISTRICT_NAME end district_name
      ,a.[SchoolCode]
    ,s.SchoolName
      ,a.[Certified]
      ,a.[CreatedBy]
      ,a.[CreateDate]
      ,a.[ModifiedBy]
      ,a.[ModifiedDate]
  from  [looker].[AttendTrack_tbl_Submissions] as  a
  left join
  (select distinct cast([district_id] as int) as [district_id], DISTRICT_NAME from [looker].[stars_districts]) as d
  on cast(a.[DistrictCode] as int) = cast(d.[district_id] as int) and cast(a.SchoolCode as int)= 0
  left join
  (select distinct LOCATION_ID  as School_Code, LOCATION_NAME as SchoolName, DISTRICT_id, DISTRICT_NAME from [looker].[stars_locations] where LOCATION_ID <>'xxx')as  s
   on  cast(a.[DistrictCode] as int) = cast(s.DISTRICT_id as int)
  and   cast(a.[SchoolCode] as int) = cast(s.School_Code as int)   and  cast(a.SchoolCode as int)  <> 0
  left join [looker].[AttendTrack_cd_year] c on a.YearID = c.YearID

    ;;
  }
  #sql_table_name: dbo.AttendTrack_tbl_Submissions ;;

  dimension: yeardesc {
    type: string
    label: "Year Desc"
    sql: ${TABLE}.YearDesc ;;
  }

  dimension: certified {
    type: string
    sql: case when ${TABLE}.Certified = 'True' then 'Yes'
              when ${TABLE}.Certified = 'False' then 'No'
              else '' end;;
  }

  dimension: district_name {
    type: string
    label: "District Name"
    sql: ${TABLE}.district_name ;;
  }

  dimension: school_name {
    type: string
    label: "School Name"
    sql: ${TABLE}.schoolname ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: district_code {
    type: number
    sql: CAST(${TABLE}.DistrictCode AS int) ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: sbid {
    type: string
    sql: ${TABLE}.SBID ;;
  }

  dimension: school_code {
    type: number
    sql: CAST(${TABLE}.SchoolCode AS int) ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: year_id {
    type: number
    sql: CAST(${TABLE}.YearID AS NUMERIC);;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
