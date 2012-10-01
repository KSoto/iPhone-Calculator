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
//  File Description: This file is our Controller's interface. Each button is linked to
//      a variable and an action.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface ViewController : UIViewController 
{
    //labelString holds our ongoing string when a user is inputting
    //a number. Ex: 3.29182099 would go in labelString, and will
    //then be given to the model when the user is done with the input.
    NSMutableString* labelString;
    //continueOp is a message to the operations to ignore the current
    //string in the label. For example, when you press "3 + 4 =", the
    //number "7" will be in the label, but not because the user pressed
    //it, but because it's the result of the previous operation. This
    //variable will tell them when to ignore it (or not).
    bool continueOp;
    
@private
    //CalculatorModel is our model, and we need an instance of it to
    //pass it information (and to do the calculations)
    CalculatorModel* _cModel;
    
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
@property (nonatomic, retain) CalculatorModel* cModel;
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

//each button has an associated action. When the user presses
//the associated button, the correct method will be called.
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
