# .NetCoreApp

### MVC
* Model: Classes that represent the data of the app and that use validation logic to enforce business rules for that data. Typically, model objects retrieve and store model state in a database.
* Views: Displays. UI part.
* Controllers: Classes that handle browser requests, retrieve model data, and then specify view templates that return a response to the browser. Handles and responds to user input and interaction.

### A Controller in an MVC App
```Csharp
using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace MvcMovie.Controllers
{
    public class HelloWorldController : Controller
    {
        //
        // GET: /HelloWorld/

        public string Index()
        {
            return "This is my default action...";
        }

        //
        // GET: /HelloWorld/Welcome/

        public string Welcome()
        {
            return "This is the Welcome action method...";
        }
    }
}
```

* Every `public` method in a controller is callable as an HTTP endpoint.
* URL routing logic used by MVC uses a format like: `/[Controller]/[ActionName]/[Parameters]`. For example `http://localhost:55967/HelloWorld/Welcome`
   - Can change the format in the __Startup.cs__ file.
```Csharp
app.UseMvc(routes =>
{
    routes.MapRoute(
        name: "default",
        template: "{controller=Home}/{action=Index}/{id?}");     <---- This line.
});
```

### Parameters in URL
Change the above method into the following:
```Csharp
public string Welcome(string name, int numTimes = 1)
{
    return HtmlEncoder.Default.Encode($"Hello {name}, numTimes: {numTimes}");
}
```
Now you can run the link `http://localhost:55967/HelloWorld/Welcome?name=Rick&numtimes=4` to get "Hello Rick, NumTimes is: 4"

* `$"Hello {name}, numTimes: {numTimes}"` is an [Interpolated String](https://msdn.microsoft.com/en-us/library/dn961160.aspx). Similar to the Java `printf` method but the variable is used inside the string itself.
* `HtmlEncoder.Default.Encode` is to protecct the app from malicious input (namely Javascript).

### Razor
Blends C# and HTML with templates.

Change the above method into the following:
```Csharp
public IActionResult Index()
{
    return View();
}
```
And create a folder for HelloWorld.


### Vocabs/Key Terms
#### Master-page
Every view that incorporates the master-page will have that kind of same view.

#### Render
Showing. The output of your server, the thing that the webpage are able to see.

#### Query
A question. It responds an answer in the form of a data.
