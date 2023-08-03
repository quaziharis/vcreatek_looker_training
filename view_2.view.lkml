#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: view_2 {
  derived_table: {
    sql: SELECT A.ProductName, A.ProductCost, B.OrderNumber, C.FirstName, C.Gender FROM "dbo"."Products" A
           LEFT JOIN "dbo"."Sales2015" B ON A.ProductKey = B.ProductKey
           LEFT JOIN "dbo"."customer" C ON B.CustomerKey = C.CustomerKey
           WHERE B.OrderNumber IS NOT NULL ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_cost {
    type: number
    sql: ${TABLE}.ProductCost ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  set: detail {
    fields: [
        product_name,
	product_cost,
	order_number,
	first_name,
	gender
    ]
  }
}
