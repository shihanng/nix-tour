with import <nixpkgs> { };
with stdenv.lib;
let
  attr = {a="a"; b = 1; c = true;};
  s = "b";
in
{
  ex0 = isAttrs attr;
  ex1 = attr.a == "a";
  ex2 = attr.${s} == 1;
  ex3 = attrVals ["c" "b"] attr == [ true 1 ];
  ex4 = attrValues attr == [ "a" 1 true ];
  ex5 = builtins.intersectAttrs attr {a="b"; d=234; c="";} 
    == { a = "b"; c = "";};
  ex6 = removeAttrs attr ["b" "c"] == { a = "a"; };
  ex7 = ! attr ? a == false;
}
