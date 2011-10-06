@class Controller, NotifyLog;

@interface Application : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
    Controller *root;
    NotifyLog *logger;
}

@property(strong, nonatomic) IBOutlet UIWindow *window;

@end

