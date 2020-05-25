with import <nixpkgs> { };
let
  attrSet = {c = 3; a = 1; b = 2;};
  #This is an example function that extracts a single value 
  getSingleVal = (attrSet: x: attrSet.${x});

  #tips: use the map function and access the attribute values 
  #in the same way as 'getSingleVal'
  attrVals = (l: set: map(x: set.${x}) l);

in
rec {
  example = getSingleVal attrSet "a"; #is [1]
  solution = attrVals ["a" "b" "c"] attrSet; #should be [1 2 3]
}
