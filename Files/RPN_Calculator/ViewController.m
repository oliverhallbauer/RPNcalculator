//
//  ViewController.m
//  RPN_Calculator
//
//  Created by admin on 20/04/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "ViewController.h"
#import "calculatorBrain.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)Button:(UIButton *)sender {
    if ([_Output.text isEqualToString:@"0" ]) {
        _Output.text = [NSString stringWithFormat:@""];
    }
    _Output.text = [_Output.text stringByAppendingString:sender.currentTitle];
    
}

//- (IBAction)PlusButton:(UIButton *)sender {
//}
//
//- (IBAction)MinusButton:(UIButton *)sender {
//}
//- (IBAction)MultiplicationButton:(UIButton *)sender {
//}
//- (IBAction)DivisionButton:(UIButton *)sender {
//}

- (IBAction)enterButton:(UIButton *)sender {
    double temp = [_Output.text doubleValue];
    
    [aBrain pushOperand:temp];
    _Output.text = @"0";
}

- (IBAction)operationPressed:(UIButton *)sender {
    NSString *op = sender.currentTitle;
    double res = [aBrain performOperation:op];
    NSLog(@"Result: %f: ", res);
    _Output.text = [NSString stringWithFormat:@"%f", res];
    }
    

-(void)viewDidLoad{
    aBrain = [[calculatorBrain alloc] init];
}
@end
