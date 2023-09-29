{ fetchFromGitHub, trivialBuild }:

trivialBuild rec {
  pname = "straight.el";
  version = "20230929.0";
  ename = pname;
  patches = [ ./nogit.patch ];
  src = fetchFromGitHub {
    owner = "raxod502";
    repo = "straight.el";
    rev = "079626673687caba2a7dc8394d057f5672cc799b";
    sha256 = "11vjv5dgjkiw8jjy9irk16kadl32mzxgs8fm2x5jgylnri18igch";
    # date = "2023-08-11T17:15:48-07:00";
    # branch = "develop";
  };
}
