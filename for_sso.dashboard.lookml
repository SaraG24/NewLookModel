- dashboard: new_sso_test
  title: new sso test
  layout: newspaper
  elements:
  - title: New Tile
    name: New Tile
    model: playing1
    explore: order_items
    type: table
    fields:
    - order_items.inventory_for_test_sso
    sorts:
    - order_items.inventory_for_test_sso
    limit: 500
    query_timezone: America/Los_Angeles
    row: 0
    col: 0
    width: 8
    height: 6
