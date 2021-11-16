/* [QCL WORKSHOP] SQL (Basic) 
 * Activities
 * by Vanessa Casillas (Gradute Fellow)
 */

/* WARNING: MAKE SURE TO CHECK NAMES OF TABLES,
 * THEY CAN BE A DIFFERENT NAME ON YOUR COMPUTER! */


/*Activity #1: Import file state_workforce and use select
 * How many rows and attributes does this table have? */
select * from state_workforce_csv;
/*Answer: 51 rows and 11 attributes */


/*Activity #2: Where Clause and Order by
 * a. Use where clause to find out how many people on average take longer than 20 mins to get to work?
 * b. Use Order by to find out what state has the longest on average time it takes to get to work? 
 */
select State, 
Mean_Travel_Time_to_Work 
from state_workforce_csv 
where Mean_Travel_Time_to_Work > 20
order by Mean_Travel_Time_to_Work DESC; 
/*Answer: 43 states and New York is highest */

/*Activity #3: Create Table and Insert Data
 * a. Create a table named state_people and add the attributes: 
 * 		State as a varchar with 20 characters, 
 * 		Employment_Firms_Total as a integer,  
 * 		Employment_Firms_Men_Owned as a integer, 
 * 		Employment_Firms_Women_Owned as a integer, 
 * 		Age_Percent_Under_18_Years as a float, 
 * 		and Age_Percent_65_and_Older as a float.
 * b. Insert data into your new table called state_people using a sql file in the downloaded github folder
 */
create table state_people_csv(
State varchar (20), 
Employment_Firms_Total integer,  
Employment_Firms_Men_Owned integer, 
Employment_Firms_Women_Owned integer, 
Age_Percent_Under_18_Years float, 
Age_Percent_65_and_Older float
);
/* Insert into table using file state_people_insert */
select * from state_people_csv;



/*Activity #4: Inner Join with Alias
 * Create an inner join using aliases with tables state_workforce and state_people. */
select a.State, 
b.Mean_Travel_Time_to_Work, 
a.Employment_Firms_Total 
from state_people_csv as a 
join state_workforce_csv as b 
on a.state = b.State; 
