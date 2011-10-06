#import "Application.h"
#import "NotifyLog.h"
#import "Controller.h"

@implementation Application
@synthesize window;

- (void) applicationDidFinishLaunching: (UIApplication*) application
{
    logger = [[NotifyLog alloc] init];
    root = [[Controller alloc] init];
    [window setBackgroundColor:[UIColor magentaColor]];
    [window addSubview:root.view];
    [window makeKeyAndVisible];
}


@end
