# Architectural Patterns

> Architectural Pattern is a general, reusable solution to a commonly occurring problem in software architecture.

* Model-View-Controller (MVC)
* Model-View-ViewModel (MVVM)

## Model-View-Controller (MVC)

* **Model**: classes that represent the data of the app and that use validation logic to enforce business rules for that data. Typically, model objects retrieve and store model state in a database.
* **Views**: displays UI part to the user.
* **Controllers**: classes that handle browser requests, retrieve model data, and then specify view templates that return a response to the browser. Handles and responds to user input and interaction.

### View Layer

What the user sees and interacts with. Inspect the view layer for:
> * Does it interact with the model layer?
> * Does it contain any business logic?
> * Does it try to do anything not related to UI?
>
> If you answer “yes” to any of these questions, you probably have an opportunity to clean up and refactor.

Useful link: https://www.raywenderlich.com/1073-model-view-controller-mvc-in-ios-a-modern-approach

### Controller Layer

The brain of the apop. This layer usually decides:
> * What should be accessed first: the persistence or the network?
> * How often should you refresh the app?
> * What should the next screen be and in what circumstances?
> * If the app goes to the background, what should be cleaned?

### Model Layer

Data as well as:
> * **Network Code**. The shape should be something like this. Ideally, you’d only use a single class for network communication across your entire app.
> * **Persistence Code**. You would implement this with Core Data or simply by saving an NSData blob directly to disk.
> * **Parsing Code**. Any objects that parse network responses and the like should be included in the Model layer as well.

## Model-View-ViewModel (MVVM)

![MVVM Pattern](https://user-images.githubusercontent.com/12219300/30954332-a189d1e6-a3e4-11e7-8a30-65b969944711.png)

* **Model**: represents the entities that live on the server as well as the objects that are responsible for interacting with the data store your application uses and filling entities with data.
* **View**: the View's responsibilities include displaying data and collecting data from end users. A given View isn't responsible for retrieving data, performing any business rules or validating data.
* **ViewModel**: acts as the middle-man between the View and the Model. It's responsible for aggregating and storing data that will be bound to a View.

## Command and Query Responsibility Segregation (CQRS)

> Command and Query Responsibility Segregation (CQRS) is a pattern that segregates the operations that read data (queries) from the operations that update data (commands) by using separate interfaces.

![CQRS design](https://user-images.githubusercontent.com/12219300/30954369-bd6ca3ac-a3e4-11e7-8c86-9f44e623f5a2.png)

Source: https://docs.microsoft.com/en-us/azure/architecture/patterns/cqrs. Note that this design divides the data store into separate physical stores for read and write operations, but CQRS can also be done with a single physical store as well. We'll focus mainly on separate physical stores.

Pros
* Can increase the performance and security of a system.
* Use in conjunction with Event Sourcing (ES) to make write commands to be append only. (Read up more on this, not too certain).

Cons
* Add complexity in terms of resiliency and eventual consistency.
* Unnecessary for simple CRUD design is sufficient.

---

## Credit(s)

* Image citations are taken from else where, citations stated here https://github.com/logicxd/til/issues/1
* MVVM abstracted from tutorial: https://weblogs.asp.net/dwahlin/getting-started-with-the-mvvm-pattern-in-silverlight-applications
* Other source: https://www.raywenderlich.com/1073-model-view-controller-mvc-in-ios-a-modern-approach 
