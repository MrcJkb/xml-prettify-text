{ mkDerivation, base, filepath, gauge, lib, mtl
, optparse-applicative, protolude, tasty, tasty-golden, text
, text-show, with-utf8
}:
mkDerivation {
  pname = "xml-prettify-text";
  version = "1.0.0.1";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base mtl protolude text text-show ];
  executableHaskellDepends = [
    base optparse-applicative protolude text with-utf8
  ];
  testHaskellDepends = [
    base filepath gauge protolude tasty tasty-golden text
  ];
  homepage = "https://github.com/MrcJkb/xml-prettify-text";
  description = "See README for more info";
  license = lib.licenses.gpl2Only;
}
