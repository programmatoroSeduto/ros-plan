# Numerical Planning
from PDDL 2.1 . Not supported by all the engines.

## Domain file
*requirements*
The requirement *:fluent* is needed for working with numeico PDDL.
(:requirements :strips :typing :fluent)

*Defining quantities*
In PDDL fluent it is possible to express variable quantities using *functions*, a sort of predicate in which variables are numbers instead of simple objects.
(functions ...funct_list...)
Each *function* is a variable associated with some other objects, eventually. There is the syntax:
(funct_name ... ?obj - type ...)
For instance, we can represent in this way the fuel of a vehicle:
(fuel-level ?v - vehicle)
Worthy of note: not all the quantities are variable! The programmer can define constant quantities, for instance the fuel required for a travel by car from A to B.

*effect: increase or decrease a quantity*
(decrease ...grounded functions...)
(increase ...grounded functions...)


## Problem file
*Initialize quantitites*
(= grounded_function initial_value)

*goals for quantities*
(:metric metric_type functions)
for instance, you can ask in this way to keep as less as possible a quantity:
(:metric decrease (total-fuel-used))
