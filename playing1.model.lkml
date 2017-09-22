connection: "thelook"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: events {
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
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
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

explore: users {}

explore: users_nn {}
