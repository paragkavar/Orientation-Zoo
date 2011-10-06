#import "NotifyLog.h"
#import "Orientation.h"

@implementation NotifyLog

- (id) init
{
    self = [super init];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self
        selector:@selector(orientationChanged:)
        name:UIDeviceOrientationDidChangeNotification
        object:nil];
    return self;
}

- (void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

- (void) orientationChanged: (id) notification
{
    UIDeviceOrientation newIO = [[UIDevice currentDevice] orientation];
    NSLog(@"UIDevice notification, new orientation: %i [%@]", newIO, NSStringFromUIDeviceOrientation(newIO));
}

@end
