# Podfiles

Create a `Podfile` file without any extension. Add the pods that you want from this list.

```Shell
platform :ios, '8.2'

target 'SkyscannerLivePricing' do
        pod 'RPJSONMapper'
        pod 'Masonry'
        pod 'TTTAttributedLabel'
        pod 'Shimmer'
        pod 'AFNetworking', '~> 3.0'
end
```

### CocoaPods Installation
Official Website: [CocoaPods](https://cocoapods.org)

Installation: `sudo gem install cocoapods`
You can also specify the version such as `sudo gem install cocoapods -v 0.39.0` which is the version of coocapods I used from Rey.