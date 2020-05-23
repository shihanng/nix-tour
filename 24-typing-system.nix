with import <nixpkgs> {};
with lib;
{
  ex00 = isAttrs {};
  ex01 = isAttrs {};
  ex03 = isString "a"; 
  ex04 = isInt (-3); 
  ex05 = isFunction (x: x);
  ex06 = isString x:x;
  ex07 = isString ("x");
  ex08 = isNull null; 
  ex09 = isFunction (y: y+1);
  ex10 = isList [({z}: z) (x: x)];
  ex11 = isAttrs {a=[];};
  ex12 = isInt (-10);
}
