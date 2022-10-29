# Pewlett Hackard Analysis
Pewlett is a large company with thousands of employees. This is an old company and some employees are very close to retire now. Some of these postions required professional developments and training period. Therefore, the managemaent want to know more specific information about the positions that are going to be vacant and also the eligible employees who can provide the required traning/mentorships to new employees.  This analysis is focused on finding the above information so that the management can plan ahead of the time.

### Resources
Software: PGAdmin4


## Results
To conduct this analysis, six "csv" files were provied. First, an entity relationship diagram (ERD) was obtained including primary keys and the forien keys. The entity relationship diagram is shown in the following figure. This diagram helps to identitify the relationship between each table.

    
![EmployeeDB](https://user-images.githubusercontent.com/112113327/198818297-3f3a6e33-6119-41fa-a7f1-32ab82c0a37e.png)

After the relationships between the data were identityfied, analysis was continued to etract non-obvious information. Followings are some important information obtained throught the anylysis.

* As the first step, the title of the employees who are eligible for retirement were determined by considering their birthdates. It was assume that, those who were born between 1952 and 1956 are close to their retirement. The follwong figure shows the first 18 lines of the table.

   ![Screen Shot 2022-10-29 at 3 06 21 AM](https://user-images.githubusercontent.com/112113327/198818791-a19f8f2f-5522-488f-a73a-8f1c61f4409c.png)
  
* It can be observed that some employees have more than one position during their employeement. This is due to switching there positions internally. To avoid repeating names, all the duplication names were removed. The first part of the new table is shown bellow.
  
  
     ![Screen Shot 2022-10-29 at 3 14 17 AM](https://user-images.githubusercontent.com/112113327/198819054-6f076335-a282-4070-a8bc-d544083a75ce.png)

* In the next step, number of employees who are ready for the retirement were counted for each job title. There were SEVEN job titles and the headcount is shown in the following figure.

     ![Screen Shot 2022-10-29 at 3 19 24 AM](https://user-images.githubusercontent.com/112113327/198819232-c4c44b12-b250-498b-897c-b832532b6b5a.png)

 * The last thing of this anylysis was to determine the employees are eligible for mentorships. This was determined by the employees who have started work in 1965. The following table shows a few eligible employees for mentoring.    
 
 
    ![Screen Shot 2022-10-29 at 3 25 49 AM](https://user-images.githubusercontent.com/112113327/198819503-111e3c56-78a6-4f37-b627-c0dffcdb05ec.png)
