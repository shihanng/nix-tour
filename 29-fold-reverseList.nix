with import <nixpkgs> { };
let
  listOfNumbers = [2 4 6 9 27];
  reverseList = lib.fold (e: l: l ++ [e]) [];
in
{
  example = lib.reverseList listOfNumbers;
  result = reverseList listOfNumbers;
}
