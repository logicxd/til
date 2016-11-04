# POST using .ajax

## POST using x-www-form-urlencoded
```
$.ajax({
              type: "POST",
              url: "Facebook/Edit/",
              data: {
                  ID: response.authResponse.accessToken,
                  Name: "x-www-encoded post"

              },
              contentType: "application/x-www-form-urlencoded",
              success: function (msg) {
                  console.log('UID: ' + response.authResponse.userID);
                  console.log('ID: ' + response.authResponse.accessToken);
              },
              error: function (msg) {
                  console.log("ERROR: " + msg.statusText);

              }
          });
```

## POST using JSON

```
$.ajax({
          type: "POST",
          url: "Facebook/Edit/",
          data: JSON.stringify({
              ID: response.authResponse.accessToken,
              Name: "JSON Post"
          }),
          contentType: "application/json",
          success: function (msg) {
              console.log('UID: ' + response.authResponse.userID);
              console.log('ID: ' + response.authResponse.accessToken);
          },
          error: function (msg) {
              console.log("ERROR: " + msg.statusText);

          }
      });
```

**IMPORTANT** - In the Controller, you need `[FromBody]` inside the parameter like this for JSON.

```C#
[HttpPost]
    public IActionResult Index([FromBody] FacebookAccount account)
    {
        var newAccount = FacebookHandler.CreateFacebookAccount(account);
        return View(newAccount);
    }

```
