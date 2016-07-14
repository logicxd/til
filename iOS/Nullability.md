<h1>Nullability (_Nullable vs _Nonnull)</h1>

<h3>What is Nullability?</h3>

Nullability checks are `_Nullable` and `_Nonnull` as of the Xcode 7. From previous releases, there are also `nullable`, `nonnullable`, `__nonnull`, and `__nullable`.

`_Nullable` specifies that the type may be `NULL` or `nil` while `_Nonnull` specifies that the type may not. If the nullability types are not followed by the programmer, then warnings will be generated.

<h3>Differences in Naming Convention</h3>

`_`(single) and `__`(double) underscored nullability checks need to be placed <u>after</u> the type definition. <strong>Non-underscored</strong> ones need to be placed <u>before</u> the type definition. 

Examples from <a href="http://stackoverflow.com/questions/32452889/difference-between-nullable-nullable-and-nullable-in-objective-c">StackOverFlow</a>:

<strong>Declarations</strong>
```Objective-C
- (nullable NSNumber *)result
- (NSNumber * __nullable)result
- (NSNumber * _Nullable)result
```

<strong>Parameters</strong>
```Objective-C
- (void)doSomethingWithString:(nullable NSString *)str
- (void)doSomethingWithString:(NSString * _Nullable)str
- (void)doSomethingWithString:(NSString * __nullable)str
```

<strong>Properties</strong>
```Objective-C
@property(nullable) NSNumber *status
@property NSNumber *__nullable status
@property NSNumber * _Nullable status
```
