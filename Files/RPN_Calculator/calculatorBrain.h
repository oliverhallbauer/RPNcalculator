//
//  calculatorBrain.h
//  RPN_Calculator
//
//  Created by admin on 04/05/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculatorBrain : NSObject

@property (nonatomic,retain) NSMutableArray * operandArray;

- (void) pushOperand:(double) operand;
- (double) performOperation: (NSString*) operand;

@end
