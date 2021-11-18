/* [QCL WORKSHOP] SQL (Basic) 
 * Hands-on
 * by Vanessa Casillas (Graduate Fellow)
 */

/* WARNING: MAKE SURE TO CHECK NAMES OF TABLES,
 * THEY CAN BE A DIFFERENT NAME ON YOUR COMPUTER! */


/* Select Statment with wildcard */
select * from state_crime_csv;

/* Select Statment */
select Data_Population, 
Data_Totals_Property_Theft, 
Data_Totals_Violent_Robbery 
from state_crime_csv;

/* Where Clause */
select Data_Population, 
Data_Totals_Property_Theft, 
Data_Totals_Violent_Robbery 
from state_crime_csv 
where Data_Totals_Violent_Robbery >=3000;

/* Order By */
select State, 
Data_Population, 
Data_Totals_Property_Theft,
Data_Totals_Violent_Robbery 
Crime_Year 
from state_crime_csv 
where Data_Totals_Violent_Robbery >=3000 
order by Data_Population DESC; 

/* Group By */
select State, 
Data_Rates_Property_Theft, 
Data_Totals_Violent_Robbery,
Data_Population
from state_crime_csv
where Data_Totals_Violent_Robbery > 10000
group by State 
order by Data_Totals_Violent_Robbery DESC; 

/* Create Table */
create table state_computer_data_csv(
State Varchar (20), 
Housing_Persons_per_Household Float, 
Housing_Households_with_a_computer Float, 
Housing_Households_with_a_Internet Float
);

/* Insert into */
insert into state_computer_data_csv
Values('Alabama', 2.55, 85.5, 76.4);

/* View table that was created */
select * 
from state_computer_data_csv;

/* Alternative view of Insert into */

select * 
from state_computer_data_csv;

/* Inner Join */
select state_computer_data_csv.State, 
state_computer_data_csv.Housing_Households_with_a_computer, 
state_crime_csv.Data_Totals_Property_Theft 
from state_computer_data_csv
join state_crime_csv 
on state_computer_data_csv.state = state_crime_csv.State; 

/* Alias */
select a.State, 
a.Housing_Households_with_a_computer, 
b.Data_Totals_Property_Theft, 
b.Data_Totals_Violent_Robbery 
from state_computer_data_csv as a 
join state_crime_csv as b 
on a.state = b.State; 
