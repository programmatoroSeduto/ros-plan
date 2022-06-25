# PDDL 2.1 - numerical and temporal aspects - syntax

## functions
(:functions
	...
	(var-name ?arg1 - type1 ?arg2 - type2 ...)
	...
)

## Comparisons
supported operators: >, <, =, >=, <=
syntax:
(comparison f1 f2)
Remark: the operator *=* is also used in the :init statement to assign an initial condition.

## Computing temporany values
spported operators: +, -, *, /
syntax:
(op f1 f2)

## Updating a value
operators +=, -= in PDDL:
	(increase which howmuch)
	(decrease which howmuch)
operators *=, /= in PDDL:
	(scale-up which factor)
	(scale-down which factor)
assignment operator in PDDL:
	(assign which value)