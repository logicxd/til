#Creating a TableViewController

**Note: These instructions are taken from [Codeschool.com : Try-iOS](https://www.codeschool.com/courses/try-ios)**


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


###Implementation Example:

**ProjectNameTableViewController.m**
```Objective-C
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1; // Returns 1 section //
 }
 
- (NSInteger)tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section {
   return 5; // Returns 5 rows (cells) //
  }
  
- (UITableViewCell *)tableView:(UITableView *)tableView
    cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
      // Checks to see if there are any cells of style "Title" we can reuse //
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"];
    
      // If there are no cells of style "Title" that can be reused, 
      // allocate a new cell with the reuseIdentifier:@"Title"
      if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                        reuseIdentifier:@"Title"];
        } 
        
        return cell; // Return the cell so it can be delivered to the table //
    }
```











