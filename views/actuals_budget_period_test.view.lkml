view: actuals_budget_period_test {
   derived_table: {
     sql: select * from (SELECT    abp.pkactualsbudgetperiod, fkbudget, fkbudgetyear, y.YearName, y.endDate, arp.code reporting_period_code, arp.description reporting_period_description ,
                LastApproved = ROW_NUMBER() OVER (PARTITION BY abp.fkBudget
                                                    ORDER BY arp.Ordinal DESC)
         FROM    Actuals.ActualsBudgetPeriod abp
                INNER JOIN
                Actuals.ActualsReportingPeriod arp
                    ON abp.fkActualsReportingPeriod = arp.pkActualsReportingPeriod
                INNER JOIN
                Actuals.ActualsStatus astat
                    ON abp.fkActualsStatus = astat.pkActualsStatus
                INNER JOIN
                dbo.budget b
                on abp.fkbudget = b.pkbudget
                inner join
                common.budgetyear y
                on b.fkbudgetyear=y.pkbudgetyear
         WHERE    arp.Code <> 'YTD'
           AND    astat.Code = 'AA'
           AND    YEAR(y.enddate)>=2021) x
       where lastapproved=1
       ;;
      persist_for: "4 hour"
      indexes: ["pkactualsbudgetperiod"]
   }

   dimension: pk_actuals_budget_period {
     hidden: yes
     primary_key: yes
     type: number
     sql: ${TABLE}.pkactualsbudgetperiod ;;
   }

  dimension: fk_budget {
    hidden: yes
    type: number
    sql: ${TABLE}.fkbudget ;;
  }

  dimension: fk_budget_year {
    hidden: yes
    type: number
    sql: ${TABLE}.fkbudgetyear ;;
  }

  dimension: reporting_period_code {
    type: string
    sql: ${TABLE}.reporting_period_code ;;
  }

  dimension: reporting_period_description {
    type: string
    sql: ${TABLE}.reporting_period_description ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.YearName ;;
  }

  dimension: school_year_end_date {
    type: date
    sql: ${TABLE}.EndDate ;;
  }

}
