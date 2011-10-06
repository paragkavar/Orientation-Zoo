@class Controller, NotifyLog;

@interface Application : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
    Controller *root;
    NotifyLog *logger;
}

@property(retain, nonatomic) IBOutlet UIWindow *window;

@end

