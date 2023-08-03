#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: view_1 {
  derived_table: {
    sql: SELECT TOP 10 * FROM dbo.Return_Product_Analysis ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension: region_from {
    type: string
    sql: ${TABLE}.Region_From ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  dimension: from_area {
    type: string
    sql: ${TABLE}.From_Area ;;
  }

  dimension: flow_category {
    type: string
    sql: ${TABLE}.Flow_Category ;;
  }

  dimension: returns_units {
    type: number
    sql: ${TABLE}.Returns_units ;;
  }

  dimension: returns_glpii {
    type: number
    sql: ${TABLE}.Returns_GLPII ;;
  }

  dimension: returns_std {
    type: number
    sql: ${TABLE}.Returns_Std ;;
  }

  dimension: in_transit_units {
    type: number
    sql: ${TABLE}.InTransit_Units ;;
  }

  dimension: in_transit_glpii {
    type: number
    sql: ${TABLE}.InTransit_GLPII ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }

  dimension: destination_category {
    type: string
    sql: ${TABLE}.Destination_Category ;;
  }

  dimension: from_category {
    type: string
    sql: ${TABLE}.From_Category ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}.Cluster ;;
  }

  dimension: sub_cluster {
    type: string
    sql: ${TABLE}.Sub_Cluster ;;
  }

  dimension: return_type {
    type: string
    sql: ${TABLE}.Return_Type ;;
  }

  set: detail {
    fields: [
        index,
	bu,
	region_from,
	week,
	from_area,
	flow_category,
	returns_units,
	returns_glpii,
	returns_std,
	in_transit_units,
	in_transit_glpii,
	destination,
	destination_category,
	from_category,
	month,
	quarter,
	cluster,
	sub_cluster,
	return_type
    ]
  }
}
