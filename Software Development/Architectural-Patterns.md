# Architectural Patterns

> Architectural Pattern is a general, reusable solution to a commonly occurring problem in software architecture.

* Model-View-Controller (MVC)
* Model-View-ViewModel (MVVM)

## Model-View-Controller (MVC)

* **Model**: classes that represent the data of the app and that use validation logic to enforce business rules for that data. Typically, model objects retrieve and store model state in a database.
* **Views**: displays UI part to the user.
* **Controllers**: classes that handle browser requests, retrieve model data, and then specify view templates that return a response to the browser. Handles and responds to user input and interaction.

## Model-View-ViewModel (MVVM)

![MVVC Pattern](https://cloud.githubusercontent.com/assets/12219300/21633772/0ebc2d46-d207-11e6-975c-70fe19b63ef5.png)

* **Model**: represents the entities that live on the server as well as the objects that are responsible for interacting with the data store your application uses and filling entities with data.
* **View**: the View's responsibilities include displaying data and collecting data from end users. A given View isn't responsible for retrieving data, performing any business rules or validating data.
* **ViewModel**: acts as the middle-man between the View and the Model. It's responsible for aggregating and storing data that will be bound to a View.

---

## Credit(s)

* Image citations are taken from else where, citations stated here https://github.com/logicxd/til/issues/1
* MVVM abstracted from tutorial: https://weblogs.asp.net/dwahlin/getting-started-with-the-mvvm-pattern-in-silverlight-applications
