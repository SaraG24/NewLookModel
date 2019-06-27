# - dashboard: other
#   title: other
#   layout: newspaper
#   elements:
#   - name: airtable
#     title: airtable
#     model: playing1
#     explore: order_items
#     type: table
#     fields:
#     - orders.count
#     - order_items.sale_price
#     - products.brand
#     - products.category
#     sorts:
#     - orders.count desc
#     limit: 500
#     query_timezone: America/Los_Angeles
#     show_view_names: true
#     show_row_numbers: true
#     truncate_column_names: true
#     hide_totals: false
#     hide_row_totals: false
#     table_theme: editable
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     series_labels:
#       order_items.sale_price: Price
#       products.brand: Brand
#       products.category: Category
#       orders.count: Count
#     listen:
#       Untitled Filter: products.brand
#     row: 0
#     col: 0
#     width: 8
#     height: 6
#   - title: Custom Fields Test
#     name: Custom Fields Test
#     model: playing1
#     explore: inventory_items
#     type: single_value
#     fields:
#     - products.count
#     - inventory_items.created_month
#     - products.category
#     - products.rank
#     - average_of_rank
#     filters:
#       inventory_items.created_month: 8 months
#       products.category: Skirts
#     sorts:
#     - products.category desc
#     - inventory_items.created_month desc
#     limit: 500
#     column_limit: 50
#     dynamic_fields:
#     - measure: average_of_rank
#       based_on: products.rank
#       type: average
#       label: Average of Rank
#       expression:
#       _kind_hint: measure
#       _type_hint: number
#     - table_calculation: calculation_2
#       label: Calculation 2
#       expression: "${products.count} + ${average_of_rank}"
#       value_format:
#       value_format_name:
#       _kind_hint: measure
#       _type_hint: number
#     custom_color_enabled: false
#     custom_color: forestgreen
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     show_view_names: true
#     show_row_numbers: true
#     truncate_column_names: false
#     hide_totals: false
#     hide_row_totals: false
#     table_theme: editable
#     limit_displayed_rows: true
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     stacking: ''
#     show_value_labels: false
#     label_density: 25
#     legend_position: center
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     y_axis_combined: true
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: true
#     show_x_axis_ticks: true
#     x_axis_scale: auto
#     y_axis_scale_mode: linear
#     x_axis_reversed: false
#     y_axis_reversed: false
#     ordering: none
#     show_null_labels: false
#     show_totals_labels: false
#     show_silhouette: false
#     totals_color: "#808080"
#     show_null_points: true
#     point_style: none
#     interpolation: linear
#     series_types: {}
#     limit_displayed_rows_values:
#       show_hide: show
#       first_last: first
#       num_rows: '10'
#     hidden_fields:
#     - inventory_items.created_month
#     - products.category
#     - products.rank
#     - products.count
#     - average_of_rank
#     row: 0
#     col: 8
#     width: 8
#     height: 6
#   - title: Custom Fields Test 2
#     name: Custom Fields Test 2
#     model: playing1
#     explore: inventory_items
#     type: single_value
#     fields:
#     - products.count
#     - inventory_items.created_month
#     - products.category
#     - products.rank
#     - average_of_rank
#     filters:
#       inventory_items.created_month: 8 months
#       products.category: Skirts
#     sorts:
#     - products.category desc
#     - inventory_items.created_month desc
#     limit: 500
#     column_limit: 50
#     dynamic_fields:
#     - measure: average_of_rank
#       based_on: products.rank
#       type: average
#       label: Average of Rank
#       expression:
#       _kind_hint: measure
#       _type_hint: number
#     - table_calculation: calculation_2
#       label: Calculation 2
#       expression: sum(${average_of_rank})
#       value_format:
#       value_format_name:
#       is_disabled: false
#       _kind_hint: measure
#       _type_hint: number
#     custom_color_enabled: false
#     custom_color: forestgreen
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     show_view_names: true
#     show_row_numbers: true
#     truncate_column_names: false
#     hide_totals: false
#     hide_row_totals: false
#     table_theme: editable
#     limit_displayed_rows: true
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     stacking: ''
#     show_value_labels: false
#     label_density: 25
#     legend_position: center
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     y_axis_combined: true
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: true
#     show_x_axis_ticks: true
#     x_axis_scale: auto
#     y_axis_scale_mode: linear
#     x_axis_reversed: false
#     y_axis_reversed: false
#     ordering: none
#     show_null_labels: false
#     show_totals_labels: false
#     show_silhouette: false
#     totals_color: "#808080"
#     show_null_points: true
#     point_style: none
#     interpolation: linear
#     series_types: {}
#     limit_displayed_rows_values:
#       show_hide: show
#       first_last: first
#       num_rows: '10'
#     hidden_fields:
#     - inventory_items.created_month
#     - products.category
#     - products.rank
#     - products.count
#     - average_of_rank
#     row: 0
#     col: 16
#     width: 8
#     height: 6
#   filters:
#   - name: Untitled Filter
#     title: Untitled Filter
#     type: field_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false
#     model: playing1
#     explore: products
#     listens_to_filters: []
#     field: products.brand
