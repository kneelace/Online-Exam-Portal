# AceIT -- Online Exam Portal

## Project Description 


![Dashboard Page](https://github.com/kneelace/Online-Exam-Portal/blob/master/images/dashboard%20page.png)

AceIT project is a web portal which is developed or implemented in java domain platform. This project is helpful for students, companies or any organization to conduct any examinations from this site. In this age of increased competition, various companies, organization’s face a common problem of conducting online exam by personally visiting to different colleges (in case of companies) for placement drives. Manually going through thousands of colleges and conducting interviews requires a lot of time, efforts and money, this is the reason that most of the companies prefer visiting only top most colleges. The students of low-grade colleges despite of having the calibre to compete are not getting enough exposure to job profiles of their choices and end up getting a low satisfying job. To reduce this gap between these companies or any organization and such potential candidates this platform will help the deserving candidates to showcase their conceptual skills through an online exam, based on which, the companies can filter out candidates according to their needs. 

>Basically, we are providing an online exam system where we host exams to create report of candidates which can be viewed by the 
>companies.This will not only help the companies or any organization to analyze and select the cream candidates which meet company’s 
>requirements but also, help the students to get exposure to enough companies.

## Project Objective

1. Online Examination System can reduce the hectic job of assessing the answers given by candidates manually.
2. Responses or the answers by the candidates can be checked automatically and instantly.
3. It will reduce paper work to be an integrated Online Examination System.
4. The result can be shown immediately to the students reducing the anxiety.
5. Can create various reports and graphs for evaluation purpose almost instantly when and where required.


## How to Install

> This is a end to end project which requires tables, triggers, sequences in database to be installed.
>So the first step will be setting up software tools.

> Install SQL Developer for DB

> This project runs on java so make sure Java is installed - java jdk 1.8 or higher.

>Run All Queries one by one from queries.txt which include create tables, insert dummy data, create sequences, etc.

>Clone the Project

> Make sure that you have a reliable internet connection for getting maven dependencies/plugins.

>Import the Project. Click on maven install.

>Install a Web Server, we used Tomcat Server, version 8 or above will do.

>and that's it. now one can use all the functionalities of this project.

## Modules

### User Module

In this module there will be a dashboard page/landing page where the user will first have to login by entering ‘student login id’ and ‘password’ to get access, if the user is visiting for the first time then user will have to click on the ‘Register’ button and will be directed to the new registration page where the user has to enter the all necessary required details mentioned on that page and then click on the ‘SUBMIT’ button, after which the user again will be directed to the homepage. 

After login the student user will get access to his/her profile which entails ‘APPEAR FOR EXAM’ option and ‘VIEW RESULTS’ button.

And also set of do and don'ts or basic instructions of the exams. This is hard coded as of now.

Before login if the user tries to get access to these buttons then the user will be directed to the homepage again and ask user to login first with a popup.

Now if the user is logged in then the user will be able to view user report of the exam the user has appeared for by clicking on the ‘VIEW RESULTS’ option to view the user’s score and along with this the user can appear for the new exam by clicking on the ‘APPEAR FOR EXAM’ option.

A session is generated capturing all the necessary details of the user.

After clicking on the new exam button, the user will be directed to the exam instruction page which will have a ‘START’ button which on click will take the user to the exam page. The exam is categorized into three levels starting from level 1 to the level 3.

The difficulty of the exams increases as the levels increase. There is a minimum passing criterion at each level. 

The user will be permitted to appear for the level 2 exam only if he passes the level 1 exam and so.

After clearing any level a report card will be generated and displayed immediately to the user.

The ones who have cleared the level 1 exam there on the report card they will be provided with a button to start the level 2 exam and so on. 

The candidates who have not cleared the exam will be provided with a ‘LOGOUT’ button.  

Every level exam is minimum time bounded.

### Admin Module

In this module the admin will be able login by entering ‘login id’ and ‘password’.

The ‘login id’ and ‘password’ is currently hardcoded admin. 

The admin after logged in will be directed to a new page where the admin can click on the ‘VIEW REPORTS’ button which on click will direct the admin to a new page where the admin will be able to enter necessary fields to fetch the students details according to the demand from the client. 

The most important functionality of admin is the ability create and conduct exams, both of which require adding or removing questions from db. 

This is probably the most complex part of code in my opinion.

Also, after login the admin will be able to add question or remove question by clicking on ‘CREATE EXAM’ button or ‘REMOVE QUESTIONS FILE’ button. 

If the admin clicks on the ‘CREATE EXAM’ button, then the admin will be directed to a new page where the admin will have to click on the ‘BROWSE’ button to upload the excel file of questions provided by the client in a desired format.
Preferred formats are XLSx, XLS, CSV.

Also some tags are required to be given like Type of exam, level of exam, pass criteria, Exam Time, etc.

After clicking on ‘UPLOAD button the file will be uploaded to the database.

If the admin clicks on the ‘Remove Question’ button, then the admin will again be directed to a new page where the admin will have to enter the file name admin wants to delete in the provided field and click on ‘DELETE’ button to delete the file.



### Feature Future Scope

>PASSWORD HASHING

We are currently saving the password in the database in plain text, which is a big security risk, and we are aware of that. We will soon update it with Argon2 java hashing technique or better.

>FORGOT PASSWORD

If user has forgot the ‘password’ then the user can click on ‘forgot password?’ link and then system will send a ‘reset password’ link on the email the user had provided at the time of registration. 

> EXAM INSTRUCTIONS FOR STUDENT

Every exam can have different passing criteria and different negative marking. We are working on allowing the admin somehow to be able to customize them for a set of students.   

>EMAIL CONNECTION

During Registration from student, we ask for email, but due to proxy issues and less time frame for development, we settled with generating reports online itself. 

>Add ADMIN

Admin user is hardcoded currently. We are working on allowing more admins to be added to the database.

>UPLOAD ONE BY ONE QUESITONS

Questions can be uploaded from a excel sheet only currently even though only few questions are to be uploaded. Which is again bounded to be done in certain format.
We are working on creating an page where admin can upload questions and answers from the UI itself using Jquery.
which makes the code more complex but design gets more intuitive.

>SEPERATION OF EXAM CRITERIA

asking for tags and level is fine while uploading a question but passing criteria and exam time should be seperated.

