view: users {
  sql_table_name: demo_db.users ;;

#  dimension_group: created {
#    type: time
#   timeframes: [date, week, month]
#   sql: ${TABLE}.creted_for ;;
#  }

 dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
dimension: testst_aticvalue {
    type: string
    sql: "hello";;
  }

dimension: test_fixwd {
    type: string
    sql: CASE WHEN ${id} IS NOT NULL THEN 'TEST' ELSE 'never happens' END ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: test_suggestions {    # only wiht is equal to :)
    sql: ${TABLE}.city ;;
    suggestions: ["Dub", "Ranelagh", "vale"]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
    drill_fields: [created_month, created_year, created_time]
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: number
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_test {
    type: count_distinct
    sql: ${city} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      events.count,
      orders.count,
      user_data.count
    ]
  }
}
