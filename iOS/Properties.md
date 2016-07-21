#Properties

#####What are properties?
Properties are variables that belong to a class.

#####Where would you define them?

Suppose you're defining the class for a Person

```Objective-C
// Person.h

@interface Person : NSObject

@end

```
The properties of this person are defined in the Person interface, 
indicating the attributes of the property and what type of object this property defines.

```Objective-C
// Person.h

@interface Person : NSObject

@property (nonatomic, strong) NSInteger *currentAge;
@property (nonatomic, strong) NSInteger *birthdayYear;
@property (nonatomic, copy) NSInteger *firstName;
@property (nonatomic, copy) NSInteger *lastName;

- (void)fullName;
@end
```
*What's happening?*
* `@property` is just the way properties are first declared.
* `(nonatomic, strong)` These are the attributes (settings, in other words) of the property. The default properties are `atomic`, `assign`, `readwrite`, and `strong`. 

#####What are these properties?

* `atomic` vs `nonatomic`
   * `atomic` guarantees that the getter method will return the *whole* value and the setter method will make sure the new value is set. Because of this, it performs *slower than* `nonatomic`. Note: While it ensures the return or set of the value, it is does not make it thread-safe. Thread-safe should be done through other methods.  
   * `nonatomic` doesn't provide the guarantees that `atomic` has, therefore making it *perform much faster* without the checks. The getter method also breaks the whole value into smaller parts so it is often used in GUI applications to make it perform without freezing while loading.

* `strong` vs `weak`
   * A `strong` object will continue to exist in memory as long as it points to it. It takes ownership of the object. 
   * A `weak` object points to an object as long as there is another `strong` property pointing to it. When there are no `strong` properties pointing to the object, the `weak` property will automically point to `nil`.

* `readwrite` vs `readonly`
   * `readwrite` sets the compiler to automatically generate getter and setter methods.
   * `readonly` only generates the getter method.
 
* `copy`
   * It copies the value of the object that it assigns to, makes a new instance with those values to make a clone, and takes strong ownership of that copy. So modifications to the copied object doesn't affect the original object. 
   * User must implement `<NSCopying>` in order to use `copy`. 

* `assign`
   * This is used for primitives. Tells compiler how to set the setter method for assignment. 

* `retain` (Might not be used anymore after ARC-Auto Reference Counting)
   * This is used when the attribute is a pointer to an object.
   
####How would you make use of these Properties?

You would make use of these properties as you are implementing your methods in `Person.m`.
  * Again, recall that properties are just variables that you can use 
  to define features of an object with a certain type of class.

```Ojective-C
// Person.m
@implementation Person
- (void) fullName {
    NSLog(@"What's cookin, %@", self.firstName);
  }
@end
```
In this example, I'm making the fullName method log "What's cookin " and whatever object I used firstName to define.

So, if I wrote the following in main:

```Objective-C
Person *myName = [[Person alloc] init];

myName.firstName = @"Banana";

[myName fullName];

```

The output would be "What's cookin banana".

*What's happening in the above code?*
* `Person *myName = [[Person alloc] init];` I'm allocating space for an object in class Person and I'm indicating that 
it'll be initialized with something.

* `myName.firstName = @"Banana";` I'm saying that myName will have the firstName property, 
which will be of the string "Banana".

* `[myName fullName];` Now, I'm sending the `fullName` message (or method) to the `myName` object,
which means the `fullName` will run and use my definition of firstName.



#Getters, Setters, and Instance Variables

Properties will generate a **Getter**, **Setter**, and **Instance Variable**.

####The Getter
* This is an *accessor method* that gets called every time you read a value from a property, and whatever that method returns is considered 
that property's value.
* So, if I were to declare a property: `@property NSNumber *someNumber = 21;`, accessing `someNumber`
is achieved by using a **getter**.
* **Getters**, by convention, are given the same name as the property.
  * Example: The getter method of `@property(nonatomic, strong) NSNumber *myBirthday;` is `myBirthday`

####The Setter
* This is an *accessor method* that gets called every time you change the value of a property.
* **Setters**, by convention, are given the name of the property prefixed by "`set`" and suffixed by "`:`".
  * Example: The setter method of `@property(nonatomic, strong) NSNumber *myBirthday;` is `setMyBirthday:`
* If you do not want the **setter** to change `myBirthday`, you would have to define the property with the `readonly` 
attribute. The property by default is defined with a `readwrite` attribute.

####Instance Variables
* Instance variables are generated by the compiler if the property is set to `readwrite` (which is already set by default).

  * These variables hold their value for the life of the object. When the first object is created (through `alloc`),
the memory used for the instance variable is allocated, and then freed when the object is deallocated.

  * Instance variables, by convention, are given the same name of the property prexied by an underscore `_`
  
**How do you access Instance Variables?**
* Instance variables are accessed directly in the implementation of any of the methods the instance variable belongs to.

[Useful Explanation of Instance Variables & Usage](https://teamtreehouse.com/community/what-is-an-instance-variable-in-objective-c)

* The **setter** takes an object of the property's defined class as a parameter and changes the instance variable to be that object.


```Objective-C
#import <Foundation/Foundation.h>

// Person.h
@interface Person : NSObject

@property(nonatomic, strong) NSString *firstName;

- (void) fullName;

@end

// Person.m
@implementation Person

- (void) fullName {
    NSLog(@"What's cookin %@", _firstName);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *myName = [[Person alloc] init];
        [myName setFirstName:@"Herro"];
        [myName fullName];
    }
    return 0;
}
```
*What's happening? [2]*

* `@property(nonatomic, strong) NSString *firstName;`  Declaring `*firstName` as an object of type `NSString`
as a property for Person.


```Objective-C
-(void) fullName {
    NSLog(@"What's cookin %@", _firstName);
    
}
``` 
* This is implementing the `fullName` to make it print "What's cookin" with an **instance** of `firstName`.

```Objective-C
[myName setFirstName:@"Herro"];

[myName fullName];
``` 

* This is using the **setter** of `firstName` to set the **instance** **variable** `_firstName` to "Herro",
  then sending the **getter** method `fullName` to `myName`, which reads the value of `myName` and returns whatever 
  value `myName` is.

**Links to quick overview of property types and attributes of properties**

[Attributes: iOS-Blog](http://www.ios-blog.co.uk/tutorials/objective-c/objective-c-property-attribute-reference-guide/)

[Attributes: realm-io](https://realm.io/news/tmi-objective-c-property-attributes/)

**Links to Getters, Setters, and Instance Variables**

[Apple's Documentation : Getters, Setters, Instance Variables](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/EncapsulatingData/EncapsulatingData.html)


















