//
//  SLAMNEWSAppDelegate.m
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/19/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import "SLAMNEWSAppDelegate.h"

@implementation SLAMNEWSAppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Create resizable images
        UIImage *gradientImage44 = [[UIImage imageNamed:@"Navbar.png"]
                                    resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
              
        // Set the background image for *all* UINavigationBars
        [[UINavigationBar appearance] setBackgroundImage:gradientImage44
                                           forBarMetrics:UIBarMetricsDefault];
    }

- (void)dealloc
{
    [_window release];
    self.navigationController = nil;
    [super dealloc];
}

@end
