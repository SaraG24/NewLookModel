- dashboard: good_dashb
  title: good bueno dashb
  layout: newspaper
  elements:
  - title: dashb
    name: dashb
    model: playing1
    explore: inventory_items
    type: looker_line
    fields:
    - products.count
    - inventory_items.created_month
    - products.category
    pivots:
    - products.category
    fill_fields:
    - inventory_items.created_month
    sorts:
    - inventory_items.created_month desc
    - products.category
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row:
    col:
    width:
    height:
  - name: 11111iiwhenfip98urp9qu93848937783687638726578236875687268756826587627386088828828282882828282828282828282828288228288282882288282828282828288282828282828282828282828282828282828282882828282828282828282828288282828828282828282828282828282882288282
    type: text
    title_text: 11111iiwhenfip98urp9qu93848937783687638726578236875687268756826587627386088828828282882828282828282828282828288228288282882288282828282828288282828282828282828282828282828282828282882828282828282828282828288282828828282828282828282828282882288282
    row:
    col:
    width:
    height:
