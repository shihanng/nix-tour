with import <nixpkgs> { };
let
  listOfNumbers = [2 4 6 9 27];
  # myMap = XXX fold XXX; 
  myMap = op: list: lib.fold (x: y: [(op x)] ++ y) [] list; 
in
rec {
  #your map should create the same result as the standard map function
  example = map (x: builtins.div x 2) listOfNumbers; 
  result = myMap (x: builtins.div x 2) listOfNumbers;
}
