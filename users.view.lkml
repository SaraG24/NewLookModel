  view: users {
    suggestions: yes
    sql_table_name: demo_db.users ;;

#  dimension_group: created {
#    type: time
#   timeframes: [date, week, month]
#   sql: ${TABLE}.creted_for ;;
#  }

    dimension: id {
#     case: {
#       when: {
#         sql: ${TABLE}.id > 8634 ;;
#         label: "It works"
#       }
#       when: {
#         sql: ${TABLE}.id < 8634 ;;
#         label: "It works too"
#       }
#       else: "r"
#     }
#     full_suggestions: yes
#     suggestions: ["It works", "It works too"]
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
  # dimension: html_test {
  #   type: number
  #   sql: ${age} ;;
  #   html:
  #       {% if {{id._value}} <= 20 %}
  #       <div style = " background-color: #4FBC89 ; font-size:100%; text-align:right">{{rendered_value}}</div>
  #       {% elsif {{id._value}} > 21 and value <= 30 %}
  #       <div style = " background-color: #FCF758 ; font-size:100%; text-align:right">{{rendered_value}}</div>
  #       {% else %}
  #         <p style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</p>
  #       {%endif%} ;;
  # }



  # dimension: age {
  #   type: tier
  #   style: interval
  #   sql: ${TABLE}.age ;;
  # }

  dimension: city {
    type: string
    label_from_parameter: test_filter
    sql: ${TABLE}.{% parameter test_filter %} ;;

#     sql: ${TABLE}.city ;;
  }
  dimension: test_suggestions {    # only wiht is equal to :)
    sql: ${TABLE}.city ;;
    suggestions: ["Dub", "Ranelagh", "vale"]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
  parameter: test_filter {
    type: unquoted
    allowed_value: {
      label: "Alabama"
      value: "City"
    }}
  dimension: city_o {
    type: string
    label_from_parameter: test_filter
    sql: ${TABLE}.{% parameter test_filter %} ;;
  }
#   dimension: treemap_dimension{
#     type: string
#     label_from_parameter: treemap_filter
#     sql: ${TABLE}.{% parameter test_filter %} ;;
# # sql: ${% parameter treemap_filter %}} ;;
# # value_format_name: "usd"
# #     drill_fields: [treemap_sub_dimension]
#   }





  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      day_of_month,
      day_of_week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
    drill_fields: [created_month, created_year, created_time]
  }
#     parameter: day_of_week {
#       suggestable: yes
#       suggestions: ["Saturday"]
#       type: unquoted
#       allowed_value: {
#         label: "Friday"
#         value: "Friday"
#       }
  parameter: test_filter_week {
    type: unquoted
    allowed_value: {
      label: "Saturday"
      value: "test_filter_week"
#       allowed_value: {
#         label: "Saturday"
#         value: "Friday,Saturday"
       }
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
      html: <div style = " background-color: #4FBC89 ; font-size:100%; text-align:right">{{rendered_value}}</div> ;;
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
