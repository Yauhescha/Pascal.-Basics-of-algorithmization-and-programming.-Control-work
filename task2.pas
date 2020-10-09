program Project1;
var
arr:Array[1..7, 1..7] of Integer;
i,j,temp,maxValue, maxRow:Integer;
begin
//рандомим матрицу
//SetLength(arr,7,7);
For i:=1 to 7 do
  for j:=1 to 7 do
    arr[i,j]:=Random(150);
//печать матрицы
Writeln('Yours array');
For i:=1 to 7 do
  begin
  for j:=1 to 7 do
    begin
    Write(arr[i,j]);
    Write(' ');
    end;
  WriteLn;
  end;
//поиск максимального элемента в диагонали
maxValue:=arr[1,1];
maxRow:=1;
For i:=1 to 7 do
  begin
    if(arr[i,i]>maxValue)  then
    begin
        maxValue:=arr[i,i];
        maxRow:=i;
    end;
  end;
//вывод строки с максимальным элементом
Writeln('Row with max Diagonal element');
For i:=1 to 7 do
  begin
    Write(arr[maxRow,i]);
    Write(' ');
  end;
WriteLn;
//Readln;
end.
