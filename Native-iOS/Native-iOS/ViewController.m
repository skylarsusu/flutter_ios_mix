//
//  ViewController.m
//  Native-iOS
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "NativeViewController.h"

@interface ViewController ()

@property (nonatomic) NativeViewController* nativeViewController;
@property (nonatomic) FlutterViewController* flutterViewController;
@property (nonatomic) FlutterBasicMessageChannel* messageChannel;

@end

static NSString* const emptyString = @"";
static NSString* const ping = @"ping";
static NSString* const channel = @"increment";

@implementation ViewController


- (NSString*) messageName {
  return channel;
}

- (void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender {

  if ([segue.identifier isEqualToString: @"NativeViewControllerSegue"]) {
    self.nativeViewController = segue.destinationViewController;
    self.nativeViewController.delegate = self;
  }

  if ([segue.identifier isEqualToString:@"FlutterViewControllerSegue"]) {
    self.flutterViewController = segue.destinationViewController;

    self.messageChannel = [FlutterBasicMessageChannel messageChannelWithName:channel
                                                             binaryMessenger:self.flutterViewController
                                                                       codec:[FlutterStringCodec sharedInstance]];

    ViewController*  __weak weakSelf = self;
    [self.messageChannel setMessageHandler:^(id message, FlutterReply reply) {
      [weakSelf.nativeViewController didReceiveIncrement];
      reply(emptyString);
    }];
  }
}

- (void)didTapIncrementButton {
  [self.messageChannel sendMessage:ping];
}

@end
