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
    type: 'POST',
    url: '/Facebook',
    dataType: "json",
    data: JSON.stringify({
        AccessToken: response.authResponse.accessToken
    }),
    contentType: "application/json; charset=utf-8",
    success: function (result)
    {
        console.log('SUCCESS ajax: ' + result.msg);
        if (result.isError != true)
        {
            var webHTML = '@Url.Action("AccountTypes", "Facebook")?id=' + result.socialMediaAccountId;
            window.location.replace(webHTML);
        }
        else
        {
            document.getElementById('status').innerHTML = "Could not connect";
        }
    },
    error: function (result)
    {
        console.log('ERROR ajax: ' + result.statusText);
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
