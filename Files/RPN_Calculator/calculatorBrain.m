//
//  calculatorBrain.m
//  RPN_Calculator
//
//  Created by admin on 04/05/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "calculatorBrain.h"

@implementation calculatorBrain

- (void)pushOperand:(double)operand {
    if ([_operandArray count] == 0)
    {
        _operandArray=[[NSMutableArray alloc]init];
        NSLog(@"init array");
    }
    [_operandArray addObject:[NSNumber numberWithDouble:operand]];
    NSLog(@"Array size: %lu", (unsigned long)[_operandArray count]);
}

//- (NSMutableArray *)operandArray {
//    if (! self.operandArray) {
//        self.operandArray=[[NSMutableArray alloc]init];
//    }
//    return self.operandArray;
//}

- (double) performOperation: (NSString*) operand {
    double temp = 0;
    if ([operand isEqualToString:@"+"]) {
        temp= [[_operandArray lastObject] doubleValue];
        [_operandArray removeLastObject];
        temp += [[_operandArray lastObject] doubleValue];
    }
    
    if ([operand isEqualToString:@"-"]) {
        temp= [[_operandArray lastObject] doubleValue];
        [_operandArray removeLastObject];
        temp = [[_operandArray lastObject] doubleValue] - temp;
    }
    
    if ([operand isEqualToString:@"*"]) {
        temp= [[_operandArray lastObject] doubleValue];
        [_operandArray removeLastObject];
        temp *= [[_operandArray lastObject] doubleValue];
    }
    
    if ([operand isEqualToString:@"/"]) {
        temp= [[_operandArray lastObject] doubleValue];
        [_operandArray removeLastObject];
        temp = [[_operandArray lastObject] doubleValue] / temp;
    }
    
    return temp;
    
}



@end
