with import <nixpkgs> { };
with stdenv.lib;
let
  list = [2 "4" true true {a = 27;} 2];
  f = x: isString x;
  s = "foobar";
in
{
  ex00 = isList list;
  ex01 = elemAt list 2 == true;
  ex02 = length list == 6;
  ex03 = last list == 2;
  ex04 = filter f list == [ "4" ];
  ex05 = head list == 2;
  ex06 = tail list == [ "4" true true {a = 27;} 2 ];
  ex07 = remove true list == [ 2 "4" {a = 27;} 2 ];
  ex08 = toList s == [ "foobar" ];
  ex09 = take 3 list == [ 2 "4" true ];
  ex10 = drop 4 list == [ {a = 27;} 2 ];
  ex11 = unique list == [ 2 "4" true {a = 27;} ];
  ex12 = list ++ ["x" "y"] == [ 2 "4" true true {a = 27;} 2 "x" "y" ];
}
