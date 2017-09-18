# Rest

#### GET
Retrieves a copy of the resource. All URL requests are GET by default.

* Return status code 200 on success.
* Return 404 on fail.
* GET requests can be cached
* GET requests remain in the browser history
* GET requests can be bookmarked
* GET requests should never be used when dealing with sensitive data
* GET requests have length restrictions
* GET requests should be used only to retrieve data

#### POST
Creates a new resource.

* Return 201 (Created) on success.
* Return 400 (Bad Request) on fail.
* POST requests are never cached
* POST requests do not remain in the browser history
* POST requests cannot be bookmarked
* POST requests have no restrictions on data length

#### PUT
Replace or updates the resource specified.

* Return 204 (No Content) on success. Alternatively, 200 or 201 is fine if it returns data for new resources.
* Return 400 (Bad Request) on fail.
* Can also return 415 (Unsupported Media Type).
* Strictly speaking, the PUT request completely replaces the existing data with the data specified by the request.

#### DELETE
Removes the resource specified.

* Return 204 (No Content) or 200 on success if synchronously. Can also return 202 (Accepted) if the deletion is performed asynchronously.
* Return 404 (Not Found) on fail.

## Status Codes
### Success
* 200 - Ok.
* 201 - Created.
* 202 - Accepted. The request is valid and will be processed but has not been completed. Used for asynchronously executed information.
* 204 - No Content. Modifications that were successful but the response body contains no information.
* 206 - Partial Content. The response contains partial information from the GET request.

### Client-side error (4xx)
* 400 - Bad Request.
* 404 - Not Found.
$ 410 - Gone. Expired, archived, or deleted resources.
* 415 - Unsupported Media Type. Cannot handle the type specified in the 'Content-Type'.

### Server-side error (5xx)
*

#### Content-Type
Tells the server what type of data is being sent.
`Content-Type = "application/json"`
