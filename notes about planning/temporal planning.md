# Temporal Planning
from PDDL 2.1 .
Noteworthy: planners need to discretize, fact that can lead to issues and invalid plans.


## Domain File - Durative action
*overall syntax*
(:durative-action action-name
:parameters (...params...)
:duration (= ?duration duration_value)
:condition (and ...conditions...)
:effect (...effects...)
)

*at propositions*
These statements are useful for testing a proposition that must be true, or becomes verified, at a certain moment of the action.
at the beginning of the action:
(at start ...formula...)
at the end of the action:
(at end ...formula...)
during the action:
(over all ...formula...)
These can be used both in the condition and in the effect statements. 

## Combining Numerical and Temporal Aspects in the problem
This is a bit entangled.

*metric with time constraint*
(:metric type (function) (*#t(function)))

*duration of an effect*
(increase (function) (*#t(function)))
(decrease (function) (*#t(function)))