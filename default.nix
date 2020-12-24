{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation {
  name = "WeehcatRelay";
  nativeBuildInputs = [ cocoapods ];
}
