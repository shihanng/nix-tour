with import <nixpkgs> { };
let
  list = ["a" "b" "a" "c" "d" "a"];
  countA = lib.fold (x: y: if x == "a" then y+1 else y) 0 ;
in
rec {
  example = lib.fold (x: y: x + y) "" ["a" "b" "c"]; #is "abc"
  result = countA list; #should be 3
}
