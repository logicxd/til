# Loading File Into Xcode Project

1. Add your file to the project by `File > Add Files to ...` (Optional?)
2. Add the file to `Build Phases > Copy Files > the "+" button`. Change **Destination** from `Absolute Path` to `Products Directory`. 
3. Include the code below. 


### Getting a NSString of the contents from the file
```Objective-C
+(NSString *)loadTextFromFileDestination:(NSString *)fileDest fileType:(NSString *)fileType{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileDest
                                                         ofType:fileType];
    NSError *error = nil;
    NSString *fileContent = [NSString stringWithContentsOfFile:filePath
                                                      encoding:NSUTF8StringEncoding
                                                         error:&error];
    if (error) {
        NSLog(@"ERROR while loading from file: %@", error);
    }
    
    return fileContent;
}
```

Source: http://stackoverflow.com/q/34689244/3920809 
