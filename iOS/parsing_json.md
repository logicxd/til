
### Why do we parse JSON?

To map data into models

As [LukeN](http://stackoverflow.com/users/280656/luken) says
> parsing is the process of translating some data into another kind of data that we can use. 
> In my practice, this is always turning a string or binary data into a **data structure** inside my program.

From [What's the best way to explain parsing to a new programmer](http://stackoverflow.com/questions/2933192/whats-the-best-way-to-explain-parsing-to-a-new-programmer)

### How do we parse [JSON](https://github.com/AlaricGonzales/til/blob/Alaric/iOS/JSON.md)?

**Example 1**: By iterating, using `objectForKey:`, and many `if-else` statements




```Objective-C
// Given //
@interface Person : NSObject
@property (nonatomic, copy) NSString *givenName;
@property (nonatomic, copy) NSString *familyName;
@property (nonatomic, strong) NSNumber *yearsOld;
@end

NSDictionary *json = @{
        @"firstName" : @"John",
        @"lastName" : @"Jacob",
        @"age" : @25,
};

//-------------------------------------------------//

Person *person = [Person new];
person.givenName = [json objectForKey:@"firstName"];
person.familyName = [json objectForKey:@"lastName"];
person.yearsOld = [json objectForKey:@"age"];

NSNumber *zipNumber = [json objectForKey:@"zip"];
if([zipNumber isKindOfClass:[NSNumber class]]
        person.zip = [zipNumber stringValue];

NSString *socialSecurityNumber = [json objectForKey:@"socialSecurityNumber"];
if([socialSecurityNumber isKindOfClass:[NSString class]])
    person.ssn = socialSecurityNumber;

NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];

NSString *birthDateString = [json objectForKey:@"birthDate"];
if([birthDateString isKindOfClass:[NSString class]]) {
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    person.birthDate = [dateFormatter dateFromString:birthDateString];
}

NSString *startDateString = [json objectForKey:@"startDate"];
if([startDateString isKindOfClass:[NSString class]]) {
    [dateFormatter setDateFormat:@"MMM dd yyyy"];
    person.startDate = [dateFormatter dateFromString:startDateString];
}
```

**Example 2**: By using a mapping library (Provided by [reygonzales / RPJSONMapper] (https://github.com/reygonzales/RPJSONMapper))

```Objective-C

Person *person = [Person new];
[[RPJSONMapper sharedInstance] mapJSONValuesFrom:json toInstance:person usingMapping:@{
        @"firstName" : @"givenName",
        @"lastName" : @"familyName",
        @"age" : @"yearsOld",
        @"heightInInches" : @"heightInInches",
        @"phoneNumber" : @"phone",
        @"state" : @"state",
        @"city" : @"city",
        @"zip" : [[RPJSONMapper sharedInstance] boxValueAsNSStringIntoPropertyWithName:@"zip"],
        @"socialSecurityNumber" : @"ssn",
        @"birthDate" : [[RPJSONMapper sharedInstance] boxValueAsNSDateIntoPropertyWithName:@"birthDate" usingDateFormat:@"MM-dd-yyyy"],
        @"startDate" : [[RPJSONMapper sharedInstance] boxValueAsNSDateIntoPropertyWithName:@"startDate" usingDateFormat:@"MMM dd yyyy"]
}];
```

* Example 3: By using a different mapping library

```
Insert usage of other JSON mapping library
```
