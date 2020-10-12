type
  Dictionary1 = array[1..30] of String; 
  Dictionary2 = array[1..30] of integer; 
var
  dict1:Dictionary1;
  dict2:Dictionary2;
  str:String;
  i,countWordIdDictionary:integer;
  //функция добавления новой буквы в словарь
  procedure addLetter(temp:String);
  begin
    countWordIdDictionary:=countWordIdDictionary+1;
    dict1[countWordIdDictionary]:=temp;
    dict2[countWordIdDictionary]:=1;
  end;
  //функция увеличения количества использований
  procedure upgradeLetter(index:Integer);
  begin
    dict2[index]:=dict2[index]+1;
  end;
  
  
  //попытка записи буквы в словарь
  procedure writeInDictionary(temp:String);
  var 
    isInDict:Boolean;
    j,currentLetterIndex:Integer;
  begin
    isInDict:=false;
    currentLetterIndex:=-1;
    for j:=1 to 30 do
      if dict1[j]=temp then 
      begin        
        isInDict:=true;
        currentLetterIndex:=j;
      end;
    if(isInDict=false) then addLetter(temp)
    else upgradeLetter(currentLetterIndex);
  end;
//печать словаря  
  procedure pringDictionary();
  var i:Integer;
  begin
    for i:=1 to countWordIdDictionary do
       Write('"'+dict1[i]+'" ');
    Writeln();
    for i:=1 to countWordIdDictionary do
       Write('"'+dict2[i]+'" ');    
  end;
  
// точка входа в программу  
begin
countWordIdDictionary:=0;
Writeln('Write yours string');
Readln(str);

for i:=1 to str.Length do
  writeInDictionary(str[i]);

pringDictionary();

end.