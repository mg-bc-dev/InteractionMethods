/// <summary>
/// PageExtension Customer List Ext (ID 50100) extends Record Customer List.
/// </summary>
pageextension 50100 "Customer List Ext" extends "Customer List"
{
    trigger OnOpenPage()
    // begin

    // var
    //     MyInt: Integer;
    //     TheValueOfTxt: Label 'Message Method \The value of %1 is %2';
    // begin
    // Message Method
    // MyInt := 5;
    // Message(TheValueOfTxt, 'MyInt', MyInt);
    // Displays: The value of MyInt is 5




    // Confirm Method
    // if Confirm('Are you sure you want to delete?') then
    //     Message('OK')
    // else
    //     Message('Not OK');

    // if Confirm('Are you sure you want to delete?', false) then
    //     Message('OK')
    // else
    //     Message('Not Ok');

    // end;




    // StrMenu method
    // var
    //     Days: Text[50];
    //     Selection: Integer;
    // begin
    //     Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
    //     Selection := StrMenu(Days, 1, 'Which day is today ?');
    //     Message('You selected %1.', Selection);
    // end;




    // Error method
    // MESSAGE('1');
    // MESSAGE('2');
    // ERROR('OOPS !');
    // MESSAGE('3');
    // end;


    // String functions
    // var
    //     MyLongString: Text[50];
    // begin
    //     MyLongString := 'HelloWorldOfManyManyCharacters';

    //     Message('%1', StrPos(MyLongString, 'l'));  // Results in 3
    // end;




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
    var
        MyLongString: Text[50];
        newString: Text[10];
        arg: Text;
    begin
        MyLongString := GetLongString(arg);

        Message('STRLEN: %1', StrLen(MyLongString)); // Results in 30 
        Message('MAXSTRLEN: %1', MaxStrLen(MyLongString)); // Results in 50 

        newString := CopyStr(MyLongString, 5, MaxStrLen(newString));

        Message('%1', newString);  // Results in 'oWorldOfMa'
    end;


        local procedure GetLongString(arg: Text): Text[50]
    begin
        arg := 'HelloWorldOfManyManyCharacters';
    end;
}
