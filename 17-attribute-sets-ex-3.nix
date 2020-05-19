let
  attrSetBonus = {f = {add = (x: y: x + y);
                       mul = (x: y: x * y);};
                  n = {one = 1; two = 2;};};
in
rec {
  #Bonus: use only the attrSetBonus to solve this one
  exBonus = with attrSetBonus; 5 == f.add (f.mul n.two n.two) n.one ;
}
