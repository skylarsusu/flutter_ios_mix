//
//  ViewController.h
//  Native-iOS
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
#import "NativeViewController.h"

@protocol NativeViewControllerDelegate;

@interface ViewController : UIViewController <NativeViewControllerDelegate>


@end

