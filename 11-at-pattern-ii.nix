let
  func = {a, b, ...}@bargs: if a == "foo" then
    b + bargs.c else b + bargs.x + bargs.y;
in
{
  #complete next line so it evaluates to "foobar"
  foobar = func {a="bar"; b="foo"; x="";y="bar";};
}
