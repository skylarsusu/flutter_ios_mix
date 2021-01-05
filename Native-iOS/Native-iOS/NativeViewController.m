//
//  NativeViewController.m
//  Native-iOS
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

#import "NativeViewController.h"

@interface NativeViewController ()
@property int counter;
@property (weak, nonatomic) IBOutlet UILabel* incrementLabel;
@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.counter = 0;
}

- (IBAction)handleIncrement:(id)sender {
  [self.delegate didTapIncrementButton];
}

- (void)didReceiveIncrement {
  self.counter++;

  NSString* text = [NSString stringWithFormat:@"Flutter button tapped %d %@.",
                                              self.counter,
                                              (self.counter == 1)? @"time" : @"times"];
  self.incrementLabel.text = text;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
