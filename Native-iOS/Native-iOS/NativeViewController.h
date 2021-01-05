//
//  NativeViewController.h
//  Native-iOS
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@protocol NativeViewControllerDelegate <NSObject>

- (void)didTapIncrementButton;

@end


@interface NativeViewController : UIViewController

@property (strong, nonatomic) id<NativeViewControllerDelegate> delegate;
- (void) didReceiveIncrement;

@end

NS_ASSUME_NONNULL_END
