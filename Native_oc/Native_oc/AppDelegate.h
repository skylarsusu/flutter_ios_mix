//
//  AppDelegate.h
//  Native_oc
//
//  Created by 苏宝敬 on 2021/1/2.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


//@interface AppDelegate : UIResponder <UIApplicationDelegate>
@interface AppDelegate : FlutterAppDelegate


@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

