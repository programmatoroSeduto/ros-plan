# PDDL - expressions

## Basical logic

*and, or*

```lisp
(and ...list...)
(or ...list...)
```

*not*

```lisp
(not expr)
```


## Universal quantifiers

implied in preconditions.

*for all*

`(forall ( ...parameters... ) ...formulas...)`

*existence*

`(exists ( ...parameters... ) ...formulas...)`