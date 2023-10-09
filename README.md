# Crowdfunding_ETL

An ETL (Extract Transform Load) mini project that uses Python, Pandas, Numpy to create a PostgreSQL database which is managed with PgAdmin 4. 


## Table of Contents
#### Introduction
#### Requirements & Dependencies
#### Analysis and Results
#### Usage
#### Contributing
#### License
<br>

#### Introduction
This ETL project demonstrates skills to extract and transform data using two XLSX files to export four csv files, which are then used to load tables in a PostgreSQL database managed by PgAdmin 4. 
- This project was completed by three persons: O Dumbuya, R Liu, and T Barnett. Each contributor's work is delineated below. 


#### Features
- Extract Data with Pandas 'read_excel' function. 

- Use NumPy 'arrange' function and list comprehension to create DataFrame  subsets.  

- Use Pandas 'astype' and 'to-datetime' functions to convert data types.

- Use Pandas 'rename' function to rename columns.

- Use Pandas/Regex/JSON functions such as 'merge', 'drop', "itertuples' and 'split' to prepare data for appropriate normal form use in relational database.

<br>

#### Requirements & Dependencies
You will need the following software to run the ETL script:
- Python 3.10
- Pandas
- NumPy
- JSON
- PgAdmin 4 
- PostgreSQL Database Server
- The appropriate XLSX files
<br>

## Project Structure
<br>

## **Part 1.** 
##### Completed by R Liu
<br>
Use Pandas to read the crowdfunding.xlsx file into a DataFrame and check the head.
<img src = "Images/crwdfnd_df_head.png" width="1200"/>
<br>
<br>

Get the summary of the crowdfunding DataFrame. 
<img src = "Images/crwdfnd_dtypes.png" width="500"/>
<br>
<br>

Check the crowdfunding DataFrame columns.
<img src = "Images/crwdfnd_cols.png" width="600"/>
<br>
<br>

Split the 'category&sub-category' column to create two new columns: 'category' and ' subcategory. 
<img src = "Images/crwdfnd_cat_split.png" width="1200"/>
<br>
<br>

Create one list for 'categories' and another for 'subcategories'.
<img src = "Images/cat_subcat_list.png" width="2400"/>
<br>
<br>

Get the number of distinct values in the 'categories' and 'subcategories' lists.
<br>
<img src = "Images/len_cat_subcat.png" width="100"/>
<br>
<br>

Create NumPy arrays for 'categories' and 'subcategories'.
<img src = "Images/cat_subcat_array.png" width="1000"/>
<br>
<br>

Use list comprehension to prepare the category and subcategory values and the create two DataFrames: one for category and another for subcategory.  
<img src = "Images/cat_subcat_list.png" width="2400"/>  
<br>

Category DataFrame
<br>
<img src = "Images/cat_df.png" width="500"/> 
<br>

Subcategory DataFrame
<br>
<img src = "Images/subcat_df.png" width="500"/> 
<br>
<br>

Export the category and subcategory DataFrames as two separate CSV files to the Resources folder. 
<br>
<br>
<br>
<br>
<br>

----

## **Part 2.** 
##### Completed by O Dumbuya
<br>

Create a campaign DataFrame as a copy of the crowdfunding Dataframe with the added category and subcategory columns, and then check the head.
<img src = "Images/crwdfnd_cat_split.png" width="1600"/>
<br>
<br>

i.  Rename the 'blurb', 'launched_at' and 'deadline' columns as 'description',   'launch_date' and 'end_date'.
<br>
ii. Convert the 'goal' and 'pledged' columns data types to float. 
<br>
iii. Check that the column names and data types were changed.
<img src = "Images/campaign_df_dtypes.png" width="500"/>
<br>
<br>
<br>
i. Format the 'launch_date' and 'end_date' columns to YYYY-MM-DD format.
<br>
ii. Merge the campaign DataFrame to the category and subcategory DataFrames on category and subcategory, respectively.
<br>
iii. Drop the unwanted columns, and check the cleaned campaign Dataframe head. 
<img src = "Images/campaign_df_clean.png" width="2000"/>
<br>
<br>
Export the clean campaign DataFrame as a CSV file to the Resources folder. 
<br>
<br>
<br>

---

### **Part 3.** 
##### Completed by R Liu

### Option 1-Pandas

Use Pandas to read the contacts.xlsx file and check the head.
<img src = "Images/contact_df_head.png" width="1200"/>
<br>
<br>

Convert each row of data to a dictionary and print out the results.
<img src = "Images/contact_dict.png" width="3000"/>
<br>
<br>

Create a contacts DataFrame with the dictionary values and check the head. 
<img src = "Images/contact_df_clean_head.png" width="1200"/>
<br>
<br>

Check the contact DataFrame data types.
<img src = "Images/contact_dtypes.png" width="600"/>
<br>
<br>

i. Split the 'name' column to create a 'first_name' column and a 'last_name' column.
<br>
ii. Drop the 'name' column. 
<br>
iii. Reorder the columns: 'contact_id', 'first_name', 'last_name', 'email'.
<br>
iv. Check the Dataframe head. 
<img src = "Images/contact_df_clean_final.png" width="1100"/>
<br>
<br>

Check the clean contacts DataFrame datatypes and export the DataFrame as a CSV file to the Resources folder. 
<img src = "Images/contact_final_dtypes.png" width="500"/>
<br>
<br>

### Option 2-Regex
<br>
Use Pandas to read the contacts.xlsx file and check the head 

**OR**
Make a copy of the contacts DataFrame that was created when Pandas was used to read the contacts.xlsx file in Option 1, and check the head.
<img src = "Images/contact_df_head.png" width="1200"/>
<br>

Extract the four-digit contact ID numbers, and add them to a new column 'contact_id'.
<img src = "Images/contact_regex4.png" width="1100"/>
<br>
<br>

Check the datatypes.
<br>
<img src = "Images/contact_regex_check.png" width="500"/>
<br>
<br>

Covert the 'contact_id' column to an int64 datatype.
<img src = "Images/contact_regex_conv_dtypes.png" width="500"/>
<br>
<br>

i. Extract the names, and add them to a new column 'name'.
<br>
ii. Extract the email addresses, and add them to a new column 'email'.
<br>
iii. Check that the two new columns were created successfully.
<img src = "Images/contact_regex_extracts.png" width="2000"/>
<br>
<br>

Create a copy of the contacts DataFrame with the columns to keep: 'contact_id', 'name', 'email', and check the head. 
<img src = "Images/contact_regex_keep_col.png" width="800"/>
<br>
<br>

i. Create two new columns: 'first_name' and 'last_name'.
<br>
ii. Fill the two new columns by splitting the 'name' column.
<br>
iii. Drop the 'name' column, and reorder the kept columns: 'contact_id', 'first_name', 'last_name', 'email'.
<br>
iv. Check the Dataframe head to ensure that the columns were created, dropped, and reordered successfully.
<img src = "Images/contact_regex_split_reord.png" width="800"/>
<br>
<br>

Check the datatypes one final time. 
<img src = "Images/contact_regex_final_dtypes.png" width="800"/>
<br>
<br>

Export the DataFrame as a CSV file to the Resources folder.

<br>
<br>
<br>

---

### **Part 4.** 
##### Completed by T Barnett

### Create the Crowdfunding Database

Create the crowdfunding database schema as a .sql file in Jupyter Notebook.
<br>

Use an ERD to check the schema tables and relationships. 
<img src = "Images/crowdfundingERD.png" width="1000"/>

<br>
<br>
<br>

Create the crowdfunding database via pgAdmin 4. 
<img src = "Images/crwdfnd_db_crtd.png" width="800"/>
<br>
<br>
<br>

Execute the crowdfunding_db_schema.sql script in pgAdmin 4 query tool, at the crowdfunding database, to create the four tables. 
<img src = "Images/crwdfnd_tables_crtd.png" width="800"/>
<br>
<br>
<br>

Execute the crowdfunding_db_queries.sql script in pgAdmin 4 query tool, one at a time, to check that each table has been successfully created.
<br>
<br>
<br>
Subcategory Table
<img src = "Images/subcat_table_chck.png" width="800"/>
<br>
<br>
<br>

Category Table
<img src = "Images/category_table_chck.png" width="800"/>
<br>
<br>
<br>

Contacts Table
<img src = "Images/contacts_table_chck.png" width="800"/>
<br>
<br>
<br>

Campaign Table
<img src = "Images/campaign_table_chck.png" width="1200"/>
<br>
<br>
<br>
<br>
Open the pgAdmin 4 contextual menu for each table and use the import feature to load the tables in the order they were created in the schema file.
<br>
<br>

Execute the crowdfunding_db_queries.sql script in pgAdmin 4 query tool, one at a time, to check that each table has been succesfully loaded with its data. 
<br>
<br>
<br>
Subcategory Table
<br>
<br>
<img src = "Images/subcat_table_load.png" width="600"/>
<br>
<br>
<br>
<br>
<br>

Category Table
<br>
<br>
<img src = "Images/category_table_load.png" width="600"/>
<br>
<br>
<br>
<br>
<br> 

Contacts Table
<br>
<br>
<img src = "Images/contacts_table_load.png" width="600"/>
<br>
<br>
<br>
<br>
<br>


Campaign Table
<br>
<br>
<img src = "Images/campaign_table_load.png" width="1200"/>
<br>
<br>
<br>
<br>
<br>
---


### **Part 5.** 
##### Project Readme 
##### Completed by T Barnett


---
#### Usage
1. Set up all software requirements 
2. Ensure that you have the appropriate CSV and XLSX files.
3. Run all the scripts as delineated the appropriate code editors: Jupyter Notebook and pgAdmin 4. 

#### Contributions
Contributions to this project are highly encouraged! If you wish to contribute, please follow these guidelines:

- Fork the crowdfunding_ETL repository and clone it locally.
- Create a new branch for your feature or bug fix.
- Commit your changes with descriptive commit messages.
- Push your branch to your forked repository.
- Submit a pull request to the original repository.
- Please ensure that your code adheres to the project's coding style and conventions.


If you encounter any issues or have suggestions for improvements, please open an issue on the GitHub repository.

### License
These projects are licensed under the MIT License. Feel free to use, modify, and distribute the code as per the terms of the license. 