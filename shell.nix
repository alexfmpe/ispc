let
  # Merge into master of https://github.com/NixOS/nixpkgs/pull/354585
  nixpkgsSrc = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/1754ed842e2d543b3c969d770d261cd99a54b1d3.tar.gz"; #
    sha256 = "sha256:1j5nzgfk0m3vp4z0zab9vn0irh5jg975l8bwck528w45c8jjb0x5";
  };
in

with (import nixpkgsSrc {}); mkShell {
  buildInputs = [ ispc zlib ];
}
