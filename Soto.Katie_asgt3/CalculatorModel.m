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
    NSLog(@"\nfirstWaitingOperation: %c\nsecondWaitingOperation: %c\nwaitingOperand: %@\nincommingOperand: %@", self.firstWaitingOperation, self.secondWaitingOperation, self.waitingOperand, self.incomingOperand);
    
    if((self.waitingOperand==nil)&&(self.firstWaitingOperation=='\0')&&(self.incomingOperand==nil)&&(self.secondWaitingOperation=='\0'))
    {
        //All variables are nil:
        //nil _ nil
        NSLog(@"\nWARNING: All variables are set to nill, no operations were performed");
        
    }else if((self.waitingOperand!=nil)&&(self.firstWaitingOperation!='\0')&&(self.incomingOperand!=nil)&&(self.secondWaitingOperation!='\0'))
    {
        //ALL variables are NOT NILL:
        //4 + 4 -...
        //GREAT let's get calculating...
        
        //let's take waitingOperand, firstWaitingOperation, and incomingOperand and do the operation.
        if(self.firstWaitingOperation == '+')
        {
            //add the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] + [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            self.firstWaitingOperation = self.secondWaitingOperation;
            self.secondWaitingOperation = '\0';
            
             NSLog(@"\nfirstWaitingOperation: %c\nsecondWaitingOperation: %c\nwaitingOperand: %@\nincommingOperand: %@", self.firstWaitingOperation, self.secondWaitingOperation, self.waitingOperand, self.incomingOperand);
            
        }else if(self.firstWaitingOperation == '-')
        {
            //subtract the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] - [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            self.firstWaitingOperation = self.secondWaitingOperation;
            self.secondWaitingOperation = '\0';
            
            NSLog(@"\nfirstWaitingOperation: %c\nsecondWaitingOperation: %c\nwaitingOperand: %@\nincommingOperand: %@", self.firstWaitingOperation, self.secondWaitingOperation, self.waitingOperand, self.incomingOperand);
            
        }else if(self.firstWaitingOperation == '/')
        {
            
            //divide the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] / [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            self.firstWaitingOperation = self.secondWaitingOperation;
            self.secondWaitingOperation = '\0';
            
            NSLog(@"\nfirstWaitingOperation: %c\nsecondWaitingOperation: %c\nwaitingOperand: %@\nincommingOperand: %@", self.firstWaitingOperation, self.secondWaitingOperation, self.waitingOperand, self.incomingOperand);
            
        }else if(self.firstWaitingOperation == 'x')
        {
            //multiply the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] * [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            self.firstWaitingOperation = self.secondWaitingOperation;
            self.secondWaitingOperation = '\0';
            
            NSLog(@"\nfirstWaitingOperation: %c\nsecondWaitingOperation: %c\nwaitingOperand: %@\nincommingOperand: %@", self.firstWaitingOperation, self.secondWaitingOperation, self.waitingOperand, self.incomingOperand);
        }
    }

}
@end
