#import "Controller.h"
#import "View.h"

static int idCounter = 0;

@implementation Controller

- (id) init
{
    [super init];
    idNumber = idCounter++;
    return self;
}

- (void) loadView
{
    View *view = [[View alloc] initWithFrame:
        [[UIScreen mainScreen] applicationFrame]];
    self.view = [view autorelease];
}

- (void) viewWillAppear: (BOOL) animated
{
    NSLog(@"[controller #%i viewWillAppear:%i]", idNumber, !!animated);
    [super viewWillAppear:animated];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) io
{
    return YES;
}

- (void) didRotateFromInterfaceOrientation: (UIInterfaceOrientation) io
{
    [(id) self.view updateInfo];
}

@end