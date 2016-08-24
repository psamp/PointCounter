//
//  ViewController.m
//  MissionPossible
//
//  Created by Princess Sampson on 8/24/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, readwrite, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, readwrite, nonatomic) IBOutlet UIButton *rightButton;
@property(nonatomic, readwrite) NSInteger leftCounter;
@property(nonatomic, readwrite) NSInteger rightCounter;

- (IBAction)updateLeftButton;
- (IBAction)updateRightButton;
- (IBAction)resetAllButtons;
- (IBAction)updateButton:(UIButton *)sender
               withCount:(NSInteger)count;

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        _leftCounter = 0;
        _rightCounter = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateLeftButton {
    self.leftCounter++;
    [self updateButton:self.leftButton withCount:self.leftCounter];
}

- (IBAction)updateRightButton {
    self.rightCounter++;
    [self updateButton:self.rightButton withCount:self.rightCounter];

}

- (IBAction)updateButton:(UIButton *)sender
               withCount:(NSInteger)count {
    
    [sender setTitle:[NSString stringWithFormat:@"%@", @(count)] forState:UIControlStateNormal];
}

- (IBAction)resetAllButtons {
    self.leftCounter = -1;
    self.rightCounter = -1;
  
    [self updateLeftButton];
    [self updateRightButton];
    
}
@end
