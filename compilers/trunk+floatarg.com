opam-version: "1"
name: "trunk+floatarg"
src: "https://github.com/chambart/ocaml/archive/floatarg.tar.gz"
patches: []
make: [ "world" "world.opt" ]
packages : [ "base-unix" "base-bigarray" "base-threads" ]
env: [
  [ CAML_LD_LIBRARY_PATH += "%{lib}%/stublibs" ]
]
