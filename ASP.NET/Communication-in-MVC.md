# Communication between different components in MVC

1. Sending information from the View to the Controller.
2. How the Controller uses a Handler to connect to database.
3. Interacting with the database in the Handler.
4. Sending information from the Controller to the View.

## Sending information from the View to the Controller.

There are two different ways that I know right now: form and ajax.
Form sends data to the Controller and then reload the page based on what's returned by that Controller.
Ajax sends data asynchronously so when the Controller returns something, it doesn't need to reload the page and receives it on the current page.

Form example:
```HTML
View:
<form asp-controller="Post" asp-action="Create" data-ajax="true" data-ajax-method="POST" >
    <textarea id="content" name="content" class="form-control no-border" rows="3" placeholder="What do you want to share?"></textarea>
    <input type="file" name="mediaFile" id="mediaFile" />
    <input name="socialMediaCode" id="socialMediaCode" />
    <input type="submit" name="submit" value="Send"/>
</form>
```
```CS
In PostController:
[HttpPost]
public async Task<IActionResult> Create(string content, string socialMediaCode)
{
  // Something.
}
```

Ajax example:
(TODO: insert link to point to the other file that shows ajax examples)

## Sending information from the Controller to the View.
http://www.c-sharpcorner.com/uploadfile/abhikumarvatsa/various-ways-to-pass-data-from-controller-to-view-in-mvc/
