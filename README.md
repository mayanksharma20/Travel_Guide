The project carried out under the title of “Tour and Travel” is a sincere effort towards increasing the speed and improving the quality of tourism.
It is a web-based software system which allows user to discover and explore new places according to their convenience and choice.
It’s a package based software where the user can select the travel package.
User can also choose type of food ,hotel & room they want.
User can also select food according to their choice. 
The main objective of this project is to make travel easy and comfortable for the users right from finding the best places to travel and food.

MODULE SPECIFICATION<br /><br />
  1.Administration module (Admin can insert, update, delete from the database) <br/>
  2.Tourist module (Tourist can login and explore different places)<br />
  3.Package (Package have all the details of tour)<br />
  4.Booking module (After selecting the place tourist cab book the tickets) <br />
  5.Feedback (If the tourists experience is good, they can share the feedback accordingly.<br />


Table Name : Booking<br/><br/>
Field Name    Field Type	  Data Size	  Constraint	  Description<br/>
b_id	         int	        4 bytes	    Primary key	  It generates and stores the increment booking id.<br/>
t_name	      varchar	      20	        Not Null	    It stores the tourist’s name.<br/>
email	        varchar	      30	        Not Null	    It stores the tourist’s Email id.<br/>
from	        varchar		    20	        Not Null	    It stores the tourist’s departure place.<br/>
to	          varchar	      20	        Not Null	    It stores the tourist’s destination.<br/>
j_date	      date		      8	          Not Null	    It stores the journey date.<br/><br/>

 USECASE DIAGRAM FOR ADMIN
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/82fbc6d4-3dd8-4890-8528-78f2c076a907)

  SEQUENCE DIAGRAM FOR ADMIN
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/7db6840c-a0af-400e-a8f5-75724732f4d0)

  USER INTERFACE SCREENS
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/00f143c5-6fd5-4a09-8acd-9eb89bebe4fc)
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/d6e3b2ab-7b5f-44e6-b524-078cbbaf0ce7)
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/ff6ce452-3023-4368-8572-3aa7fbf69947)
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/3da23d28-afd1-421f-8e7e-d33fb16d6866)
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/bafa1609-ff2c-4e2a-8991-8fc478f697da)
  ![image](https://github.com/mayanksharma20/tour_and_travel/assets/47239249/45729b8f-b698-4286-ad40-9aa6bfa4cfa5)





