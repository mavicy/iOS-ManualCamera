#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

static AppDelegate* singleton = nil;

- (id)init
{
    singleton = [super init];
    return singleton;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIWindow*   window = self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    window.rootViewController = [ViewController new];
    window.backgroundColor = [UIColor redColor];
    [window makeKeyAndVisible];
    return YES;
}

+ (AppDelegate*) sharedAppDelegate
{
    return singleton;
}

@end

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
