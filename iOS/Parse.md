
### What does it mean to Parse? 

As [someone said on stack overflow,](http://stackoverflow.com/questions/2933192/whats-the-best-way-to-explain-parsing-to-a-new-programmer) parsing can be explained as the process of translating some data into another kind of data that we can use.

*"In my practice, this is always turning a string or binary data into a **data structure** inside my program.*

Parsing can also be seen as identifying what the data actually represents.


### What is parsing often used for?

**Example 1**: Communicating with [JSON](https://github.com/AlaricGonzales/til/blob/Alaric/iOS/JSON)
* If you're given a **JSON** and you are asked to pass the data from a website into an app you've created in Objective-C, the best way to do that is to **parse** the data given by the **JSON** for it to be used in Objective-C. 
	*  **JSON**s are typically gigantic and contains updated information from a server backend.  Making good use of them will help your programs maintain data structures and exchange data between applications. 
		* [Read more on Objective C's native libraries for JSONs](https://www.raywenderlich.com/5492/working-with-json-in-ios-5)


**Example 2**: Making use of an [API](https://github.com/AlaricGonzales/til/blob/Alaric/iOS/API)

* **HTTP API**s often communicate in JSON. If you were to make use of an API to create your own features, you'd **parse** the data so that Objective-C can implement the API in your app.
