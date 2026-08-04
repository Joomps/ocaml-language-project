# ocaml-language-project
Converting CS 321 work from PLAI to OCaml, Summer 2026

Project overview:
A functional arithmetic language implemented in OCaml, built as a portfolio project targeting PL and formal verification roles. Features a two-stage pipeline with a minimal core language and a more expressive surface syntax, an environment-based interpreter using closures, and a Hindley-Milner type checker using algorithm W. Properties of the language will be formalized in Agda, including proofs of Progress and Preservation.


Architecture:
Parser (lexer.mll, parser.mly) - tokenizes input text and assembles it into an sae AST.
Compiler (desugar.ml) - converts from sae to ae.
Interpreter (eval.ml) - evaluates ae, outputting the final value.


Design decisions:
Even though the work done by the compiler is minimal enough to be reasonably fit into the parsing step, the two processes are separated. This greatly simplifies future work (including the addition of any new language functionality, compiler optimizations, and Agda formalization), as the interpreter, type-checker, and Agda proofs only need to deal with ae, not sae.

The language uses three types of arithmetic expressions: ae, sae, and aeValue. ae represents the core language, used by the interpreter, sae is most closely related to what the user inputs, and aeValue is only used at the end of the pipeline as the final output value. Having a surface level type separate from the core type allows the user to make use of with expressions and multi-argument functions while the core type remains as simple as possible.

Using inline records for ae and sae as opposed to tuples trades convenience for explicitness. It makes functions like the interpreter much easier to read without needing to constantly reference the type definitions, but an easier form of syntax (easy_syntax.ml) was needed for writing compiler tests.

Errors such as a nullary function or free identifier use the failwith function. This was easier to work with than using a result type or custom exceptions, but would have to be changed in a production language to improve usability. Using a result type would allow the ability to recover from errors and improve readability.

on choosing HM type inference over some other approach
(just list inference, let-polymorphism, and unification)

on adding let - how it differs from with (doenst get compiled into a function call)

on choosing algorithm W over a two-step approach

on needing bools to properly test let-polymorphism