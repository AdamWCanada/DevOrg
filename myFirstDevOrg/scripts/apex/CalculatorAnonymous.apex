Calculator myCalc = new Calculator ();
integer a = myCalc.add(8, 7, 6);
system.debug('sum of 8+7+6 is ' + a);

integer x = myCalc.add(10, 5);
system.debug('sum of 10 and 5 is ' + x);

integer y = myCalc.add(500, 50);
system.debug('sum of 500 and 50 is ' + y);


string result = myCalc.printAndReturnMessage('Print this ASAP');
system.debug(result);


myCalc.printNewMessage('This is my new calculation');

string msg = 'Print this now.';
myCalc.printNewMessage(msg);

string msg99 = 'How about this one, still?';
myCalc.printNewMessage(msg99);