# cis-1200

## How to setup codio template/infrastructure locally
1. Create new file `dune` and type: `(executable (name assert))`
2. Create new file `dune-project` and type: `(lang dune 3.4)`
3. In your terminal run the following:
    1. `dune build assert.exe`
    1. `ocamlc -c assert.mli`
    2. `ocamlc -c assert.ml`
    3. Go into `utop` and run:
        1. `#load "assert.cmo" ;;`
        2. Run code with `#use "myfile.ml`

## To run something:
1. `utop` inside the working directory
2. `#use "myfile.ml"`

## `utop` isn't working!
1. Do `eval $(opam env)`
2. Try `utop` again


