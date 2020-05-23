let 
  myImport = import <nixpkgs> {};
  x = 123; 
  as = { a = "foo"; b = "bar"; };
  
in with as; { 
  inherit x; #example
  inherit a b;
  z = myImport.lib.isBool true;
}
