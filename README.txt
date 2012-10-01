/*---------------------------------------------------------------------
-------------------------------KATIE SOTO------------------------------
----------------------------iPhone Calculator--------------------------
---------------------------------------------------------------------*/

//What is it?
  This piece of software is an iPhone application that is used to make simple
  calculations. The calculator can be used to correctly make sums, differences,
  square roots, and other mathematical functions. Please note while using my
  calculator: the correct order of operations have not been implemented, therefore
  pressing "8 + 3 =" would produce a correct result, whereas "8 + 3 x 4" would not
  (since 3 x 4 needed to be evaluated first, according to mathematical rules). Please
  keep this in mind while using my application.

//How do I use it?
--Addition:
	1) Input the first number to add,
	2) Press the '+' button
	3) Input the second number to add
	4) At this point you may press '=' to view the result, 
	   or continue other operations with the result you just calculated.
	*example inputs and outputs:
		input: 1 + 2 =
		output: 3
		input: 1 + 2 * 2 =
		output: 6
--Subtraction, Division, Multiplication:
	The instructions for Addition, Subtraction, Division, and Multiplication
	are exactly the same as above, except press "-", "÷", and "x" instead of
	"+" respectfully.
--Positive & Negative Numbers:
	You may turn your number into a negative or positive number at any time by 
	using the "±" button while inputing a number.
--Decimal Numbers:
	Press the decimal button while inputing the number to input the decimal in the
	proper place.
--Square Roots:
	Square roots are evaluated immediately when you press the "√" button. To use
	square roots, simple input the number, then click the "√" button. For example:
	input: 9 √
	output: 3
--Clearing Calculated Data:
	To clear the calculator of your old data, just press the "AC" button.
--Special Behaviors for Improper Input:
    1) (Using a single number with a 2 number operation) Inputing a number, then
	   a operation, then another operation will result in that operation being 
	   applied again to the first number. For example:
	input: 8 + =
	output: 16
	input: 5 - =
	output: 0
	input: 2 x =
	output: 4
	input:	9 ÷ = 
	output: 1	
    2) (Pressing operations multiple times) Pressing an operation multiple times 
	   will apply that operation over and over to the **resulting numbers**. 
   	   For example:
	input: 2 x x x x
	output: 256
	input: 81 √ √
	output: 3
	input: 10 + + + +
	output: 80
	input: 8 - -
	output: 0
		NOTE about this one: the logic here is (8-8) = 0, then (0-0) = 0. The
 		resulting difference is zero, so zero is then being subtracted, which 
		ends up to be zero.
	input: 5 ÷ ÷ ÷
	output: 1
		NOTE about this one: the logic here is (5 ÷ 5) = 1, then (1 ÷ 1) = 1, So
		the result here will always be one.	
    3) (Two operations with two numbers) Inputing a single number, then 2 operations, will
	result in the first two being evaluated as a single group, then the last two being
	evaluated as another group. For example:
	input: 2 + x 6
	output: 24
		NOTE: As soon as "x" has been pressed, "2 +" gets evaluated to 4. The next
		operations are then evaluated also: "4 x 6", which equals 24.
	input: 8 x ÷ 2
	output: 32
		NOTE: The logic here is: (8 x) = 64, then (64 ÷ 2) = 32.


//Features Completed:
-Addition
-Subtraction
-Division
-Multiplication
-Square Roots
-Decimals
-Positive / Negative
-Clear (AC)
-Equals

//Bugs:
-There are no known bugs.

//Features Not Completed:
-All features considered have been implemented.

//External Dependancies:
-No external dependancies.

//About The Author:
Katie Soto
KReneSoto@gmail.com
714-213-2228
