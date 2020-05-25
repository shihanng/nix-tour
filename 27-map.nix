let
  bar = ["bar" "foo" "bla"];
  numbers = [1 2 3 4];
in
{
  #multiplies every number by 2
  example = map (n: n * 2) numbers; 
  #complete this
  foobar = map ( s: s+"bar" ) bar;
}
