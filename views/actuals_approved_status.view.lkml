 view: actuals_approved_status {
   derived_table: {
     sql:  select x.fkentityyear, x.fkbudgetyear, arp.code, arp.description
           from (select al.fklocationyear fkentityyear, b.fkbudgetyear, max(arp.ordinal) ordinal
                 from actuals.actualsbudgetperiod apb, actuals.actualsreportingperiod arp,
                      actuals.actualsstatus stat, dbo.budget b, actuals.actualsline al
                where apb.fkactualsreportingperiod=arp.pkactualsreportingperiod
                  and apb.fkactualsstatus=stat.pkactualsstatus
                  and apb.fkbudget=b.pkbudget
                  and apb.pkactualsbudgetperiod=al.fkactualsbudgetperiod
                  and stat.code='AA' and arp.code<>'YTD'
              group by al.fklocationyear, b.fkbudgetyear) x
          inner join actuals.actualsreportingperiod arp on arp.ordinal=x.ordinal;;
}

  dimension: fk_entity_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkentityyear ;;
  }
  dimension: fk_budget_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkbudgetyear ;;
  }
  dimension: reporting_period_code {
    type: string
    hidden: no
    sql: ${TABLE}.code ;;
  }
  dimension: reporting_period_desc {
    type: string
    hidden: no
    sql: ${TABLE}.description ;;
  }
    }
