# ocaml-language-project
Converting CS 321 work from PLAI to OCaml, Summer 2026

Project overview:
A functional arithmetic language implemented in OCaml, built as a portfolio project targeting PL and formal verification roles. Features a two-stage pipeline with a minimal core language and a more expressive surface syntax, an environment-based interpreter using closures, and a Hindley-Milner type checker using algorithm W. Properties of the language will be formalized in Agda, including proofs of Progress and Preservation.


Architecture:
Parser (lexer.mll, parser.mly) - tokenizes input text and assembles it into an sae AST.
Compiler (desugar.ml) - converts from sae to ae.
Type checker (infer.ml) - type checks an ae expression.
Interpreter (eval.ml) - evaluates ae, outputting the final value.

Build and Run:


Design decisions:
Even though the work done by the compiler is minimal enough to be reasonably fit into the parsing step, the two processes are separated. This greatly simplifies future work (including the addition of any new language functionality, compiler optimizations, and Agda formalization), as the interpreter, type checker, and Agda proofs only need to deal with ae, not sae.

The language uses three core types: ae, sae, and aeValue. ae represents the core language, used by the interpreter, sae is most closely related to what the user inputs, and aeValue is only used at the end of the pipeline as the final output value. Having a surface level type separate from the core type allows the user to make use of with expressions and multi-argument functions while the core type remains as simple as possible.

Using inline records for ae and sae as opposed to tuples trades convenience for explicitness. It makes functions like the interpreter much easier to read without needing to constantly reference the type definitions, but an easier form of syntax (easy_syntax.ml) was needed for writing compiler tests.

Errors such as a nullary function or free identifier use the failwith function. This was easier to work with than using a result type or custom exceptions, but would have to be changed in a production language. Using a result type would allow the ability to recover from errors and improve readability.

The language uses a Hindley-Milner type system so that the user doesn't need to include type annotations anywhere in their program. HM also supports let-polymorphism, allowing a single function (such as the identity function) to be used on any data type.

The type checker uses a variant of algorithm W using mutable unification variables rather than explicit substitutions, following Oleg Kiselyov's tutorial (https://okmij.org/ftp/ML/generalization.html). This approach means a simpler data structure and earlier error detection.

While with expressions are handled by replacing them with a function call in the compiler, let expressions are left as is. This is required for let-generalization as desugaring let into a function call would remove the point at which HM generalizes type variables. 

Having both numbers and booleans in the language means that let-polymorphism can be properly utilized and tested. Otherwise, it would be impossible to write a program that uses a polymorphic function for two different types.