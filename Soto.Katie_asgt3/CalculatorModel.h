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
    char firstWaitingOperation;
    char secondWaitingOperation;
    NSNumber* incomingOperand;
}

@property (nonatomic, retain) NSNumber* waitingOperand;
@property (assign)  char firstWaitingOperation;
@property (assign)  char secondWaitingOperation;
@property (nonatomic, retain)  NSNumber* incomingOperand;

-(void) doCalculations;

@end
