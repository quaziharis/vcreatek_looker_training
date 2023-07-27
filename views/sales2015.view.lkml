# The name of this view in Looker is "Sales2015"
view: sales2015 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.Sales2015 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Key" in Explore.

  dimension: customer_key {
    type: number
    sql: ${TABLE}.CustomerKey ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_key {
    type: sum
    sql: ${customer_key} ;;  }
  measure: average_customer_key {
    type: average
    sql: ${customer_key} ;;  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_line_item {
    type: number
    sql: ${TABLE}.OrderLineItem ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  dimension: stock_date {
    type: string
    sql: ${TABLE}.StockDate ;;
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}.TerritoryKey ;;
  }
  measure: count {
    type: count
  }
}
