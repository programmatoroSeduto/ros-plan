# PDDL PROBLEM FILE - basics

*definition of a problem file*
(define (problem *problem_name*)
	(:domain *domain_file_name*)
	...
)

*objects*
(:objects ...list...)
the list is made up of elements such as:
name
name - type

*intial condition*
List of ground predicates initially true
(:init ...predicates...)
The list of predicates is a list of *ground* predicates. 
Put here only the predicates which are *true*; all the other predicates will be considered *false*.

*definition of a goal*
a goal is a furmula which indicates the final state of the system. It has to be satisfied to the planner.
(:goal formula)


## Structure of a problem file
1.	problem name and reference to the domain file
2.	objects
3.	initial state
4.	goal


## Snippet - problem file
```
(define (problem ...)

(:domain ...)
(:objects ...)
(:init ...)
(:goal ...)

)
```