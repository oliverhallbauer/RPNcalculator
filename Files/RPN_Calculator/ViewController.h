//
//  ViewController.h
//  RPN_Calculator
//
//  Created by admin on 20/04/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "calculatorBrain.h"

@interface ViewController : UIViewController
{
    calculatorBrain *aBrain;
}
@property (strong, nonatomic) IBOutlet UILabel *Output;

@end

