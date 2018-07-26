view: events {
  sql_table_name: demo_db.events ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  }

    parameter: test_for_chenna{
      type: unquoted
      allowed_value: {
        label: "IDDD"
        value: "id"
      }
      allowed_value: {
        label: "use_IDDD"
        value: "user_id"
      }
    }

    dimension: test_param {
      type: string
      sql: ${TABLE}.{% parameter test_for_chenna %} ;;
    }


#   dimension: type_id {
#     type: number
#     sql: ${TABLE}.type_id ;;
#   }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: countries {
    type: string
    sql:  case when rand()*50 < 1 THEN 'Alabama'
    WHEN rand()*50 >= 1 AND rand()*50 < 2 THEN 'Alaska'
                WHEN rand()*50 >= 2 AND rand()*50 < 3 THEN 'Arizona'
                WHEN rand()*50 >= 3 AND rand()*50 < 4 THEN 'Arkansas'
                WHEN rand()*50 >= 4 AND rand()*50 < 5 THEN 'California'
                WHEN rand()*50 >= 5 AND rand()*50 < 6 THEN 'Colorado'
                WHEN rand()*50 >= 6 AND rand()*50 < 7 THEN 'Connecticut'
                WHEN rand()*50 >= 7 AND rand()*50 < 8 THEN 'Delaware'
                WHEN rand()*50 >= 8 AND rand()*50 < 9 THEN 'Florida'
                WHEN rand()*50 >= 9 AND rand()*50 < 10 THEN 'Georgia'
                WHEN rand()*50 >= 10 AND rand()*50 < 11 THEN 'Hawaii'
                WHEN rand()*50 >= 11 AND rand()*50 < 12 THEN 'Idaho'
                WHEN rand()*50 >= 12 AND rand()*50 < 13 THEN 'Illinois'
                WHEN rand()*50 >= 13 AND rand()*50 < 14 THEN 'Indiana'
                WHEN rand()*50 >= 14 AND rand()*50 < 15 THEN 'Iowa'
                WHEN rand()*50 >= 15 AND rand()*50 < 16 THEN 'Kansas'
                WHEN rand()*50 >= 16 AND rand()*50 < 17 THEN 'Kentucky'
                WHEN rand()*50 >= 17 AND rand()*50 < 18 THEN 'Louisiana'
                WHEN rand()*50 >= 18 AND rand()*50 < 19 THEN 'Maine'
                WHEN rand()*50 >= 19 AND rand()*50 < 20 THEN 'Maryland'
                WHEN rand()*50 >= 20 AND rand()*50 < 21 THEN 'Michigan'
                WHEN rand()*50 >= 21 AND rand()*50 < 22 THEN 'Minnesota'
                WHEN rand()*50 >= 22 AND rand()*50 < 23 THEN 'Mississippi'
                WHEN rand()*50 >= 23 AND rand()*50 < 24 THEN 'Missouri'
                WHEN rand()*50 >= 24 AND rand()*50 < 25 THEN 'Montana'
                WHEN rand()*50 >= 25 AND rand()*50 < 26 THEN 'Nebraska'
                WHEN rand()*50 >= 26 AND rand()*50 < 27 THEN 'Nevada'
                WHEN rand()*50 >= 27 AND rand()*50 < 28 THEN 'New Hampshire'
                WHEN rand()*50 >= 28 AND rand()*50 < 29 THEN 'New Jersey'
                WHEN rand()*50 >= 29 AND rand()*50 > 30 THEN 'New Mexico'
                WHEN rand()*50 >= 30 AND rand()*50 < 31 THEN 'New York'
                WHEN rand()*50 >= 31 AND rand()*50 < 32 THEN 'North Carolina'
                WHEN rand()*50 >= 32 AND rand()*50 < 33 THEN 'North Dakota'
                WHEN rand()*50 >= 33 AND rand()*50 < 34 THEN 'Ohio'
                WHEN rand()*50 >= 34 AND rand()*50 < 35 THEN 'Oklahoma'
                WHEN rand()*50 >= 35 AND rand()*50 < 36 THEN 'Oregon'
                WHEN rand()*50 >= 36 AND rand()*50 < 37 THEN 'Pennsylvania'
                WHEN rand()*50 >= 37 AND rand()*50 < 38 THEN 'Rhode Island'
                WHEN rand()*50 >= 38 AND rand()*50 < 39 THEN 'South Carolina'
                WHEN rand()*50 >= 39 AND rand()*50 < 40 THEN 'South Dakota'
                WHEN rand()*50 >= 40 AND rand()*50 < 41 THEN 'Tennessee'
                WHEN rand()*50 >= 41 AND rand()*50 < 42 THEN 'Texas'
                WHEN rand()*50 >= 42 AND rand()*50 < 43 THEN 'Utah'
                WHEN rand()*50 >= 43 AND rand()*50 < 44 THEN 'Vermont'
                WHEN rand()*50 >= 44 AND rand()*50 < 45 THEN 'Virginia'
                ELSE 'Wyoming'
                END ;;
    }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id]
  }
}
