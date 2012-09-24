//
//  ViewController.h
//  Soto.Katie_asgt3
//
//  Created by Lion User on 20/09/2012.
//  Copyright (c) 2012 Katie Soto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    
@private
    //label that will display the operation (+, -, etc.) aligned left
    IBOutlet UILabel* _operationLabel;
    //label that will display the operand (1, 5, etc.) aligned right
    IBOutlet UILabel* _operandLabel;
    
    //all buttons
    IBOutlet UIButton* _n1_button;
    IBOutlet UIButton* _n2_button;
    IBOutlet UIButton* _n3_button;
    IBOutlet UIButton* _n4_button;
    IBOutlet UIButton* _n5_button;
    IBOutlet UIButton* _n6_button;
    IBOutlet UIButton* _n7_button;
    IBOutlet UIButton* _n8_button;
    IBOutlet UIButton* _n9_button;
    IBOutlet UIButton* _n0_button;
    IBOutlet UIButton* _decimal_button;
    IBOutlet UIButton* _neg_pos_button;
    IBOutlet UIButton* _equal_button;
    IBOutlet UIButton* _subtract_button;
    IBOutlet UIButton* _addition_button;
    IBOutlet UIButton* _division_button;
    IBOutlet UIButton* _multipy_button;
    IBOutlet UIButton* _root_button;
    IBOutlet UIButton* _clear_button;
}

@property (nonatomic, retain) UILabel* operationLabel;
@property (nonatomic, retain) UILabel* operandLabel;

@property (nonatomic, retain) UIButton* n1_button;
@property (nonatomic, retain) UIButton* n2_button;
@property (nonatomic, retain) UIButton* n3_button;
@property (nonatomic, retain) UIButton* n4_button;
@property (nonatomic, retain) UIButton* n5_button;
@property (nonatomic, retain) UIButton* n6_button;
@property (nonatomic, retain) UIButton* n7_button;
@property (nonatomic, retain) UIButton* n8_button;
@property (nonatomic, retain) UIButton* n9_button;
@property (nonatomic, retain) UIButton* n0_button;
@property (nonatomic, retain) UIButton* decimal_button;
@property (nonatomic, retain) UIButton* neg_pos_button;
@property (nonatomic, retain) UIButton* equal_button;
@property (nonatomic, retain) UIButton* subtract_button;
@property (nonatomic, retain) UIButton* addition_button;
@property (nonatomic, retain) UIButton* division_button;
@property (nonatomic, retain) UIButton* multipy_button;
@property (nonatomic, retain) UIButton* root_button;
@property (nonatomic, retain) UIButton* clear_button;

-(IBAction)n1_action :(UIButton*)sender;
-(IBAction)n2_action :(UIButton*)sender;
-(IBAction)n3_action :(UIButton*)sender;
-(IBAction)n4_action :(UIButton*)sender;
-(IBAction)n5_action :(UIButton*)sender;
-(IBAction)n6_action :(UIButton*)sender;
-(IBAction)n7_action :(UIButton*)sender;
-(IBAction)n8_action :(UIButton*)sender;
-(IBAction)n9_action :(UIButton*)sender;
-(IBAction)n0_action :(UIButton*)sender;
-(IBAction)decimal_action :(UIButton*)sender;
-(IBAction)neg_pos_action :(UIButton*)sender;
-(IBAction)equal_action :(UIButton*)sender;
-(IBAction)subtract_action :(UIButton*)sender;
-(IBAction)addition_action :(UIButton*)sender;
-(IBAction)division_action :(UIButton*)sender;
-(IBAction)multiply_action :(UIButton*)sender;
-(IBAction)root_action :(UIButton*)sender;
-(IBAction)clear_action :(UIButton*)sender;


@end
