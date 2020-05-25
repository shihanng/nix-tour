with import <nixpkgs> { };
let
  list = [["a"] ["b"] ["c"]];
  
  attrList = [{a = 1;} {b = 0;} {a = 2;}];
  catAttrs = name: List: builtins.concatLists (map (x: if x ? ${name} then [x.${name}] else []) List);
in
rec {
  example = builtins.concatLists list; #is [ "a" "b" "c" ]
  result = catAttrs "a" attrList; #should be [1 2] 
}
