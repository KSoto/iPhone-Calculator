//
//  CalculatorModel.h
//  Soto.Katie_asgt3
//
//  Created by Lion User on 25/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject
{
    NSNumber* waitingOperand;
    char waitingOperation;
    NSNumber* incomingOperand;
    NSNumber* result;
}

@property (assign) NSNumber* waitingOperand;
@property (assign) char waitingOperation;
@property (assign) NSNumber* incomingOperand;
@property (assign) NSNumber* result;

-(void) doCalculations;

@end
