# PDDL DOMAIN FILE - basics

*definition of a domain*

```lisp
(define (domain *domain_name*) 
	...statements...
)
```

*requirements*

immediately after the opening statement of the domain definition.

`(:requirements ...req...)`

example:

`(:requirements :adl :typing :strips)`

Types of requirements:

- `:typing`	-- the domain uses types
- `:strips`	-- basic requirement for all the PDDL projects
- `:fluents` -- use numerical and temporal planning
- `:negative-preconditions`	-- it allows negative preconditions

*define types*

Note: this feature isn't necessary, because you could use predicates instead for checking types. 

`(:types ...types...)`

*predicates definition*

`(:predicates ...predicates definitions...)`

definition of a predicate (note: this syntax is always used for defining replaceable arguments)

without types:

`(pred_name ?arg1 ?arg2 ...)`

whith types:

`(pred_name ?arg1 - type ?arg2 - type ...)`

grouping types:

`(pred_name ?arg_1 ... ?arg_n - type)`


## Actions

*tag for an action*

```lisp
(:action *name*
	:parameters ( ...args... )
	:preconditions ( ...predicates... )
	:effects ( ...formulas... )
)
```

*valid preconditions*

```lisp
(and ...)
(or ...)
(not *expr*)
(forall (...args...) expr)
(exists (...args...) expr)
```

*valid effects*

```
predicate
(not predicate)
(and ...)
(or ...)
(when formula predicate)
(forall (...args...) expr)
```


## Order of the Domain file

1.	definition, and inside it ...
2.	requirements
3.	types
4.	predicates
5.	actions


## Snippet - domain file

```
(define (domain ...)
  (:requirements ...)
  (:types ...)
  (:predicates ...)
  
  (action ...
  :parameters
  ( ... )
  :preconditions
  ( ... )
  :effects
  ( ... )
  )
)
```