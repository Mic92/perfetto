with import <nixpkgs> {};
mkShell {
  packages = [
    bashInteractive
    gn
    ninja
    zlib
    protobuf
  ];
}
