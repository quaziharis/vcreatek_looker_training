# The name of this view in Looker is "Reviews Data"
view: reviews_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.Reviews_Data ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Date of Creation" in Explore.

  dimension: date_of_creation {
    type: string
    sql: ${TABLE}.DATE_OF_CREATION ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: last_updated_date {
    type: string
    sql: ${TABLE}.LAST_UPDATED_DATE ;;
  }

  dimension: pack_size {
    type: string
    sql: ${TABLE}.PACK_SIZE ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_rating {
    type: number
    sql: ${TABLE}.PRICE_RATING ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price_rating {
    type: sum
    sql: ${price_rating} ;;  }
  measure: average_price_rating {
    type: average
    sql: ${price_rating} ;;  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: quality_rating {
    type: number
    sql: ${TABLE}.QUALITY_RATING ;;
  }

  dimension: review_content {
    type: string
    sql: ${TABLE}.REVIEW_CONTENT ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.REVIEW_COUNT ;;
  }

  dimension: review_date {
    type: string
    sql: ${TABLE}.REVIEW_DATE ;;
  }

  dimension: review_time {
    type: string
    sql: ${TABLE}.REVIEW_TIME ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: states {
    type: string
    sql: ${TABLE}.STATES ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: value_rating {
    type: number
    sql: ${TABLE}.VALUE_RATING ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
