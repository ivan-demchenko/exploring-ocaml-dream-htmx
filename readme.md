# Exploring OCaml and Dream with htmx

## Running this in a devcontainer

Setup `opam`. Run
```
opam init
eval $(opam env --switch=default)
```
... to update the current shell environment

Setup tools:
```
opam install dune ocaml-lsp-server odoc ocamlformat utop dream
```

Notes.

Init the project:
```
dune init proj simple_server
```

Build and run it:
```
dune build
dune exec simple_server
```

REPL
```
dune utop
```
exit using Ctrl-D