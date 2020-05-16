with import <nixpkgs> { };
let
  min = l: r: if (l > r) then r else l;
  max = l: r: if (l < r) then r else l;
in
{
  ex1 = min 5 3;
  ex2 = stdenv.lib.max 9 4;
}
