//
//  AppDelegate.h
//  TinyRockets
//
//  Created by Jason on 5/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//
// change!
#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
