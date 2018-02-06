view: users_nn {
  sql_table_name: demo_db.usersNN ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  measure: html_test {
    type: sum
    sql: ${TABLE}.count ;;
    html: {% if p_id._value > 5 and value <= 10 %}
         <div style = " background-color: #4FBC89 ; font-size:100%; text-align:right">{{rendered_value}}</div>
         {% elsif p_id._value > 6 and value <= 12 %}
         <div style = " background-color: #FCF758 ; font-size:100%; text-align:right">{{rendered_value}}</div>
         {% else %}
           <p style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</p>
         {% endif %}

         ;;
  }

  dimension: rand {
    type:  number
    sql: RAND() *10 ;;
  }

  measure: p_id {
    type: number
    sql: ${id} ;;
#     drill_fields: [id, first_name, last_name]
  }
}
