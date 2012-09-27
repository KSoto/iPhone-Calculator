//
//  CalculatorModel.m
//  Soto.Katie_asgt3
//
//  Created by Lion User on 25/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

//in an example, let's say that you press 4 + 5 - , the following variables will be set as...
@synthesize waitingOperand;         // 4
@synthesize firstWaitingOperation;  // +
@synthesize secondWaitingOperation; // -
@synthesize incomingOperand;        // 5

-(void)doCalculations
{

    if((self.waitingOperand==nil)&&(self.firstWaitingOperation=='\0')&&(self.incomingOperand==nil)&&(self.secondWaitingOperation=='\0'))
    {
        //All variables are nil:
        //nil _ nil
        NSLog(@"\nWARNING: All variables are set to nill, no operations were performed");
        
    //this "r" loop is outside of the all != nil loop BECAUSE square root and one number can be enough to have a result.
    //for example, 4 + doesn't mean anything, but 9 √ does. so evaluate it immediately.
    }else if(self.firstWaitingOperation == 'r')
    {
        //unable to use '√' for character, says it's too large. SO I'll just use 'r'
        self.waitingOperand = [NSNumber numberWithDouble:sqrt([self.waitingOperand doubleValue])];

        self.incomingOperand = nil;
        if(self.secondWaitingOperation != '=')
        {
            //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over)
            self.firstWaitingOperation = self.secondWaitingOperation;
        }else if(self.secondWaitingOperation == '='){
            //else, ignore it, get rid of it, clear it
            self.firstWaitingOperation = '\0';
        }
        self.secondWaitingOperation = '\0';
        
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
            if(self.secondWaitingOperation != '=')
            {
                //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over
                self.firstWaitingOperation = self.secondWaitingOperation;
            }else if(self.secondWaitingOperation == '='){
                //else, ignore it, get rid of it, clear it
                self.firstWaitingOperation = '\0';
            }
            self.secondWaitingOperation = '\0';
            
        }else if(self.firstWaitingOperation == '-')
        {
            //subtract the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] - [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            if(self.secondWaitingOperation != '=')
            {
                //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over
                self.firstWaitingOperation = self.secondWaitingOperation;
            }else if(self.secondWaitingOperation == '='){
                //else, ignore it, get rid of it, clear it
                self.firstWaitingOperation = '\0';
            }
            self.secondWaitingOperation = '\0';
            
        }else if(self.firstWaitingOperation == '/')
        {
            
            //divide the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] / [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            if(self.secondWaitingOperation != '=')
            {
                //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over
                self.firstWaitingOperation = self.secondWaitingOperation;
            }else if(self.secondWaitingOperation == '='){
                //else, ignore it, get rid of it, clear it
                self.firstWaitingOperation = '\0';
            }
            self.secondWaitingOperation = '\0';
              
        }else if(self.firstWaitingOperation == 'x')
        {
            //multiply the two numbers, put the result in waitingOperand, reset incomingOperand, put
            //the waiting operation in the firstOperation slot, and reset the secondOperation slot.
            self.waitingOperand = [NSNumber numberWithFloat:([self.waitingOperand floatValue] * [self.incomingOperand floatValue])];
            self.incomingOperand = nil;
            if(self.secondWaitingOperation != '=')
            {
                //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over
                self.firstWaitingOperation = self.secondWaitingOperation;
            }else if(self.secondWaitingOperation == '='){
                //else, ignore it, get rid of it, clear it
                self.firstWaitingOperation = '\0';
            }
            self.secondWaitingOperation = '\0';
        }
        
        //at the end of these x, +, /, - loops, we need to have a NEW loop that will evaluate the square root if it is left over.
        //this will check if the first operation was set to square root AFTER all operations have been performed.
        //if true, evaluate that root!
        if(self.firstWaitingOperation == 'r')
        {
            //unable to use '√' for character, says it's too large. SO I'll just use 'r'
            self.waitingOperand = [NSNumber numberWithDouble:sqrt([self.waitingOperand doubleValue])];
            
            self.incomingOperand = nil;
            if(self.secondWaitingOperation != '=')
            {
                //carry the opertaion over, ONLY if it is NOT an = (no need to carry that over)
                self.firstWaitingOperation = self.secondWaitingOperation;
            }else if(self.secondWaitingOperation == '='){
                //else, ignore it, get rid of it, clear it
                self.firstWaitingOperation = '\0';
            }
            self.secondWaitingOperation = '\0';
        }
    }//end all != nil loop.
    
    //After these loops it's possible that the first operation will be set to "=". We don't want that.
    if(self.firstWaitingOperation == '=')
    {
        self.firstWaitingOperation = '\0';
    }
    
}
@end
