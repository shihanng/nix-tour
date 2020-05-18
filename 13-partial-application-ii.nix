let
  arguments = {a="Happy"; b="Awesome";};

  func = {a, b}: {d, b, c}: a+b+c+d;
in
{
  A = func arguments {d="Called"; b="Functions"; c="Are";};
}
