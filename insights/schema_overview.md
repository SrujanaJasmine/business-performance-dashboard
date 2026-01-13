# Database Schema Overview


## Design Approach
A star schema was implemented to support analytical queries and performance reporting.

-Transaction timestamps were stored as DATE to optimize aggregation for business performance reporting.
- Unit price and total price were stored separately to support accurate revenue and quantity-based analysis.

## Tables
- **customers**: customer-level attributes including country
- **products**: product, categories of product and price of product for 1 unit.
- **transactions**: fact table containing revenue and transaction dates

## Benefits
- Efficient aggregation for KPIs
- Clear seperation of facts and dimenstions
- Ready for Power BI consumption