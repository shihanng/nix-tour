let
  list = [ { name = "foo"; value = 123; }
           { name = "bar"; value = 456; } ];
  string = ''{"x": [1, 2, 3], "y": null}'';
in
{
  ex1 = builtins.listToAttrs list == { foo = 123; bar = 456;};
  ex2 = builtins.fromJSON string == { x = [ 1 2 3 ]; y = null; };
}
