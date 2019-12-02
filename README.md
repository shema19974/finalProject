# README

* Leave Monitoring System is an application that employees will use to request for a leave to prevent loss of leave information data and time consuming caused by the current used system which is paperwork.			

* Ruby version
    * ruby '2.6.4'
* Rails version
    * rails '5.2.3'

# Function list

* The system should allow an employee to sign in.
* The system should allow the allowed employee to login and logout on the system.
    * login using email and password.
* The logged in user should be able to view his details (or profile), edit and    drop his/her account.
* The system should allow an employee to create a profile picture.
* The system should allow an employee to apply for a leave.
* The system should allow the admin to create, edit and delete an employee.
* The system should allow the admin to add, delete and drop a department.
* The system should allow the admin to approve or deny the employee who applied   for the leave.
* The system should allow the admin to view all the details of employees
 including the details of the leave applied by a specific employee.
* The system should allow an employee to make a post asking if at a specific      date, they will be no work or it is a day off for all employees.
* The system should allow an employee to like or unlike a given post.
* The system should allow an employee to make a comment on a specific post.

# Catalog design

* https://docs.google.com/spreadsheets/d/14Mu9H8NsQrz2cDBTkwCKntSOoyr0GR4p6PFgbtUmYoY/edit?usp=sharing

# Table definition

* https://docs.google.com/spreadsheets/d/10j6dHcqv4taojPN_f8rTMQkjUTxH9RS5ZJmyka8zX5k/edit?usp=sharing

# Entity relationship diagram(ERD)

* https://docs.google.com/spreadsheets/d/1awXzx0yGuLHZlo4pLlZdguV-62fM5Gsz37rqNVUh0Uo/edit?usp=sharing

# Screen transition diagram

* https://docs.google.com/spreadsheets/d/1SUw7AREUqRHk_EnWtWsxPGq91bnUHsAYEIb5xTgwWGc/edit?usp=sharing


# Screen wire frame( web assumption)

* https://drive.google.com/file/d/1TJn71RtLzj1PoWZwZ7Suu3lG25KRhdzS/view?usp=sharing

# Gem to be used

* carrierwave
* ransack
* acts_as_votable
* rails_admin
* devise