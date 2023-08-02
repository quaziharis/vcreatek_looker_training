# Define the database connection to be used for this model.
connection: "vcreatek_training"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

# datagroup: vcreatek_looker_training_1_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: vcreatek_looker_training_1_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Vcreatek Looker Training 1"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: calendar{}

explore: categories {}

explore: customer {}

explore: return_product_analysis {}
explore: products {
    join: product_subcategories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${products.product_subcategory_key} = ${product_subcategories.product_subcategory_key} ;;
  }

  join: categories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${categories.product_category_key} = ${product_subcategories.product_category_key} ;;
  }

  join: sales2015 {
    type: left_outer
    relationship: many_to_one
    sql_on:  ${sales2015.product_key} = ${products.product_key}  ;;
  }

  join: territories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${territories.sales_territory_key} = ${sales2015.territory_key} ;;
  }

}

explore: product_subcategories {}

explore: returns {}

explore: reviews_data {}

explore: sales2015 {
  join: products {
    type: left_outer
    relationship: many_to_one
    sql_on: ${sales2015.product_key}=${products.product_key} ;;
  }

  join: customer {
    type: left_outer
    relationship: many_to_one
    sql_on: ${sales2015.customer_key}=${customer.customer_key} ;;
  }

  join: territories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${sales2015.territory_key}=${territories.sales_territory_key} ;;
  }

  # join: returns {
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${products.product_key}=${returns.product_key} ;;
  # }
}

# explore: sales2016 {}

# explore: sales2017 {}

explore: territories {}
