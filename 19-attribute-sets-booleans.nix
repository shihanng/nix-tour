let
  attrSet = {x = "a"; y = "b"; b = {t = true; f = false;};};
  attrSet.c = 1;
  attrSet.d = null;
  attrSet.e.f = "g";
in
rec {
  #boolean
  ex0 = attrSet.b.t;
  #equal
  ex01 =  "a" == attrSet.x; 
  #unequal 
  ex02 = !("b" != attrSet.y );
  #and/or/neg
  ex03 = ex01 && !ex02 || ! attrSet.b.f;
  #implication
  ex04 = true -> attrSet.b.t;
  #contains attribute
  ex05 = attrSet ? x;
  ex06 = attrSet.b ? f;
}
