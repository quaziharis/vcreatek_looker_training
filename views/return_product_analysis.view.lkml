# The name of this view in Looker is "Return Product Analysis"
view: return_product_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.Return_Product_Analysis ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bu" in Explore.

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}.Cluster ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }

  dimension: destination_category {
    type: string
    sql: ${TABLE}.Destination_Category ;;
  }

  dimension: flow_category {
    type: string
    sql: ${TABLE}.Flow_Category ;;
  }

  dimension: from_area {
    type: string
    sql: ${TABLE}.From_Area ;;
  }

  dimension: from_category {
    type: string
    sql: ${TABLE}.From_Category ;;
  }

  dimension: in_transit_glpii {
    type: number
    sql: ${TABLE}.InTransit_GLPII ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_in_transit_glpii {
    type: sum
    sql: ${in_transit_glpii} ;;  }
  measure: average_in_transit_glpii {
    type: average
    sql: ${in_transit_glpii} ;;  }

  dimension: in_transit_units {
    type: number
    sql: ${TABLE}.InTransit_Units ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: region_from {
    type: string
    sql: ${TABLE}.Region_From ;;
  }

  dimension: return_type {
    type: string
    sql: ${TABLE}.Return_Type ;;
  }

  dimension: returns_glpii {
    type: number
    sql: ${TABLE}.Returns_GLPII ;;
  }

  dimension: returns_std {
    type: number
    sql: ${TABLE}.Returns_Std ;;
  }

  dimension: returns_units {
    type: number
    sql: ${TABLE}.Returns_units ;;
  }

  dimension: sub_cluster {
    type: string
    sql: ${TABLE}.Sub_Cluster ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }
  measure: count {
    type: count
  }
}
