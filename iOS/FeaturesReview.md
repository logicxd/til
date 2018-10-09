# Features Review

Categories, extensions, and protocols.

## Categories

* Used to add additional methods to existing classes.
* Cannot add properties and instances using extensions.
* Don't need source code for the class.

``` Objective-c
// 'NSString+MyFormatter.h'
@interface NSString (MyFormatter)
-(NSString *) sayHi;
@end 

// 'NSString+MyFormatter.m'
@implementation NSString (MyFormatter)
-(NSString *) sayHi {
  return @"Hi!";
};
@end

// 'main.m'

#import <Foundation/Foundation.h>
#import "NSString+MyFormatter.h"
void main() {
  [@"asdf" sayHi]; // Returns "Hi!";
}
```

## Extensions

* Add private properties to your class. Properties that are added in the '.h' file are public by default and can be changed by anyone outside the class.
* Need source code for the class.

``` Objective-c
// 'MyFormatter.m'

@interface MyFormatter() 
// (Private properties and instances goes here) 
@end

@implementation MyFormatter
// (your class implementation.)
@end
```

## Protocols

* Same as interfaces in Java.
* A list of methods that you want an object to perform without needing inheritance.
  * The methods are only signatures. Up to the person implementing to create the methods.

``` Objective-c
// 'Eraser.h'
@protocol Eraser <NSObject>

@required
-(void) sendEmptyString;
@optional
-(void) sendBlankSpaces;

@end

// 'MyFormatter.h'
@interface MyFormatter :NSObject <Eraser>
// (your interface signatures)
@end
```

