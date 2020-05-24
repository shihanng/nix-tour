with import <nixpkgs> {};
let
  func = x: y: assert (x==2) || abort "x has to be 2 or it won't work!"; x + y;
  n = -1; # only modify this line
in

assert (lib.isInt n) || abort "Type error since supplied argument is no int!";

rec {
  ex00 = func (n+3) 3;
}
