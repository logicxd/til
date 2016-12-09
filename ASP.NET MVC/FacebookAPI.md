# Connecting to Facebook API in .NET Core

## Connecting Multiple Accounts
1. Click on connect, take to FB authentication page, type in username and pass. Get access_token.
2. Send access_token back to API (Controller),
3. Controller map access_token to the social media account in database with the logged in userId

## Getting information back for the view.
1. User goes to the FB page called "FB Page".
2. Backend will query the social media account table, passing in the current logged in userid and socialmediacode("FB").
3. The response of the query will be then passed back to the view which can be displayed. (This will show a hyper link of FB icon)
4. Each of FB will have the socialmediaaccountID, access_token, etc. BUT only render the socialmediaaccountID.
5. The JS function will receive the socialMediaAccountId from the links when clicked.
6. The JS function will pass the function to the API (controller).
7. The controller(backend) will query the database for the access_token, internally called the FB API based on w.e informatiion you want, and then the response from the FB is sent back to the view where the JS is calling.



Calls like these are possible: the one with dots for inner fields to select more fields. But I haven't tested it yet.

` https://graph.facebook.com/?fields=albums.fields(photos.fields(source))`

---
## Sources

* Check Postman for sample API calls.
* [Facebook's API](https://facebookapi.codeplex.com/SourceControl/latest)
* [How to Use Access Tokens](http://www.devils-heaven.com/facebook-access-tokens/)
* [Facebook's Graph API](https://developers.facebook.com/docs/graph-api/)
