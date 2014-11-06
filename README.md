# ![Logo](https://raw.githubusercontent.com/clarus/icons/master/castle-48.png) Error Handlers *beta*
Simple. Robust. Ubiquitous.

## Install
### With OPAM
Add the Coq unstable repository:

    opam repo add coq-unstable https://github.com/coq/repo-unstable.git

and run:

    opam install coq:error-handlers

### From the sources
Do a classic:

    ./configure.sh
    make
    make install

## Use
Add:

    Require Import ErrorHandlers.All.

at the beginning of your source files. It will import the following functions:
* `Option.bind : forall {A B : Type}, option A -> (A -> option B) -> option B`
* `Sum.bind : forall {E A B : Type}, A + E -> (A -> B + E) -> B + E`
