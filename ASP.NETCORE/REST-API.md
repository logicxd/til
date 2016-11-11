# Rest API

**REST Protocol** allows you to transfer JSON data over the HTTP protocol. Allows transfer from mobile application to the server.

## MVC
* **Model**: Store the structure of the data between the server and the client.
Ex: transition class, user class, account class, ...
* **View**: The client. Shows data and interact with the user.
* **Controller**: Accepts the call from the client and handles it.


## API Calling

`/Facebook/AccountType?id=value1&name=value2`

#### GET
Information retrieval. All URL requests are GET by default (I'm not too sure on this).

* GET requests can be cached
* GET requests remain in the browser history
* GET requests can be bookmarked
* GET requests should never be used when dealing with sensitive data
* GET requests have length restrictions
* GET requests should be used only to retrieve data

#### POST
Changes the state of the server.

* POST requests are never cached
* POST requests do not remain in the browser history
* POST requests cannot be bookmarked
* POST requests have no restrictions on data length

#### Content-Type
Tells the server what type of data is being sent.

`Content-Type = "application/json"`
