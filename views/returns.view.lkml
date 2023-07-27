# The name of this view in Looker is "Returns"
view: returns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.Returns ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Index" in Explore.

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_index {
    type: sum
    sql: ${index} ;;  }
  measure: average_index {
    type: average
    sql: ${index} ;;  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  dimension: return_date {
    type: string
    sql: ${TABLE}.ReturnDate ;;
  }

  dimension: return_quantity {
    type: number
    sql: ${TABLE}.ReturnQuantity ;;
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}.TerritoryKey ;;
  }
  measure: count {
    type: count
  }
}
