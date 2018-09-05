- dashboard: other_sso_test
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
    embed_style:
    background_color: "#1f3c86"
    show_title: false
    title_color: "#0C2481"
    show_filters_bar: false
    tile_text_color: "#0C2481"
    text_tile_text_color: "#0C2481"
    tile_background_color: "#0C2481"
  - name: TITULO TEST
    type: text
    title_text: TITULO TEST
    body_text: BODY TEST
    row: 0
    col: 8
    width: 8
    height: 6
    embed_style:
    background_color: "#1f3c86"
    show_title: false
    title_color: "#0C2481"
    show_filters_bar: false
    tile_text_color: "#0C2481"
    text_tile_text_color: "#0C2481"
    tile_background_color: "#FFFFFF"
