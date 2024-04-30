# INFO-I535
Repository for storing INFO-I535 final project resources.

### Data Source

Link to data source: [Nutrition, Physical Activity, and Obesity - Behavioral Risk Factor Surveillance System | Data | Centers for Disease Control and Prevention (cdc.gov)](https://data.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Behavioral/hn4x-zwk7/about_data)

This dataset is published by CDC with last updated on December 7, 2023. This dataset includes data on adult’s diet, physical activity, and weight status from Behavioral Risk Factor Surveillance System. There are 93.2K rows, 33 columns, size 34.6MB.

### BigQuery Queries
* create_tables.sql
* create_views.sql
* generate_report_indiana_2022.sql
* generate_report_overall_2022.sql

### Results
In this project, I implemented a comprehensive data pipeline that encompasses data collection, storage, transformation, and visualization. 

* Data Collection: the source dataset is published by CDC, a national leading science-based, data-driven, service organization that provides variety datasets. I chose this obesity activity dataset because of its complexity that well suits BigData purpose.
* Data Storage: raw data is stored in a distributed storage BigQuery provided by Google Cloud Platform.
* Data Transformation: the original data from CDC is complex and not well organized.  I had to deep dive into its data modeling structure and understand meaning of each column, then write SQL queries to transform data into desire format and filter out information needed for reports.
* Data Visualization: in this project I use Google Looker Studio to visualize data. With Looker Studio, you can connect to your BigQuery data, create visualizations and share your insights with others.

The end result is a BI report that contains information of 2022 United States overall physical activity and obesity rates across all states, and 2022 Indiana physical activity and obesity rates across different age groups.

Link to my report:  https://lookerstudio.google.com/s/jz_1OuOSvZU
