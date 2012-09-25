//
//  CalculatorModel.m
//  Soto.Katie_asgt3
//
//  Created by Lion User on 25/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

@synthesize waitingOperand;
@synthesize waitingOperation;
@synthesize incomingOperand;
@synthesize result;

-(void)doCalculations
{
    NSLog(@"\nwaitingOperand: %@\nwaitingOperation: %c\nincomingOperand: %@", self.waitingOperand, self.waitingOperation, self.incomingOperand);
    
    /*
    //if all variables are set...
    if((waitingOperand != nil)&&(waitingOperation != NAN)&&(incomingOperand != nil))
    {
        NSLog(@"\nAll variables are set");
        if(waitingOperation == '+')
        {
            //self.operandLabel.text = [NSString stringWithFormat:@"%@", (waitingOperand + incomingOperand)];
        }else if(waitingOperation == '.')
        {
            //result = waitingOperand +
        }
    }else{
        
        NSLog(@"\nnot all variables are set");
    }
     */
    
}

@end
