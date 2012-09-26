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
@synthesize firstWaitingOperation;
@synthesize secondWaitingOperation;
@synthesize incomingOperand;
@synthesize result;

-(void)doCalculations
{
    NSLog(@"\nwaitingOperand: %@\nwaitingOperation: %c\nincomingOperand: %@", self.waitingOperand, self.firstWaitingOperation, self.incomingOperand);
    
    if((self.waitingOperand==nil)&&(self.firstWaitingOperation==NAN)&&(self.incomingOperand==nil))
    {
        //All variables are nil:
        //nil _ nil
        
    }else if((self.waitingOperand==nil)&&(self.firstWaitingOperation==NAN)&&(self.incomingOperand!=nil))
    {
        //Only the last operand is nil:
        //nil _ 4
        
    }else if((self.waitingOperand==nil)&&(self.firstWaitingOperation!=NAN)&&(self.incomingOperand==nil))
    {
        //Only the operation is nil:
        //nil + nil
        
    }else if((self.waitingOperand==nil)&&(self.firstWaitingOperation!=NAN)&&(self.incomingOperand!=nil))
    {
        //The first operand only is nil:
        //nil + 4
        
    }else if((self.waitingOperand!=nil)&&(self.firstWaitingOperation==NAN)&&(self.incomingOperand==nil))
    {
        //The first operand only is not nil:
        //4 _ nil
        
    }else if((self.waitingOperand!=nil)&&(self.firstWaitingOperation==NAN)&&(self.incomingOperand!=nil))
    {
        //The first and last operands are not nil:
        //1 _ 3
        
    }else if((self.waitingOperand!=nil)&&(self.firstWaitingOperation!=NAN)&&(self.incomingOperand==nil))
    {
        //The last operand only is nil:
        //1 + _
        
    }else if((self.waitingOperand!=nil)&&(self.firstWaitingOperation!=NAN)&&(self.incomingOperand!=nil))
    {
        //ALL variables are NOT NILL:
        //4 + 4
        
    }else{
        NSLog(@"\nERROR: all variables are neither nil nor not nil.");
    }

}
@end
