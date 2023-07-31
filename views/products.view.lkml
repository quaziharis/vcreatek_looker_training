# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.Products ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Index" in Explore.

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.ModelName ;;
  }

  dimension: product_color {
    type: string
    sql: ${TABLE}.ProductColor ;;
  }

  dimension: product_cost {
    type: number
    sql: ${TABLE}.ProductCost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_product_cost {
    type: sum
    sql: ${product_cost} ;;  }
  measure: average_product_cost {
    type: average
    sql: ${product_cost} ;;  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.ProductDescription ;;
  }

  dimension: product_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductKey ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.ProductPrice ;;
  }

  measure: product_price_sum {
    type: sum
    sql: ${TABLE}.ProductPrice  ;;
  }

  dimension: product_size {
    type: string
    sql: ${TABLE}.ProductSize ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.ProductSKU ;;
  }

  dimension: product_style {
    type: string
    sql: ${TABLE}.ProductStyle ;;
  }

  dimension: product_subcategory_key {
    type: number
    sql: ${TABLE}.ProductSubcategoryKey ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, model_name]
  }
}
