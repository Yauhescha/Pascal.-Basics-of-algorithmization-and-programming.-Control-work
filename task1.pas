program Project1;

var
x,i,sum:Integer;
arr:Array of Integer;
begin
sum:=0;
Writeln('Write count of elements');
ReadLn(x);
SetLength(arr,x);

Writeln('Write elements each other');
for i:=0 to (x-1)  do
ReadLn(arr[i]);

Writeln('Yours array');
for i:=0 to x-1  do
begin
  Write('arr['+IntToStr(i)+']='+IntToStr(arr[i])+' ');
  sum:=sum+arr[i];
end;
Writeln('');

Writeln('Sum: '+IntToStr(sum));


Readln;
end.
 