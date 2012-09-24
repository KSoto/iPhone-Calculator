//
//  ViewController.m
//  Soto.Katie_asgt3
//
//  Created by Lion User on 20/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

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
    
}

-(IBAction)n2_action :(UIButton*)sender
{
    
}

-(IBAction)n3_action :(UIButton*)sender
{
    
}

-(IBAction)n4_action :(UIButton*)sender
{
    
}

-(IBAction)n5_action :(UIButton*)sender
{
    
}

-(IBAction)n6_action :(UIButton*)sender
{
    
}

-(IBAction)n7_action :(UIButton*)sender
{
    
}

-(IBAction)n8_action :(UIButton*)sender
{
    
}

-(IBAction)n9_action :(UIButton*)sender
{
    
}

-(IBAction)n0_action :(UIButton*)sender
{
    
}

-(IBAction)decimal_action :(UIButton*)sender
{
    
}

-(IBAction)neg_pos_action :(UIButton*)sender
{
    
}

-(IBAction)equal_action :(UIButton*)sender
{
    
}

-(IBAction)subtract_action :(UIButton*)sender
{
    
}

-(IBAction)addition_action :(UIButton*)sender
{
    
}

-(IBAction)division_action :(UIButton*)sender
{
    
}

-(IBAction)multiply_action :(UIButton*)sender
{
    
}

-(IBAction)root_action :(UIButton*)sender
{
    
}

-(IBAction)clear_action :(UIButton*)sender
{
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
