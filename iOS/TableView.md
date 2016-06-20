#Creating a TableViewController

###Create the file by doing the following in Xcode:

* ```File--> New File --> Cocoa Touch Class```

 *  ```Class: ProjectNameTableViewController```
 * ```Subclass of: UITableViewController```

###Pay attention to the following required methods:

1. `numberOfSectionsInTableView:`
 (Returns number of **sections**)
 
2. `tableView:numberOfRowsInSection:`
 (Returns number of **rows**)

3. `tableView:cellForRowAtIndexPath:`
( **Initializes** and **sets up** each cell in your tableView. Called every time the application needs to draw the cell. )

(Note: These instructions are taken from [Codeschool.com : Try-iOS](https://www.codeschool.com/courses/try-ios))

