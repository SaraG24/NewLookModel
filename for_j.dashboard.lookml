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
  filters:
  - name: Untitled Filter
    title: Untitled Filter
    type: field_filter
    default_value: ''
    model: playing1
    explore: products
    field: products.brand
    listens_to_filters: []
    allow_multiple_values: true
    required: false
