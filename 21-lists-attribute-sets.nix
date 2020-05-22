let
  attrSet = {x = "a"; y = "b"; b = {t = true; f = false;};};
  attrSet.c = 1;
  attrSet.d = 2;
  attrSet.e.f = "g";

  list1 = [attrSet.c attrSet.d];
  list2 = [attrSet.x attrSet.y];

in
{
  #List concatenation.
  ex0 = ["a" "b" 1 2] == list2 ++ list1;
}
