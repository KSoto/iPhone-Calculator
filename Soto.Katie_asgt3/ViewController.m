//
//  ViewController.m
//  Soto.Katie_asgt3
//
//  Created by Lion User on 20/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

#include <math.h> //for isnan()
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)n1_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"1"];
    
    //add it to the label
    self.operandLabel.text = labelString;
   
}

-(IBAction)n2_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"2"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n3_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"3"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n4_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"4"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n5_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"5"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n6_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"6"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n7_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"7"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n8_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"8"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n9_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"9"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)n0_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"0"];
    
    //add it to the label
    self.operandLabel.text = labelString;
}

-(IBAction)decimal_action :(UIButton*)sender
{
    //get the text currently in the label
    [labelString appendFormat:@"."];
    
    //add it to the label
    self.operandLabel.text = labelString;
    
}

-(IBAction)neg_pos_action :(UIButton*)sender
{
    [self doCalculations];
}

-(IBAction)equal_action :(UIButton*)sender
{
    [self doCalculations];
}

-(IBAction)subtract_action :(UIButton*)sender
{
    [self doCalculations];
}

-(IBAction)addition_action :(UIButton*)sender
{
    //if you just pressed "+", you must be done entering the first number.
    //let's first check that the first operand is NOT empty (4 + ...)
    //waitingOperand = [NSNumber self.operandLabel.text];
    
    if(waitingOperand==nil)
    {
        //no first operand
        NSLog(@"ERROR: You pressed + before you entered any numbers! Enter a number first!");
        
    }else if(waitingOperand != nil)
    {
        //there IS a first operand, so everything is ok so far.
        //let's get the number that they just entered, which is in the label
        NSLog(@"First number i");
        
    }
    
    //replace whatever operator was there with this one.
    //allows for the LAST operator pressed to be the one that is used.
    waitingOperation = '+';
    [self doCalculations];
}

-(IBAction)division_action :(UIButton*)sender
{
    //replace whatever operator was there with this one.
    //allows for the LAST operator pressed to be the one that is used.
    waitingOperation = '/';
    [self doCalculations];
}

-(IBAction)multiply_action :(UIButton*)sender
{
    //replace whatever operator was there with this one.
    //allows for the LAST operator pressed to be the one that is used.
    waitingOperation = '*';
    [self doCalculations];
}

-(IBAction)root_action :(UIButton*)sender
{
    //replace whatever operator was there with this one.
    //allows for the LAST operator pressed to be the one that is used.
    waitingOperation = 'r';
    [self doCalculations];
}

-(IBAction)clear_action :(UIButton*)sender
{
    //reset all the values
    waitingOperand = nil;
    waitingOperation = NAN;
    incomingOperand = nil;
    labelString = [NSMutableString string];
    
    //clear the text labels
    self.operandLabel.text = @"";
    self.operationLabel.text = @"";
    
    [self doCalculations];
}

//rather than having the same logic over and over in all the buttons, this method gets called
//after any button gets pushed to do the calculations.
-(void)doCalculations
{
    NSLog(@"\nwaitingOperand: %@\nwaitingOperation: %c\nincomingOperand: %@", waitingOperand, waitingOperation, incomingOperand);
    
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
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //initialize variables
    waitingOperand = nil;
    waitingOperation = NAN;
    incomingOperand = nil;
    labelString = [NSMutableString string];
}

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
