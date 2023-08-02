# The name of this view in Looker is "Customer"
view: customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: dbo.customer ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Annual Income" in Explore.

  dimension: annual_income {
    type: string
    sql: ${TABLE}.AnnualIncome ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.BirthDate ;;
  }

  dimension: customer_key {
    type: number
    primary_key: yes
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

  dimension: education_level {
    type: string
    sql: ${TABLE}.EducationLevel ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: home_owner {
    type: string
    sql: ${TABLE}.HomeOwner ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MaritalStatus ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.Prefix ;;
  }

  dimension: total_children {
    type: number
    sql: ${TABLE}.TotalChildren ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
