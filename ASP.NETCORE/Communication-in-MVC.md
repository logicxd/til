# Communication in MVC ASP.NET
Steps for communicating between MVC and database in ASP.NET. In short:
1. Sending data from View to Controller.
2. How the Controller uses a Handler to connect to database.
3. Interacting with the database in the Handler.
4. Sending data from Controller to View.

## Communication between MVC components

Using Facebook authentication as an example

#### Adding a User:
1. User logs into Facebook and allows the application to connect. The website(View) gets the access_token from the Facebook JS SDK.
2. Send the access_token from View to Controller using HTTP POST request.
3. The Controller uses a Handler that connects to the database to store access_token.

#### Getting Information:
1. User visits a page that requires data from database.
2. The View calls the Controller passing in an ID.
2. The server will query the database through Handler by passing the ID and socialMediaCode("FB") - which is stored in the Controller/Handler.
3. The response of the query will be then passed back to the view which can be displayed.
  * Each of Facebook account will have a socialMediaAccountId, access_token, etc..., BUT only render the socialMediaAccountId. You don't want to show sensitive information to the View. You can create a class just for returning back information.

## Sending data from View to Server.

## Sending data from Server to View.
http://www.c-sharpcorner.com/uploadfile/abhikumarvatsa/various-ways-to-pass-data-from-controller-to-view-in-mvc/

### View->Server->View
Use ajax. 
