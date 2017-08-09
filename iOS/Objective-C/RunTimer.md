
# Runs the block after the entered seconds
Taken from [Reynaldo Gonzales](https://github.com/reygonzales)

```Objective-C
+ (void)runBlock:(void (^)())block afterTimeInSeconds:(CGFloat)seconds {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (seconds * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        block();
    });
}
```
