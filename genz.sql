-- What is the gender distribution of respondents from India?

select count(Gender) AS Male_Respondents from genz
where Country ='India' AND Gender = "M";

Select count(Gender) AS Female_Respondents from genz
where Country ='India' AND Gender = "F";

----------------------------------------------------------------------------------------------------------------------------

-- What percentage of respondents from India are interested in education abroad and sponsorship?

select Count(Higher_Education_Aspiration)/(select count(*) from  genz )*100 AS Interedted_in_Higher_Education   from genz
where Higher_Education_Aspiration in ('Need sponsor','Yes');

----------------------------------------------------------------------------------------------------------------------------
-- What are the 6 top influences on career aspirations for respondents in India?

select distinct(Influencing_factors) from genz 
where Country ='India';

----------------------------------------------------------------------------------------------------------------------------
-- How do career aspiration influences vary by gender in India?

select distinct Closest_Aspirational_Job  as Male_career_aspirations from genz 
where Country='India' AND Gender='M';

select distinct Closest_Aspirational_Job  as Female_career_aspirations from genz 
where Country='India' AND Gender='F';

----------------------------------------------------------------------------------------------------------------------------
-- What percentage of respondents are willing to work for a company for at least 3 years?

 select count(Work_for_one_employer_for_more_than_3_years)/(select count(*) from genz )*100 as Willing_to_work_for_3years from genz
 where  Work_for_one_employer_for_more_than_3_years='Yes';
 
 ----------------------------------------------------------------------------------------------------------------------------
 -- How many respondents prefer to work for socially impactful companies? 
 
 select count(Work_for_Company_with_No_Social_Impact_Mission) as Work_for_socially_impactful_companies from  genz 
 where Work_for_Company_with_No_Social_Impact_Mission in (8,9,10);
 
 ----------------------------------------------------------------------------------------------------------------------------
 -- How does the preference for socially impactful companies vary by gender?
 
 select count(Work_for_Company_with_No_Social_Impact_Mission) as Work_for_socially_impactful_companies_by_males from  genz 
 where Work_for_Company_with_No_Social_Impact_Mission in (8,9,10) AND Gender='M';
 
 select count(Work_for_Company_with_No_Social_Impact_Mission) as Work_for_socially_impactful_companies_by_Females from  genz 
 where Work_for_Company_with_No_Social_Impact_Mission in (8,9,10) AND Gender='F';
 
 ----------------------------------------------------------------------------------------------------------------------------------------
 -- What is the distribution of minimum expected salary in the first three years among respondents?
 
 select distinct  Salary_expectations_for_first_3years ,count(Gender) as Respondents  from  genz 
 Group by  Salary_expectations_for_first_3years ; 
 
 -------------------------------------------------------------------------------------------------------------------------------
 -- What is the expected minimum monthly salary in hand?
 
 select Monthly_in_hand_salary_as_a_fresher  , count(Gender) from genz
group by  Monthly_in_hand_salary_as_a_fresher ;

----------------------------------------------------------------------------------------------------------------------------
-- What percentage of respondents prefer remote working?

select count( Work_for_company_that_has_NO_REMOTE_working_policy)/(select count(*) from genz )*100 as Remote_working_preferrene from genz
where   Work_for_company_that_has_NO_REMOTE_working_policy in (9,10);

-----------------------------------------------------------------------------------------------------------------------------
-- What is the preferred number of daily work hours? 

select distinct  (Daily_working_hours) , count(Gender) as Respondents  from genz
group by  Daily_working_hours;

------------------------------------------------------------------------------------------------------------------------------
-- What are the common work frustrations among respondents?

select  distinct Reasons_for_frustation from genz ; 

------------------------------------------------------------------------------------------------------------------------------
-- How does the need for work-life balance interventions vary by gender?

select distinct Full_week_break , Count(Gender) as Male_Respondents from genz 
where Gender ='M'
Group by Full_week_break;

select distinct Full_week_break , Count(Gender) as Female_Respondents from genz 
where Gender ='F'
Group by Full_week_break;

--------------------------------------------------------------------------------------------------------------------------------
-- How many respondents are willing to work under an abusive manager?

select count( Work_under_abusive_manager) as Work_under_abusive_manager from genz
where Work_under_abusive_manager ='Yes';

-------------------------------------------------------------------------------------------------------------------------------
-- What is the distribution of minimum expected salary after five years?

select distinct Salary_expectations_after_5years, Count(Salary_expectations_after_5years) from Genz
Group by Salary_expectations_after_5years;

------------------------------------------------------------------------------------------------------------------------------
-- What are the remote working preferences by gender? 

select count(Preferred_working_environment) as remote_working_by_males from genz
where  Preferred_working_environment ='remote' AND Gender='M'; 

select count(Preferred_working_environment) as remote_working_by_Females from genz
where  Preferred_working_environment ='remote' AND Gender='F'; 

----------------------------------------------------------------------------------------------------------------------------------
--  What are the top work frustrations for each gender? 

select  distinct Reasons_for_frustation  from genz
where Gender= 'M';

select  distinct Reasons_for_frustation from genz
where Gender= 'F';

---------------------------------------------------------------------------------------------------------------------------------
-- What factors boost work happiness and productivity for respondents?

select  distinct Reasons_for_happiness  from genz;

--------------------------------------------------------------------------------------------------------------------------------
-- What percentage of respondents need sponsorship for education abroad?

select Count(Higher_Education_Aspiration)/(select count(*) from  genz )*100 AS Needs_Sponsorship   from genz
where Higher_Education_Aspiration ='Need sponsor';





 
 
 
 
 
 

 

