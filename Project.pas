type
  TMyArray = array[1..2] of Integer; 
var
  W,x,y,z:real;

  //процедура получения минимального/максимального. Минимальный элемент идет первым
  function getMinMax(A:Integer; B:Integer):TMyArray;
  var arr:TMyArray;
  begin
    if(A<B) then 
    begin
      arr[1]:=A;
      arr[2]:=B;
    end else begin
      arr[1]:=B;
      arr[2]:=A;
    end;
    Result:=arr;    
  end;
  
  //получение минимума
  function min(A:Integer; B:Integer):Integer;
  begin
    Result:=getMinMax(A,B)[0];
  end;
  //получение максимума
  function max(A:Integer; B:Integer):Integer;
  begin
    Result:=getMinMax(A,B)[1];
  end;
  begin
Writeln('Write x');ReadLn(x);
Writeln('Write y');ReadLn(y);
Writeln('Write z');ReadLn(z);
W:=min(x,y)/max(x,y) + max(x,y)/min(y,z+x);
Writeln('Answer: '+W);
end.