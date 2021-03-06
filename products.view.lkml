view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
#     html: ¥ {{rendered_value}} ;;
      # value_format:"¥#.00;(¥#.00)"

#     named_value_format: yan {
#       value_format: "¥"
#     }
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
    drill_fields: [users.city, products.brand]


  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }

}
