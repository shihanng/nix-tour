with import <nixpkgs> { };
let
  attrSet = {c = 3; a = 1; b = 2;};

  attrValues = attrSet: map(e: attrSet.${e}) (lib.attrNames attrSet);
in
rec {
  solution = attrValues attrSet; #should be [1 2 3]
}
