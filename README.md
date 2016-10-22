# NTPKit
A simple NTP (Network Time Protocol) framework for iOS

## Quick Start

#### Default Server

##### Swift
```swift
import NTPKit
// ...
let server = NTPServer.default
let date = try? server.date()
print(date)
```
##### Objective-C
```objective-c
#import <NTPKit/NTPKit.h>
// ...
NTPServer *server = [NTPServer defaultServer];
NSDate *date = [server dateWithError:nil];
NSLog(@"%@", date);
```

#### Custom Server

##### Swift
```swift
import NTPKit
// ...
let server = NTPServer(hostname:"pool.ntp.org", port:123)
let date = try? server.date()
print(date)
```
##### Objective-C
```objective-c
#import <NTPKit/NTPKit.h>
// ...
NTPServer *server = [[NTPServer alloc] initWithHostname:@"pool.ntp.org" port:123];
NSDate *date = [server dateWithError:nil];
NSLog(@"%@", date);
```
