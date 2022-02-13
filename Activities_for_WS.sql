/* [QCL WORKSHOP] SQL (Basic) 
 * Activities
 * by Vanessa Casillas (Gradute Fellow)
 */

/* WARNING: MAKE SURE TO CHECK NAMES OF TABLES,
 * THEY CAN BE A DIFFERENT NAME ON YOUR COMPUTER! */


/*Activity #1: Import file state_workforce and use select
 * How many rows and attributes does this table have? */
SELECT * FROM state_workforce;
/*Answer: 51 rows and 11 attributes */


/*Activity #2: Where Clause and Order by
 * a. Use where clause to find out how many people on average take longer than 20 mins to get to work?
 * b. Use Order by to find out what state has the longest on average time it takes to get to work? 
 */
SELECT State, 
Mean_Travel_Time_to_Work 
FROM state_workforce
WHERE Mean_Travel_Time_to_Work > 20
ORDER BY Mean_Travel_Time_to_Work DESC; 
/*Answer: 43 states and New York is highest */

/*Activity #3: Create Table and Insert Data
 * a. Create a table named state_people and add the attributes: 
 * 		State as a varchar with 20 characters, 
 * 		Employment_Firms_Total as a integer,  
 * 		Employment_Firms_Men_Owned as a integer, 
 * 		Employment_Firms_Women_Owned as a integer, 
 * 		Age_Percent_Under_18_Years as a float, 
 * 		and Age_Percent_65_and_Older as a float.
 * b. Insert data into your new table called state_people using a sql file in the downloaded github folder
 */
CREATE TABLE state_people (
State VARCHAR (20), 
Employment_Firms_Total INTEGER,
Age_Percent_Under_18_Years FLOAT, 
Age_Percent_65_and_Older FLOAT
);
/* Insert into table using file state_people_insert */
SELECT * FROM state_people;



/*Activity #4: Inner Join with Alias
 * Create an inner join using aliases with tables state_workforce and state_people. */
SELECT a.State, 
b.Mean_Travel_Time_to_Work, 
a.Employment_Firms_Total 
FROM state_people AS a 
JOIN state_workforce AS b 
ON a.state = b.State; 
