connection: "thelook"

# connection: "{% if _user_attributes['email'] == 'sara.guzman@looker.com' %}
# thelook
# {% else %}
# sara_athena
# {% endif %}"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: events {
#   sql_always_where: ${user_id} => 0 ;;
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
view: customer_order_facts {
  derived_table: {
    sql:
      SELECT
        users_id,
        MIN(DATE(time)) AS first_order_date,
        SUM(amount) AS lifetime_amount
      FROM
        order
      GROUP BY
        users_id ;;
    sql_trigger_value: SELECT FLOOR((UNIX_TIMESTAMP(NOW()) - 60*60*11)/(60*60*11)) ;;
  }
  dimension: users_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.users_id ;;
  }
  dimension_group: first_order {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.first_order_date ;;
  }
  dimension: lifetime_amount {
    type: number
    value_format: "0.00"
    sql: ${TABLE}.lifetime_amount ;;
  }
}


explore: inventory_items {
  label: "Nice stuff"
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}




explore: order_items {
  view_name: order_items
  from: order_items
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
  access_filter: {
    field: order_items.inventory_for_test_sso
    user_attribute: inventory_for_test_sso
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

#   join: order_items {
#     type: left_outer
#     sql_on: ${users.id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }
}
explore: orders{
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
view: user_metrics {
  derived_table: {
    explore_source: user_data {
      column: login_count { field: user_data.count }
      column: user_id {}
    }
  }
  dimension: login_count {
    type: number
  }
  dimension: user_id {}
  measure: count {
    type: count
  }
}

# explore: metrics {
#   extends: [order_items]
#   label: "Order Items two"
#   sql_always_where: ${products.category} = 'Dresses';;
#   fields: [ALL_FIELDS*, -products.rank, -products.category]
# }

# map_layer: countries_layer {
#   file: "world_countries.json"
#   property_key: "Country"
# }
# map_layer: test_country {
#   feature_key: "ISO_A3"
#   file: "world_countries.json"
#   format: topojson
#   label: "Test for Map"
#   max_zoom_level: 12
#   min_zoom_level: 2
#   projection: airy
#   property_key: "Alpha-2"
#   property_label_key: "OTHER NAME"
# }

explore: users {}

explore: users_nn {}
explore: derived_table_customer_order_facts{}
