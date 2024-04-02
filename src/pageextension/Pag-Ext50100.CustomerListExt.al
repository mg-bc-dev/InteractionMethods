/// <summary>
/// PageExtension Customer List Ext (ID 50100) extends Record Customer List.
/// </summary>
// pageextension 50100 "Customer List Ext" extends "Customer List"
// {
//     trigger OnOpenPage()



// -------------------------------------------------------------------Message method-------------------------------------------------------//



// var
//     MyInt: Integer;
//     TheValueOfTxt: Label 'The value of %1 is %2';
//     Days: Text[50];
//     Selection: Integer;
// begin
//     MyInt := 5;
//     Message(TheValueOfTxt, 'MyInt', MyInt);
//     // Displays: The value of MyInt is 5





//     // Confirm Method
//     if Confirm('Are you sure you want to delete?') then
//         Message('OK')
//     else
//         Message('Not OK');

//     if Confirm('Are you sure you want to delete?', false) then
//         Message('OK')
//     else
//         Message('Not Ok');




//     // StrMenu method

//     Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
//     Selection := StrMenu(Days, 1, 'Which day is today ?');
//     Message('You selected %1.', Selection);





//     // Error method
//     MESSAGE('1');
//     MESSAGE('2');
//     ERROR('OOPS !');
//     MESSAGE('3');

// end;



//-------------------------------------------------------------------String functions------------------------------------------------------//



// var
//     MyLongString: Text[50];
// begin
//     MyLongString := 'HelloWorldOfManyManyCharacters';

//     Message('%1', StrPos(MyLongString, 'l'));  // Results in 3
// end;
//     Other .NET string functions
// AL supports some string functions from the .NET string class:

// Contains - Checks if a string contains a character or substring.

// EndsWith - Checks if a string ends with a specific value.

// IndexOf - Gets the first index of a character or string. Returns zero if none is found.

// IndexOfAny - Gets the first index of any of the characters. Returns zero if none is found.

// LastIndexOf - Gets the last index of a character or string. Returns zero if none is found.

// PadLeft - Right-aligns the characters in the instance by padding them on the left for a specified total length. You can specify which character is used for padding.

// PadRight - Left-aligns the characters in the instance by padding them on the right for a specified total length. You can specify which character is used for padding.

// Remove - Removes a substring from a text.

// Replace - Replaces a substring from a text.

// Split - Splits text on one or more characters.

// StartsWith - Checks if a string starts with a specific value.

// Substring - Returns a part of the string, starting on a specific index with a certain length.

// ToLower - This function will change all characters to lowercase.

// ToUpper - This function will change all characters to uppercase.

// Trim - Removes all leading and trailing blank spaces.

// TrimEnd - Removes all trailing occurrences of a set of characters.

// TrimStart - Removes all leading occurrences of a set of characters.



// CopyStr and Substring functions
// var
//     MyLongString: Text[50];
//     newString: Text[10];
// begin
//     MyLongString := 'HelloWorldOfManyManyCharacters';

//     newString := CopyStr(MyLongString, 5, 10);

//     Message('%1', newString);  // Results in 'oWorldOfMa'
// end;



// SelectStr and Split functions
// var
//     MyLongString: Text[50];
//     newString: Text;
// begin
//     MyLongString := 'This,is a comma,separated,string';

//     newString := SelectStr(2, MyLongString);

//     Message('%1', newString);  // Results in 'is a comma'
// end;

// var
//     MyLongString: Text[50];
//     newString: Text;
// begin
//     MyLongString := 'This,is a comma,separated,string';

//     newString := MyLongString.Split(',').Get(2);

//     Message('%1', newString);  // Results in 'is a comma'
// end;

// var
//     MyLongString: Text[50];
//     newString: Text;
// begin
//     MyLongString := 'This,is a comma,separated,string';

//     newString := MyLongString.Split(',', ' ').Get(2);

//     Message('%1', newString);  // Results in 'is'
// end;



// InsStr function
// var
//     MyLongString: Text[50];
//     newString: Text;
// begin
//     MyLongString := 'Press ENTER to continue.';

//     newString := InsStr(MyLongString, 'or ESC ', 13);

//     Message('%1', newString);  // Results in 'Press ENTER or ESC to continue.'
// end;



// StrLen and MaxStrLen functions
// var
//     MyLongString: Text[50];
//     newString: Text[10];
//     arg: Text;
// begin

//     MyLongString := GetLongString(arg);

//     Message('STRLEN: %1', StrLen(MyLongString)); // Results in 30 
//     Message('MAXSTRLEN: %1', MaxStrLen(MyLongString)); // Results in 50 

//     newString := CopyStr(MyLongString, 5, MaxStrLen(newString));

//     Message('%1', newString);  // Results in 'oWorldOfMa'
// end;





// StrLen and MaxStrLen functions with empty string
// var
//     MyLongString: Text[50];
//     newString: Text[10];
//     arg: Text;
// begin
//     MyLongString := GetLongString(arg);

//     Message('STRLEN: %1', StrLen(MyLongString)); // Results in 30 
//     Message('MAXSTRLEN: %1', MaxStrLen(MyLongString)); // Results in 50 

//     newString := CopyStr(MyLongString, 5, MaxStrLen(newString));

//     Message('%1', newString);  // Results in 'oWorldOfMa'
// end;


//     local procedure GetLongString(arg: Text): Text[50]
// begin
//     arg := 'HelloWorldOfManyManyCharacters';
// end;




// LowerCase, UpperCase, ToLower, and ToUpper functions
// var
//     MyLongString: Text[50];
// begin
//     MyLongString := 'HelloWorldOfManyManyCharacters';

//     Message('UPPERCASE: %1', UpperCase(MyLongString));
//     // Results in 'HELLOWORLDOFMANYMANYCHARACTERS'
//     Message('LOWERCASE: %1', LowerCase(MyLongString));
//     // Results in 'helloworldofmanymanycharacters'     

//     Message('UPPERCASE: %1', MyLongString.ToUpper());
//     // Results in 'HELLOWORLDOFMANYMANYCHARACTERS'
//     Message('LOWERCASE: %1', MyLongString.ToLower());
//     // Results in 'helloworldofmanymanycharacters'    
// end;




// IncStr function
// var
//     text000: Text;
//     text001: Text;
// begin
//     text000 := 'Account no. 99 does not balance.';
//     text001 := 'Account no. 2342 shows a total of $-452.';

//     Message(IncStr(text000));
//     // Results in: 'Account no. 100 does not balance.'

//     Message(IncStr(text001));
//     // Results in: 'Account no. 2342 shows a total of $-453.'
// end;



//--------------------------------------------------------------------Date functions-------------------------------------------------------//



// In Business Central, much of the data is linked to dates. Sales orders, invoices, or credit memos have document dates, posting dates, and a date of entry. You can also find dates on the customer record.

// When processing these dates in code, you can use some date functions to get specific information out of a date or to change a date to a specific format.

// The frequently used date functions are:

// Date2DMY and Date2DWY

// CalcDate

// The Today and Time date functions return the current date and time. The WorkDate function returns the work date that is set in the application.


// Date2DMY function
// The Date2DMY (or Date to Day, Month, Year) function helps you get specific parts out of a certain date.
// Number := Date2DMY(Date, What);
//The What parameter specifies what the function should return.
// 1 - Corresponds to Day (1-31)
// 2 - Corresponds to Month (1-12)
// 3 - Corresponds to Year

// var
//     MyDatePart: Integer;
// begin
//     // TODAY IS 04/01/2024
//     Message('%1', Today());
//     // Displays : 04/01/2024
//     MyDatePart := Date2DMY(Today(), 1);
//     Message('%1', MyDatePart);
//     // Displays : 01
//     MyDatePart := Date2DMY(Today(), 2);
//     Message('%1', MyDatePart);
//     // Displays : 4
// end;


// Date2DWY function

// The Date2DWY (or Date to Day, Week, Year) function helps you get specific parts out of a certain date.
// Number := Date2DWY(Date, What);
// The What parameter specifies what the function should return.
// 1 - Corresponds to Day of the week (1-7, Monday = 1)
// 2 - Corresponds to the Week number (1-53)
// 3 - Corresponds to Year
// TODAY IS 04/17/2020
// begin
//     Message('%1', Today());
//     // Displays : 04/01/2024

//     MyDatePart := Date2DWY(Today(), 1);
//     Message('%1', MyDatePart);
//     // Displays : 1

//     MyDatePart := Date2DWY(Today(), 2);
//     Message('%1', MyDatePart);
//     // Displays : 14
// end;



// CalcDate function
// The CalcDate function helps you calculate new dates, starting from a certain date.
// NewDate := CalcDate(DateExpression [, Date]);
// In the DateExpression parameter, you can provide how many days (D), weeks (W), months (M), quarters (Q), or years (Y) that you want to add or subtract. If you don't provide a Date parameter, the current system date is used.
// begin
//     // TODAY IS 04/01/2024

//     Message('%1', Today());
//     // Displays : 04/01/2024

//     Message('%1', CalcDate('3W', Today()));
//     // Displays : 04/08/2024
// end;



//------------------------------------------------------------------Numeric functions------------------------------------------------------//



//     When working with numeric data, you might find it helpful to use functions. Imagine that you are working with numeric amounts and want to perform a calculation on an amount and then round the result. The Round function can be used to complete this task. Additional functions are also available for you to use if you're working with numeric data.

// Numeric functions include:

// Round

// Abs

// Power

// Random

// Randomize

// var
//     NewNumber: Decimal;
// begin


// Round function
// The Round function helps you to round a number. As a parameter, you can provide the precision and the direction.
// NewNumber := Round(Number [, Precision] [, Direction]);
// The number and the precision are decimal data types. Precision is an optional parameter and it uses the ReadRounding function from CodeUnit 1, Application Management by default.

// The Direction parameter is a text data type, and can have these values:

// '=' - Rounds up or down to the nearest value (default). Values of five or greater are rounded up; values less than five are rounded down.

// '>' - Rounds up

// '<' - Rounds down
// NewNumber := Round(1234.56789, 0.001, '<');
// Message('%1', NewNumber);
// Displays : 1,234.568




// Abs and Power functions
// NewNumber := Abs(Number);
// Example:
// NewNumber := Abs(-10.235);
// Message('\%1\', NewNumber);
// Displays : 10.235

// Power function
// The Power function is used to raise a number to a power. For example, you can use this function to square the number 2 to get a result of 4.
// NewNumber :=  System.Power(Number: Decimal, Power: Decimal)
// The following example shows the Power function.
// var
//     Number1: Decimal;
//     Power1: Decimal;
//     Result1: Decimal;
//     Text000: Label '%1 raised to the power of %2 = %3';
// begin
//     Number1 := 64;
//     Power1 := 0.5;
//     Result1 := POWER(Number1, Power1);
//     MESSAGE(Text000, Number1, Power1, Result1);
// end;


//    Random and Randomize functions
// The Random function is used to create a new random number. Before running the Random function, you can also run the Randomize function, with a seed value. This action ensures that, when you run the Random function in a loop, it will generate a new random number.

// If you don't specify a seed value, it will use the data from the system clock as a seed value.

// The Random function takes a parameter that specifies the largest acceptable number. It will return a number between one and the MaxNumber value. If MaxNumber is zero, this function will always return 1. A negative MaxNumber will be treated as a positive number.

// var
//     Number: Integer;
// begin
//     Number := 45;
//     Randomize(Number);
//     Message('%1', Number);
//     Number := Random(Number);
//     Message('%1', Number);
// end;

// var
//     x: Integer;
//     y: Integer;
//     z: Integer;
//     Number1: Integer;
//     Number2: Integer;
//     Number3: Integer;
//     Text000: Label 'Number1 = %1, Number2 = %2, Number3 = %3';
// begin
//     x := 100; // x is assigned a positive value.  
//     y := -100; // y is assigned a negative value.  
//     z := 0; // z is assigned zero.  
//     Number1 := Random(x);
//     Number2 := Random(y);
//     Number3 := Random(z);
//     Message(Text000, Number1, Number2, Number3);
// end;
// end;



//-------------------------------------------------------------------Array functions-------------------------------------------------------//



// When you work with an array data type, a number of functions can be applied to that data type. These functions can be used to determine the length of an array or to copy an entire or part of an array:

// ArrayLen
// CompressArray
// CopyArray

// ArrayLen functions
// The ArrayLen function returns the number of current elements in an array.
// Length := ArrayLen(Array [,Dimension]);
// The following example shows an ArrayLen function:
// var
//     length: Integer;
//     SaleAmount: array[10] of Integer;
// begin
//     Length := ArrayLen(SaleAmount);
//     Message('%1', Length);
//     // Displays : 0


//     SaleAmount[1] := 1;
//     SaleAmount[2] := 2;
//     SaleAmount[3] := 4;
//     SaleAmount[1] := 10;

//     // Length := ArrayLen(SaleAmount, 3);
//     // Message('%1', Length);
//     Message(Format(SaleAmount[3]));
//     // Displays : 4
// end;

// CompressArray function
// The CompressArray function moves all non-empty strings in an array to the beginning of the array. The resulting array has the same number of elements as the input array, but empty entries appear at the end of the entry.

// The StringArray parameter is an array of strings.
// Count := CompressArray(StringArray);
// The following example shows the StringArray parameter:
// var
//     MyArray: array[4] of Text[20];
// begin

//     MyArray[1] := 'Paris';
//     MyArray[2] := 'Rome';
//     MyArray[3] := '';
//     MyArray[4] := 'New York City';

//     Message(Format(MyArray[1]) + '\' + Format(MyArray[2]) + '\' + Format(MyArray[3]) + '\' + Format(MyArray[4]));
//     CompressArray(MyArray);
//     Message(Format(MyArray[1]) + '\' + Format(MyArray[2]) + '\' + Format(MyArray[3]) + '\' + Format(MyArray[4]));

//     /* Results :

//        MyArray[1] = 'Paris';
//        MyArray[2] = 'Rome';
//        MyArray[3] = 'New York City';
//        MyArray[4] = ''; 

//     */
// end;

//     CopyArray function
// The CopyArray function will create a new array based on an existing one. You can provide a starting position and, optionally, a length. If you don't provide a length, the function will copy all elements until the end, starting from the position.
// CopyArray(NewArray, Array, Position [, Length]);
// The following example shows the CopyArray function:
// var
//     MyArray1: array[10] of Integer;
//     MyArray2: array[5] of Integer;
// begin
//     MyArray1[1] := 1;
//     MyArray1[2] := 2;
//     MyArray1[3] := 3;
//     MyArray1[4] := 4;
//     MyArray1[5] := 5;
//     MyArray1[6] := 6;
//     MyArray1[7] := 7;
//     MyArray1[8] := 8;
//     MyArray1[9] := 9;
//     MyArray1[10] := 10;

//     CopyArray(MyArray2, MyArray1, 6, 5);
//     Message('MyArray1 \' + Format(MyArray1[6]) + '\' + Format(MyArray1[7]) + '\' + Format(MyArray1[8]) + '\' + Format(MyArray1[9]) + '\' + Format(MyArray1[10]) + '\ copy from MyArray1 in MyArray2 \' + Format(MyArray2[1]) + '\' + Format(MyArray2[2]) + '\' + Format(MyArray2[3]) + '\' + Format(MyArray2[4]) + '\' + Format(MyArray2[5]));
// end;

/* Results :

   MyArray2[1] = 6;
   MyArray2[2] = 7;
   MyArray2[3] = 8;
   MyArray2[4] = 9;
   MyArray2[5] = 10;

*/



//--------------------------------------------------------------------List functions-------------------------------------------------------//



// The list data type has a number of functions that you can apply on that data type. These functions can be used to add or remove items from a list, determine the length of the list, find a certain item in the list, and so on:

// Add(X)

// Add(X) function
// The Add(X) function adds an item X to the end of the list.

// var
//     myIntegerList: List of [Integer];
//     myText: Text;
//     myInteger: Integer;
// begin
//     Clear(myInteger);
//     myIntegerList.Add(5);
//     myIntegerList.Add(2);
//     myIntegerList.Add(3);
//     repeat
//         if myText <> '' then
//             myText += ',';

//         myInteger := myInteger + 1;
//         myText := Format(myIntegerList.Get(myInteger));
//     until myIntegerList.Count = 5;
//     Message(myText);
// end;

// Contains(X)
// Contains(X) function
// The Contains(X) function checks if an item X exists in the list. It returns a Boolean value; true if found, false if not found.
// var
//     myIntegerList: List of [Integer];
//     exists: Boolean;
// begin
//     myIntegerList.Add(5);
//     exists := myIntegerList.Contains(5);
//     Message(Format(exists));
// end;




// Get(index)
// Get(index) function
// The Get(index) function gets an item from the list by a certain index and returns that item.
// var
//     myIntegerList: List of [Integer];
//     myInteger: Integer;
// begin
//     myIntegerList.Add(5);
//     myIntegerList.Add(2);
//     myIntegerList.Add(1);
//     myIntegerList.Add(5);
//     myInteger := myIntegerList.Get(3);
//     Message(Format(myInteger));
// end;
// myInteger = 1


// Set(index, X)
// Set(index, X) function
// The Set(index, X) function updates an item in the list by a certain index. It sets the value X on the item at a certain index.
// var
//     myTextList: List of [Text];
//     myText: Text;
// begin
//     myTextList.Add('HELLO ');
//     myTextList.Add('DYNAMICS ');
//     myTextList.Add('BUSINESS ');
//     myTextList.Add('CENTRAL');
//     myText := myTextList.Get(2);
//     Message(myText);
//     myTextList.Set(2, 'DYNAMICS 365 ');
//     myText := myTextList.Get(2);
//     Message(myText);
// end;


// Insert(index, X)
// Insert(index, X) function
// The Insert(index, X) function inserts an item in the list on a certain index. All the next items are moved one index further.
// var
//     myTextList: List of [Text];
//     myText: Text;

// begin
//     myTextList.Add('HELLO ');
//     myTextList.Add('DYNAMICS ');
//     myTextList.Add('BUSINESS ');
//     myTextList.Add('CENTRAL');
//     myText := myTextList.Get(3);
//     Message(myText);
//     myTextList.Insert(3, '365 ');
//     myText := myTextList.Get(3);
//     Message(myText);
// end;

// Remove(X)
// Remove(X) function
// The Remove(X) function removes the first occurrence of an item in the list based on the value of X. This function returns a Boolean value.
// var
//     myTextList: List of [Text];
//     myText, myText2 : Text;
// begin
//     myTextList.Add('HELLO ');
//     myTextList.Add('DYNAMICS ');
//     myTextList.Add('HELLO ');
//     myTextList.Add('CENTRAL');
//     myText := myTextList.Get(1);
//     myText += myTextList.Get(2);
//     myText += myTextList.Get(3);
//     myText += myTextList.Get(4);
//     Message('Before %1\', myText);

//     if myTextList.Remove('HELLO ') then begin
//         Message('HELLO WAS REMOVED');

//     end;
//     myText2 := myTextList.Get(1);
//     myText2 += myTextList.Get(2);
//     myText2 += myTextList.Get(3);
//     // myText2 += myTextList.Get(4); // its empty because get the Error.
//     Message('After %1 \', myText2);
// end;
// myTextList: 'DYNAMICS ', 'HELLO ', 'CENTRAL'

// RemoveAt(index)
// RemoveAt(index) function
// The RemoveAt(index) function removes the item on a certain index. This function returns a Boolean value.
// var
//     myTextList: List of [Text];
//     myText, myText0 : Text;
// begin
//     myTextList.Add('HELLO ');
//     myTextList.Add('DYNAMICS ');
//     myTextList.Add('BUSINESS ');
//     myTextList.Add('CENTRAL');

//     myText := myTextList.Get(1);
//     myText += myTextList.Get(2);
//     myText += myTextList.Get(3);
//     myText += myTextList.Get(4);
//     if myTextList.RemoveAt(2) then
//         Message('Item at index 2 is removed.');
//     myText0 := myTextList.Get(1);
//     myText0 += myTextList.Get(2);
//     myText0 += myTextList.Get(3);
//     Message('Before\ %1 \after \ %2', myText, myText0);
// end;
// myTextList: 'HELLO ', 'BUSINESS ', 'CENTRAL'


// Count(index)
// Count(index) function
// The Count(index) function returns the number of items in a list.
// var
//     myTextList: List of [Text];
//     myInteger,i: Integer;
//     myText: Text;
// begin
//     myTextList.Add('HELLO ');
//     myTextList.Add('DYNAMICS ');
//     myTextList.Add('BUSINESS ');
//     myTextList.Add('CENTRAL');
//     myInteger:=myTextList.Count();
//     Message('%1', myTextList.Count());
//     repeat
//         if myText <> '' then
//             myText += ',';

//         i := i + 1;
//         myText += Format(myTextList.Get(i));
//     until myTextList.Count = i;
//     Message(myText);
// end;
// Displays: 4


// AddRange(X, [X], [X], ...)
// AddRange(X) function
// The AddRange(X) function adds multiple items to the list at the same time.

// var
//     myTextList: List of [Text];
// begin
//     myTextList.AddRange('HELLO ', 'DYNAMICS 365 ', 'BUSINESS ', 'CENTRAL');
//     Message(Format(myTextList.Count));
// end;

// GetRange(index, count, List of [X])
// GetRange(index, count) function
// The GetRange(index, count) function retrieves a number of items (count), starting on a certain index. The result is a List of [X].
// var
//     myTextList: List of [Text];
//     myNewTextList: List of [Text];
//     myText: Text;
// begin
//     myTextList.AddRange('HELLO ', 'DYNAMICS 365 ', 'BUSINESS ', 'CENTRAL');
//     myNewTextList := myTextList.GetRange(2, 2);
//     myText := Format(myNewTextList.Get(1)) + ', ';
//     myText += Format(myNewTextList.Get(2));
//     Message(myText);
// end;
// myNewTextList: 'DYNAMICS 365 ', 'BUSINESS '


// RemoveRange(index, count)
// RemoveRange(index, count) function
// The RemoveRange(index, count) function removes multiple items (count), starting on a certain index. This function returns a Boolean value.

// var
//     myTextList: List of [Text];
//     myText, myText0 : Text;
// begin

//     myTextList.AddRange('HELLO ', 'DYNAMICS 365 ', 'BUSINESS ', 'CENTRAL');
//     myText := Format(myTextList.Get(1));
//     myText += Format(myTextList.Get(2));
//     myText += Format(myTextList.Get(3));
//     myText += Format(myTextList.Get(4));
//     if myTextList.RemoveRange(2, 2) then
//         Message('Items removed.');
//     myText0 := Format(myTextList.Get(1));
//     myText0 += Format(myTextList.Get(2));
//     // myText += Format(myTextList.Get(3));
//     // myText += Format(myTextList.Get(4));
//     Message('%1\ %2', myText, myText0);


//     // myTextList: 'HELLO ', 'CENTRAL'
// end;

// IndexOf(X)
// IndexOf(X) function
// The IndexOf(X) function returns the index of the first occurrence of an item based on the value of X.
// var
//     myIntegerList: List of [Integer];
//     index: Integer;
// begin
//     myIntegerList.Add(5);
//     myIntegerList.Add(2);
//     myIntegerList.Add(1);
//     myIntegerList.Add(5);
//     index := myIntegerList.IndexOf(5);
//     Message(Format(index));
//     // index = 1
// end;

// LastIndexOf(X)
// LastIndexOf(X) function
// The LastIndexOf(X) function returns the last index of an item based on the value of X.
// var
//     myIntegerList: List of [Integer];
//     index: Integer;

// begin
//     myIntegerList.Add(5);
//     myIntegerList.Add(2);
//     myIntegerList.Add(1);
//     myIntegerList.Add(5);
//     index := myIntegerList.LastIndexOf(5);
//     Message(Format(index));
//     // index = 4
// end;


// Reverse
// Reverse function
// The Reverse function reverses the order of the elements in the list.
// var
//     myTextList: List of [Text];
//     myText, myText0 : Text;
//     i: Integer;
// begin
//     myTextList.AddRange('HELLO ', 'DYNAMICS 365 ', 'BUSINESS ', 'CENTRAL');
//     repeat
//         if myText <> '' then
//             myText += ', ';

//         i := i + 1;
//         myText += Format(myTextList.Get(i));
//     until myTextList.Count = i;

//     myTextList.Reverse();
//     Clear(i);
//     repeat
//         if myText0 <> '' then
//             myText0 += ', ';

//         i := i + 1;
//         myText0 += Format(myTextList.Get(i));
//     until myTextList.Count = i;
//     Message('Original \%1 \ Reverse \%2', myText, myText0);
//     // myTextList: 'CENTRAL', 'BUSINESS ', 'DYNAMICS 365 ', 'HELLO '
// end;



//------------------------------------------------------------------System functions-------------------------------------------------------//



// System functions are the type of functions that you can use out of the box. They aren't related to a certain data type or used for interaction. You can find them throughout the system, and you can use them in every trigger or procedure.

// System functions include:
// UserId and CompanyName functions
// You can use the UserId function to know who is running code. Imagine that you are posting an order in the posting process and you want to keep track of who posted the order. The UserId function helps you accomplish this task.
// var
//     myText: Text;
// begin
// UserID
// <Text> := UserId();
// myText := UserId();
// Message('User ID is %1', myText);


// CompanyName
// <Text> := CompanyName;
// In the logical database, you might have one or multiple companies. If you want to figure out the name of the company that the code is running in, you can use the CompanyName function. This function fetches the current company name.
// Clear(myText);
// myText := CompanyName;
// Message('Company Name is %1', myText);


// Today, Time, and WorkDate functions
// Similar to Date2DMY and Date2DWY, the Today function is another date function that you can use to get the current date from the operating system.

// Today
// <Date> := Today();
// Clear(myText);
// myText := Format(Today());
// Message('Today''s date is %1', myText);

// Time
// The Time function works the same way and returns the current time from the operating system.
// <Time> := Time;
// Clear(myText);
// myText := Format(Time);
// Message('The current time is %1', myText);

// WorkDate
// With the WorkDate function, you can get or set the work date for the current session.
// <Date> := WorkDate;
// <Date> := WorkDate();   // Get the work date
// WorkDate(<Date>);       // Set the work date
// Clear(myText);
// myText := Format(WorkDate);
// Message('The work date is %1', myText);
// end;



//-----------------------------------------------------------------Variable functions------------------------------------------------------//



// When you run code in Business Central, variables are initialized the first time with their default value.

// You might want to reinitialize them on occasions when you're working in a loop and need the variables to have their default values.

// Variable functions include:

// Clear

// ClearAll

// When you're working with variables, each with a different data type, and you want to assign a value from one data type to another, use the automatic type conversions. If this option isn't possible, use the following functions:

// Evaluate

// Format

// Clear and ClearAll functions
// The Clear function helps you clear or reset a variable. This function will reinitialize the default value to the variable.

// var
//     myText: Text[20];
// begin
//     myText := UserId;
//     Clear(myText);      // Sets the variable myText to an empty string.
// end;
// The ClearAll function resets all variables (except the Rec variable) to their default values. It also clears all keys and filters that have been set.

// Evaluate function
// You can use the Evaluate function to convert a variable of data type text (code or text) to another data type (that is not text).
// <Boolean> := Evaluate(<variable>, <Text to convert>)
// var
//     myText: Text[20];
//     myInteger: Integer;
// begin
//     myText := '5';
//     Evaluate(myInteger, myText);
//     Message(Format(myInteger));  // Displays "5" in a message box.
// end;

// Format function
// The Format function converts a data type to a text data type.
// <String> := Format(<variable>)
// var
//     myText: Text[20];
//     myInteger: Integer;
// begin
//     myInteger := 3;
//     myText := Format(myInteger);
//     Message(myText);   // Displays "3" in a message box.
// end;



//----------------------------------------------------------Exercise - Use built-in functions----------------------------------------------//



// You're a developer at CRONUS International Ltd. and want to test your newly acquired knowledge about built-in functions. You want to create a page that calculates Armstrong numbers (to 10000) and displays them in a message box.

// An Armstrong number is calculated by taking each digit to the power of the final digit and creating a sum of the results.

// Example: 153

// 1 raised to power 3 = 1

// 5 raised to power 3 = 125

// 3 raised to power 3 = 27

// Sum of 1, 125, and 27 = 153

// Therefore, 153 is an Armstrong number.

//  Note

// For the purpose of this exercise, we are not using the definition of the official Armstrong numbers. The official definition is that the power is the number of digits, not the final digit. If you look for Armstrong numbers online, you will find a different definition and solution.

//         Tasks
// Create a new page.

// Create the OnOpenPage trigger.

// Define variables for the Armstrong calculation.

// Write the calculation logic.

// Show the result in a message box.


// Steps
// Select File > New File and save this file by selecting File > Save. Name the file ArmstrongCard.Page.al.
// Create a new page in this file by using code snippets. Enter tpage and press the Tab key.
// Change the ID to 50113 and the name to Armstrong Card.
// Set the PageType property to Card and set the UsageCategory property to Documents.
// Remove the SourceTable property and set the Caption property to Armstrong Card.
// Create the OnOpenPage trigger under the myInt definition. You can use the ttrigger snippet.
// Remove the default myInt variable.
// Create the following local variables in the OnOpenPage trigger:
// Counter1 Integer
// CounterText Text[5]
// Counter2 Integer
// PowerNumber Integer
// Number Integer
// Result Integer
// ResultList List of [Integer]
// ArmstrongNumbers Text
// Put the following code between the begin and end block of the OnOpenPage.

// Code Example
// var
// Counter1, Counter2, PowerNumber, Number, Result : Integer;
// CounterText: Text[5];
// ArmstrongNumbers, Newline : Text;
// ResultList: List of [Integer];
// Ch10, Ch13 : Char;
// begin
//     Ch10 := 10;
//     Ch13 := 13;
//     Newline := Format(Ch10) + Format(Ch13);
//     for Counter1 := 0 to 10000 do begin
//         CounterText := Format(Counter1);
//         Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
//         for Counter2 := 1 to StrLen(CounterText) do begin
//             Evaluate(Number, CopyStr(CounterText, Counter2, 1));
//             Result += Power(Number, PowerNumber);
//         end;

//         if Result = Counter1 then
//             ResultList.Add(Result);
//         Clear(Result);
//     end;

//     foreach Counter1 in ResultList do
//         ArmstrongNumbers += Newline + Format(Counter1);

//     Message(ArmstrongNumbers);
// end;
// }
