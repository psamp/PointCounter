//
//  ViewController.m
//  MissionPossible
//
//  Created by Princess Sampson on 8/24/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)leftButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)leftButton:(UIButton *)sender {
    NSInteger currentCount = [sender.currentTitle integerValue];
    currentCount++;
    
    [sender setTitle:[NSString stringWithFormat:@"%@", @(currentCount)] forState:UIControlStateNormal];
}
@end
