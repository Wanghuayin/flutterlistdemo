#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
#import "AppDelegate.h"
#import <ATSDK/AppBoard.h>

int main(int argc, char * argv[]) {
  @autoreleasepool {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[AppBoard sharedInstance] authWithAppKey:@"24914599" andAppSecret:@"4db9c4bc065b73ec97623d82ea0b5c94" andChannel:nil];
    });
    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
}
