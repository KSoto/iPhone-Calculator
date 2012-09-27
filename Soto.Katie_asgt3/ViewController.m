//
//  ViewController.m
//  Soto.Katie_asgt3
//
//  Created by Lion User on 20/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//
/*
 Logic:
 1) Buttons 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ., +/- all update the LABEL in the view.
 2) Whenever any of the preceeding buttons are pressed, they are simply APPENDED to the
    current value of the label (so pressing 2, then ., then 1, then 3, will update the
    label to be 2.13)
 3) When an Operator button is pressed (+, -, =, /, *, square root), the number generated
    from the user's input in steps 1 and 2 are given to the MODEL, and the operation is 
    given to the model.
 4) the model decides if it has enough information to process a result. If it does, the
    variables will change, and the cycle continues.
 */

#include <math.h> //for isnan
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//create getters and setters for all our properties:
@synthesize cModel = _cModel;

@synthesize operationLabel = _operationLabel;
@synthesize operandLabel = _operandLabel;

@synthesize n1_button = _n1_button;
@synthesize n2_button = _n2_button;
@synthesize n3_button = _n3_button;
@synthesize n4_button = _n4_button;
@synthesize n5_button = _n5_button;
@synthesize n6_button = _n6_button;
@synthesize n7_button = _n7_button;
@synthesize n8_button = _n8_button;
@synthesize n9_button = _n9_button;
@synthesize n0_button = _n0_button;
@synthesize decimal_button = _decimal_button;
@synthesize neg_pos_button = _neg_pos_button;
@synthesize equal_button = _equal_button;
@synthesize subtract_button = _subtract_button;
@synthesize addition_button = _addition_button;
@synthesize division_button = _division_button;
@synthesize multipy_button = _multipy_button;
@synthesize root_button = _root_button;
@synthesize clear_button = _clear_button;

//if "cModel" is a null pointer, we need to initalize it
-(CalculatorModel*) cModel
{
    if(_cModel == nil)
    {
        _cModel = [[CalculatorModel alloc] init];
        
    }
    return _cModel;
}


/***********ADD DATA************************************
Add Data:
 -pressing 0, 1, 2... +/- or . will update the View's label.
*/

-(IBAction)n1_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"1"];
    
    //add it to the label
    self.operandLabel.text = labelString;
   
}

-(IBAction)n2_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"2"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n3_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"3"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n4_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"4"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n5_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"5"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n6_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"6"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n7_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"7"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n8_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"8"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n9_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"9"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n0_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //get the text currently in the label
    [labelString appendFormat:@"0"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)decimal_action :(UIButton*)sender
{
//*****TODO: if there is no number, start with "0." instead of "."
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //first search if there is already a decimal in the number / label:
    if([labelString rangeOfString:@"."].location == NSNotFound)
    {
        //if there is NOT a decimal, then it is safe to add it:
        [labelString appendFormat:@"."];
        
        //add it to the label
        self.operandLabel.text = labelString;
    }else if([labelString rangeOfString:@"."].location != NSNotFound)
    {
        NSLog(@"\nWarning: A decimal already exists in the number, no additional decimal has been added.");
    }else{
        NSLog(@"\nERROR: Decimal neither found nor not found");
    }

    
}

-(IBAction)neg_pos_action :(UIButton*)sender
{
    //clear the operationLabel
    self.operationLabel.text =nil;
    
    //the +/- button can be pressed at any time while entering the number,
    //making it positive or negative.
    
    //first get the current number (if there is one) from the label,
    //and store it in a (temporary) string:
    NSMutableString* tempString;
    tempString = (NSMutableString*)self.operandLabel.text;
    
    //now re-initialize the label, so we can start fresh by adding (or removing) the "-"
    self.operandLabel.text = nil;
    labelString = [NSMutableString string];
    
    if([tempString hasPrefix:@"-"])
    {
        //Number was already negative (started with "-") so now we need to remove the "-" to make it positive:
        tempString = (NSMutableString*)[tempString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }else if(![tempString hasPrefix:@"-"])
    {
        //add "-" to the beginning, making it negative
        [labelString appendFormat:@"-"];
    }else{
        NSLog(@"\nERROR: negative symbol was neither found nor not found");
    }
    
    //now append the rest of the number that was initially there:
    [labelString appendFormat:tempString];
    
    //add it to/update the label
    self.operandLabel.text = labelString;
    
}

/***********OPERATIONS************************************
 OPERATIONS:
 -pressing +, -, =... will tell the controller that the user is done entering the
  first operand, and wants to move on.
 -the Controller then tells the model what the first operand is, and what the operation is.
 */

-(IBAction)equal_action :(UIButton*)sender
{

    //if you just pressed "=", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 x ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed = before you entered any numbers! Enter a number first!");
        
    }else if([self.operandLabel.text length] > 0)
    {
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "=", just for looks
            self.operationLabel.text =@"=";
            
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //4 + 3 =
                self.cModel.secondWaitingOperation = '=';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //4 =
                //if you only pressed one number, then pressed "=", you just need to display that one number..
                //there are no operations to perform. So there's nothing to do.
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "=", just for looks
            self.operationLabel.text =@"=";
            
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //4 + 6 =
                self.cModel.secondWaitingOperation = '=';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //4 = 6. doesn't make sense. this is where we need to reset things.
                //we are going to make the LAST number, then number you want to deal
                //with. meaning if you type 4 = 6 + 1, you'll get 7.
                self.cModel.waitingOperand = self.cModel.incomingOperand;
                self.cModel.incomingOperand = nil;
                self.cModel.firstWaitingOperation = '\0';
                self.cModel.secondWaitingOperation = '\0';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
    
    continueOp=true;
    
}

-(IBAction)subtract_action :(UIButton*)sender
{
   
    //if you just pressed "-", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 - ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed - before you entered any numbers! Enter a number first!");
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==false))
    {
        //if "continueOp" is false, it means that = did not just run, so continue normally:
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "-", just for looks
            self.operationLabel.text =@"-";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '-';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '-';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "-", just for looks
            self.operationLabel.text =@"-";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '-';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '-';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==true))
    {
        //now set it back
        continueOp=false;
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "-", just for looks
            self.operationLabel.text =@"-";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '-';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '-';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, which is this one, so don't replace it
            //self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "-", just for looks
            self.operationLabel.text =@"-";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '-';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '-';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
}

-(IBAction)addition_action :(UIButton*)sender
{
    //if you just pressed "+", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 + ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed + before you entered any numbers! Enter a number first!");
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==false))
    {
        //if "continueOp" is false, it means that = did not just run, so continue normally:
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "+", just for looks
            self.operationLabel.text =@"+";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '+';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '+';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "+", just for looks
            self.operationLabel.text =@"+";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '+';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '+';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==true))
    {
        //now set it back
        continueOp=false;
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "+", just for looks
            self.operationLabel.text =@"+";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '+';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '+';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, which is this one, so don't replace it
            //self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "+", just for looks
            self.operationLabel.text =@"+";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '+';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '+';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
}

-(IBAction)division_action :(UIButton*)sender
{
    //if you just pressed "/", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 - ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed / before you entered any numbers! Enter a number first!");
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==false))
    {
        //if "continueOp" is false, it means that = did not just run, so continue normally:
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "/", just for looks
            self.operationLabel.text =@"/";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '/';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '/';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "-", just for looks
            self.operationLabel.text =@"/";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '/';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '/';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==true))
    {
        //now set it back
        continueOp=false;
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "/", just for looks
            self.operationLabel.text =@"/";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '/';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '/';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, which is this one, so don't replace it
            //self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "/", just for looks
            self.operationLabel.text =@"/";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = '/';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = '/';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
}

-(IBAction)multiply_action :(UIButton*)sender
{
    //if you just pressed "x", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 - ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed x before you entered any numbers! Enter a number first!");
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==false))
    {
        //if "continueOp" is false, it means that = did not just run, so continue normally:
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "x", just for looks
            self.operationLabel.text =@"x";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'x';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'x';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "x", just for looks
            self.operationLabel.text =@"x";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'x';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'x';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==true))
    {
        //now set it back
        continueOp=false;
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "x", just for looks
            self.operationLabel.text =@"x";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'x';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'x';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, which is this one, so don't replace it
            //self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "x", just for looks
            self.operationLabel.text =@"x";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'x';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'x';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
}

-(IBAction)root_action :(UIButton*)sender
{
    //'√' --> 'r'
    //special order of operations
    //if you just pressed "√", you must be done entering the first number.
    //done building a string, clear it
    labelString = [NSMutableString string];
    
    //let's first check that the first operand is NOT empty (4 - ...)
    if([self.operandLabel.text length] <= 0)
    {
        //no text in the label, so no numbers added so far
        NSLog(@"\nERROR: You pressed √ before you entered any numbers! Enter a number first!");
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==false))
    {
        //if "continueOp" is false, it means that = did not just run, so continue normally:
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "√", just for looks
            self.operationLabel.text =@"√";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'r';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'r';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, so let's set the next one.
            self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "√", just for looks
            self.operationLabel.text =@"√";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'r';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'r';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
        
    }else if(([self.operandLabel.text length] > 0)&(continueOp==true))
    {
        //now set it back
        continueOp=false;
        
        //there is some data in the label
        if(self.cModel.waitingOperand == nil)
        {
            
            //there IS NOT a first operand, so everything is ok so far.
            //let's get the number that they just entered, which is in the label
            //and give it to the model.
            self.cModel.waitingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "√", just for looks
            self.operationLabel.text =@"√";
            
            //replace whatever operator was there in the model with this one.
            //allows for the LAST operator pressed to be the one that is used.
            //this shouldn't happen, but let's just make sure that firstWaitingOperation is '\0'...
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'r';
                
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'r';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
            
        }else if(self.cModel.waitingOperand != nil)
        {
            //there IS a first operand, which is this one, so don't replace it
            //self.cModel.incomingOperand = (NSNumber*)self.operandLabel.text;
            
            //now let's clear that label, we gave it to the model so we don't need it anymore
            self.operandLabel.text = nil;
            
            //now let's update the operation label to display "√", just for looks
            self.operationLabel.text =@"√";
            
            //check to see if the firstOperation is already filled
            //(this will happen in a long string of operations)
            //for example, (4 + 3 -...) will have waitingOperand, incomingOperand, and firstOperation already filled.
            if(self.cModel.firstWaitingOperation != '\0')
            {
                //then set the next one:
                self.cModel.secondWaitingOperation = 'r';
            }else if(self.cModel.firstWaitingOperation == '\0'){
                //first waiting operation is free, set it.
                self.cModel.firstWaitingOperation = 'r';
            }else
            {
                NSLog(@"\nERROR: firstWaitingOperation is neither '\0' nor not '\0'.");
            }
        }else
        {
            NSLog(@"\nERROR: waitingOperand is neither nil nor not nil");
        }
    }else
    {
        NSLog(@"\nERROR: Label is neither nil nor not nil.");
    }
    
    [self.cModel doCalculations ];
    
    self.operandLabel.text = [NSString stringWithFormat:@"%@", self.cModel.waitingOperand];
    continueOp=true;
    
}

-(IBAction)clear_action :(UIButton*)sender
{
    //reset all the values
    self.cModel.waitingOperand = nil;
    self.cModel.firstWaitingOperation = '\0';
    self.cModel.secondWaitingOperation = '\0';
    self.cModel.incomingOperand = nil;
    labelString = [NSMutableString string];
    
    //clear the text labels
    self.operandLabel.text = nil;
    self.operationLabel.text = nil;
    
    continueOp = false;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //initialize variables
    self.cModel.waitingOperand = nil;
    self.cModel.firstWaitingOperation = '\0';
    self.cModel.secondWaitingOperation = '\0';
    self.cModel.incomingOperand = nil;
    labelString = [NSMutableString string];
    continueOp = false;
}

//******XCODE GENERATED******
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
