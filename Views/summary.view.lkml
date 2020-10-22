view: summary {
  sql_table_name: `bigquery-public-data.covid19_jhu_csse.summary`
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: admin2 {
    type: string
    hidden: yes
    sql: ${TABLE}.admin2 ;;
  }

  dimension: combined_key {
    type: string
    hidden: yes
    sql: ${TABLE}.combined_key ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  measure: sum_confirmed {
    type: sum
    sql: ${TABLE}.confirmed  ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  measure: sum_deaths {
    type: sum
    sql: ${deaths} ;;
  }



  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }



#   measure: sum_deaths {
#     type: sum
#     sql: ${TABLE}.deaths ;;
#   }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }


  dimension: location {
    type: location
    sql_latitude:${latitude} ;;
    sql_longitude:${longitude} ;;
  }




  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  measure: recovered {
    type: sum
    sql: ${TABLE}.recovered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
