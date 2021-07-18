main() {
  var operand1 = 10;
  var operand2 = 7;

  print(operand1 + operand2); //plus
  print(operand1 - operand2); //minus
  print(-operand1); //reverse sign
  print(operand1 * operand2); //multiplication
  print(operand1 / operand2); //division
  print(operand1 ~/ operand2); //integer part of division
  print(operand1 % operand2); //remainder

  //Pre and postfix

  //++var	var = var + 1
  var prefixIncrement = 5;
  print(++prefixIncrement);

  //var++	var = var + 1
  var postfixIncrement = 5;
  print(postfixIncrement++);
  print(postfixIncrement);

  //--var	var = var - 1
  var prefixDecrement = 5;
  print(--prefixDecrement);

  //var--	var = var - 1
  var postfixDecrement = 5;
  print(postfixDecrement--);
  print(postfixDecrement);
}

//relational/equality
main1() {
  var operand1 = 10;
  var operand2 = 7;

  print(operand1 > operand2);
  print(operand1 < operand2);
  print(operand1 >= operand2);
  print(operand1 <= operand2);
  print(operand1 == operand2);
  print(operand1 != operand2);
}

//TypeTest
/* 
as	typecast
is	True if the object has the specified type
is!	False if the object has the specified type
*/
main2() {
  double type1 = 5.0;
  int type2 = 87;
  String type3 = "educative";
  bool type4 = true;

  print(type1 is int);
  print(type2 is int);
  print(type3 is String);
  print(type4 is double);
  print(type4 is! double);
}
//Assignment operator
// =	-=	/=	%=	>>=	^=
// +=	*=	~/=	<<=	&=	|=

//Logical operators
/*
  !	Logical NOT	
  ||	Logical OR	
  &&	Logical AND	
*/
main3() {
  var A = true;
  var B = false;
  var expr = A && B; //false

  print(!A); // !true --> false
  print(!B); // !false --> true
  print(true || expr); // true || expr --> true
  print(false || expr); // false || expr --> expr
  print(true && expr); // true && expr --> expr
  print(false && expr); // false && expr --> false
}

//BItwise and shifts

/*
&	Bitwise AND	If the corresponding bit in both operands is 1 it will give a 1, else 0
|	Bitwise OR	If the corresponding bit in at least one operand is 1 it will give a 1, else 0
^	Bitwise XOR	If the corresponding bit in only one operand is 1 it will give a 1, else 0
~	Unary Bitwise Complement	Bits which are 0 become 1 and bits which are 1 become 0

<<	Shift Left	Shifts all the bits of its operand to the left by the specified amount
>>	Shift Right	Shifts all the bits of its operand to the right by the specified amount
*/
main4() {
  var A = 12;
  var B = 5;

  print(~A); // A complement
  print(~B); // B complement
  print(A & B); // A AND B
  print(A | B); // A OR B
  print(A ^ B); // A XOR B
  print(B << 2); // B Shift Left 2
  print(A >> 2); // A Shift Right 2
}


//OPERATOR PRECEDENCE___________________________________________
/*
Unary postfix	., ?., ++, --, [``], ()
Unary prefix	-, !, ˜, ++, --, await
Multiplicative	*, /, ˜/, %
Additive	+, -
Shift	<<, >>, >>>
Bitwise AND	&
Bitwise XOR	ˆ
Bitwise OR	|
Relational	<, >, <=, >=, as, is, is!
Equality	==, !=
Logical AND	&&
Logical Or	||
If-null	??
Conditional	? :
Cascade	..
Assignment	=, *=, /=, +=, -=, &=, ˆ=, etc.
*/