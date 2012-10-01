//
//  CalculatorModel.m
//  Soto.Katie_asgt3
//
//  Author: Katie Soto
//  Project: iPhone Calculator
//  Author's Email: KReneSoto@gmail.com
//  Author's Phone: (714) 213-2228
//  Date Created: 9/2012
//  Class: CSUF CPSC 491T - iPhone Mobile App Development
//  Professor: Michael Shafae
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//  Problem Statement: Write an iPhone application that accepts infix notation
//      arithmetic expressions. The calculator accepts manual input of real
//      numbers as operands and a fixed set of unary and binary operators. The possible
//      operators are -, +, ÷, x, ., ±, =, √, and AC.
//  File Description: This file is our Model's interface. It is being used to store
//      all the important information passed to it from the controller. It also does
//      the actual mathematical calculations.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject
{
//these 4 variables are used to store the operations and operands.
//in an example, let's say that you press 4 + 5 - . The following variables will be set as...    
    NSNumber* waitingOperand;   //4
    char firstWaitingOperation; //+
    char secondWaitingOperation;//-
    NSNumber* incomingOperand;  //5
}

@property (nonatomic, retain) NSNumber* waitingOperand;
@property (assign)  char firstWaitingOperation;
@property (assign)  char secondWaitingOperation;
@property (nonatomic, retain)  NSNumber* incomingOperand;

//this method does the calculations! Called by the controller.
-(void) doCalculations;

@end
