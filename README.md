# ocaml-language-project
Converting CS 321 work from PLAI to OCaml, Summer 2026

Big difference between Racket and OCaml: 
Racket functions calls are obvious because we use parentheses
OCaml calls aren't so immediately apparent.

However, that's ok.
Just because OCaml is like that, doesn't mean this new language has be the same way.


Like in the original language, we need a dictionary to store all the variable and function definitions.
It'll have to be passed alongside the actual values at every step of the interpretation.



While I want to skip the compiler step, as all I need from it right now is currying and removing with, it'd be too much of a hassle to add in that step later, so it'll just be very simple for now.