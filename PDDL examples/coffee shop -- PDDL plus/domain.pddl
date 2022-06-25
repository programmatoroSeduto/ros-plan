;Header and description

(define (domain robot-bar)

;(:requirements :time :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)

(:types
    client
    waiter
    position
)

(:predicates 
    ;;;; DRINKS
    ;; for taking orders
    (warm-drink-to ?who - client)
    (cold-drink-to ?who - client)
    ;; drinks become ready after the barista prepared them
    (drink-ready-for ?who - client)
    (drink-not-ready-for ?who - client)
    ;; the client is fully served (cookie and drink)
    (client-served ?who - client)
    ;; position of the client in the room
    (client-at-table ?who - client ?table - position)

    ;;; COOLING
    ;; predicate to state a drink is cooling down
    (cooling ?who - client)
    ;; predicate that tell us when the drink is cooled
    (cooled)

    ;;;; BARISTA
    ;; state of the barista (only one barista)
    (barista-free)
    ;; preparing drinks
    (preparing-drink-for ?who - client)

    ;;;; WAITERS
    ;; a waiter is in charge to serve one client
    (waiter-client ?w - waiter ?who - client)
    ;; OOG or TRAY mode
    (waiter-OOG-mode ?w - waiter)
    (waiter-TRAY-mode ?w - waiter)
    ;; in OOG mode
    ;; the robot takes the drink from the bar with its gripper
    (waiter-gripper-carry ?w - waiter)
    (waiter-gripper-empty ?w - waiter)
    ;; where is the waiter at the moment
    (waiter-at ?w - waiter ?p - position)
    ;; to state if the waiter is moving
    (waiter-moving ?w - waiter)
    (waiter-still ?w - waiter)
    ;; the robot is cleaning a table
    (waiter-cleaning-table ?w - waiter ?table - position)
    ;; a predicate to know when the waiter is at the bar 
    (waiter-at-bar ?w - waiter)
    (waiter-not-at-bar ?w - waiter)
    ;; predicates to know if the waiter is moving towards something
    (waiter-target ?w - waiter ?p - position)
    (waiter-no-target ?w - waiter)
    (waiter-has-target ?w - waiter)

    ;;;; COOKIES
    ;; predicate to state if a client ordered a cookie
    (cookie-to ?who - client)
    (cookie-not-picked ?who - client)

    ;;;; ENVIRONMENT
    ;; tables and bar
    (pos-is-bar ?bar - position)
    (pos-is-table ?table - position)
    ;; two types of table: big, or small
    (table-big ?table - position)
    (table-small ?table - position)
    ;; cleaning
    (table-dirty ?table - position)
    (table-not-cleaned-yet ?table - position)

    ;;;;;;;;;;;;;;;; DEBUG ONLY ;;;;;;;;;;;;;;;;;;
    (debug)
    ;;;;;;;;;;;;;;;; DEBUG ONLY ;;;;;;;;;;;;;;;;;;
)


(:functions
    ;;;; Bar
    ;; remaining times for preparing drinks
    (bar-remaining-time)
    ;; total time preparing drinks
    (bar-cold-drink-time)
    (bar-warm-drink-time)
    ;; predicate to state how many drinks are ready
    ;(ready-drinks-on-the-bar)

    ;;;; COOLING
    ;; functions to state the progress of the cooling process
    (cooling-remaining-time ?who - client)
    (cooling-total-time) 

    ;;;; WAITERS
    ;; velocities of a waiter
    (waiter-normal-velocity)
    (waiter-TRAY-velocity)
    (waiter-actual-velocity ?w - waiter)
    ;; the remaining distance to the target
    (waiter-remaining-distance ?w - waiter)
    ;; how much time the robot spend for cleaning a table (per area unit)
    (waiter-cleaning-vel)
    ;; remaining time to clean
    (waiter-cleaning-progress ?w - waiter)
    ;; how many free slots on the tray
    (tray-free-slots ?w - waiter)

    ;;;; ENVIRONMENT
    ;; distance between two positions
    (distance ?p1 ?p2 - position)
    ;; area of tables
    (big-table-area) 
    (small-table-area)

    ;; CLEANING AFTER FINISH
    ;; remaining people at one table
    (people-at-table ?p - position)
    ;; how long until the client is done
    (client-drinking-progress ?who - client)
)

;;;;;;;;;;;;;;;;;; BARISTA ;;;;;;;;;;;;;;;;;; 

;; action to start preparing a cold drink
(:action bar-prepare-cold-drink
    :parameters (?w - client)
    :precondition (and
        (drink-not-ready-for ?w)
        (cold-drink-to ?w)
        (barista-free)
    )
    :effect (and 
        (preparing-drink-for ?w)
        (assign (bar-remaining-time) (bar-cold-drink-time))
        (not (barista-free))
    )
)

;; action to start preparing a warm drink
(:action bar-prepare-warm-drink
    :parameters (?w - client)
    :precondition (and
        (drink-not-ready-for ?w)
        (warm-drink-to ?w)
        (barista-free)
    )
    :effect (and 
        (preparing-drink-for ?w)
        (assign (bar-remaining-time) (bar-warm-drink-time))
        (not (barista-free))
    )
)

;; process for preparing a drink
(:process bar-preparing-drink
    :parameters ()
    :precondition (and
        (> (bar-remaining-time) 0)
    )
    :effect (and
        (decrease (bar-remaining-time) (* #t 1))
    )
)

;; event to stop the preparation of a cold drink drink 
(:event bar-prepared-cold-drink
    :parameters (?w - client)
    :precondition (and
        (cold-drink-to ?w)
        (<= (bar-remaining-time ) 0)
        (preparing-drink-for ?w)
   )
    :effect (and
        (drink-ready-for ?w)
        (barista-free)
        (assign (bar-remaining-time) -1)
        (not (drink-not-ready-for ?w))
        (not (preparing-drink-for ?w))
    )
)

;; event to stop the preparation of a warm drink 
(:event bar-prepared-warm-drink
    :parameters (?w - client)
    :precondition (and
        (warm-drink-to ?w)
        (<= (bar-remaining-time ) 0)
        (preparing-drink-for ?w)
   )
    :effect (and
        (drink-ready-for ?w)
        (barista-free)
        (assign (bar-remaining-time) -1)
        (assign (cooling-remaining-time ?w) (cooling-total-time))
        (cooling ?w)
        (not (drink-not-ready-for ?w))
        (not (preparing-drink-for ?w))
    )
)

;;;;;;;;;;;;;;;;;; BARISTA ;;;;;;;;;;;;;;;;;; 

;;;;;;;;;;;;;;;;;; COOLING ;;;;;;;;;;;;;;;;;; 

;; process to implement the cooling process
(:process cooling
    :parameters (?w - client)
    :precondition (and
        (> (cooling-remaining-time ?w) 0)
        (cooling ?w)
    )
    :effect (and
        (decrease (cooling-remaining-time ?w) (* #t 1))
    )
)

;; event  to stop the cooling process
(:event cooled
    :parameters (?w - client)
    :precondition (and
        (cooling ?w)
        (<= (cooling-remaining-time ?w) 0)
   )
    :effect (and
        (not (cooling ?w))
        (cooled)
    )
)
;;;;;;;;;;;;;;;;;; COOLING ;;;;;;;;;;;;;;;;;; 

;;;;;;;;;;;;;;;;;; PICK UP ;;;;;;;;;;;;;;;;;; 

;; action to pick up a drink in OOG mode
(:action pick-up-drink-OOG
    :parameters (?w - waiter ?who - client)
    :precondition (and 
        (waiter-at-bar ?w) (waiter-gripper-empty ?w)
        (drink-ready-for ?who)
        (waiter-OOG-mode ?w)
    )
    :effect (and 
        (not (waiter-gripper-empty ?w))  (waiter-gripper-carry ?w) 
        (waiter-client ?w ?who)
        (not (drink-ready-for ?who))
    )
)

;; action to state that the robot reached the bar
(:action waiter-at-bar-signal
    :parameters (?w - waiter ?p - position)
    :precondition (and 
        (waiter-not-at-bar ?w) (waiter-at ?w ?p) (pos-is-bar ?p)
    )
    :effect (and 
        (waiter-at-bar ?w) (not (waiter-not-at-bar ?w))
    )
)

;; action to state the robot is leaving the bar 
(:action waiter-leaving-bar-signal
    :parameters (?w - waiter ?p - position)
    :precondition (and 
        (waiter-at ?w ?p) (pos-is-bar ?p)
        (waiter-at-bar ?w)
    )
    :effect (and 
        (not (waiter-at-bar ?w))
        (waiter-not-at-bar ?w)
    )
)

;; action to pick up the tray 
(:action pick-up-TRAY
    :parameters (?w - waiter)
    :precondition (and 
    
        (waiter-still ?w) ;;ci va??
        (waiter-at-bar ?w) (waiter-gripper-empty ?w)
        (waiter-OOG-mode ?w)
    )
    :effect (and 
        (not (waiter-OOG-mode ?w))
        (waiter-TRAY-mode ?w)
        (not (waiter-gripper-empty ?w))
        (assign (waiter-actual-velocity ?w) (waiter-TRAY-velocity))
    )
)

;; action to drop the tray at the bar
(:action drop-TRAY
    :parameters (?w - waiter )
    :precondition (and

        (waiter-still ?w) ;;ci va??
        (waiter-at-bar ?w)
        (waiter-TRAY-mode ?w)
        (= (tray-free-slots ?w) 3)                    
    )
    :effect (and 
        (not (waiter-TRAY-mode ?w))
        (waiter-OOG-mode ?w)
        (assign (waiter-actual-velocity ?w) (waiter-normal-velocity))
        (waiter-gripper-empty ?w)
    )
)

;; action to pick up a drink on the tray
(:action pick-up-drink-TRAY
    :parameters (?w - waiter ?who - client)
    :precondition (and 

        (waiter-at-bar ?w)
        (drink-ready-for ?who)
        (waiter-TRAY-mode ?w)
        (>= (tray-free-slots ?w) 1)
    )
    :effect (and 
        (waiter-client ?w ?who)
        (not (drink-ready-for ?who))
        (assign (tray-free-slots ?w) (- (tray-free-slots ?w) 1))
    )
)


;;;;;;;;;;;;;;;;;; MOVEMENT ;;;;;;;;;;;;;;;;;; 

;; to set the velocity of the robot to the normal velocity, OOG mode
;(:action mv-set-vel-normal
;    :parameters (?w - waiter)
;    
;    :precondition (and 
;        (waiter-still ?w)
;        (waiter-OOG-mode ?w)
;        (<= (waiter-actual-velocity ?w) 0)
;    )
;    :effect (and
;        (assign (waiter-actual-velocity ?w) (waiter-normal-velocity))
;    )
;)

;; to set the velocity to the Tray velocity
;(:action mv-set-vel-slow
;    :parameters (?w - waiter)
;    :precondition (and 
;        (waiter-still ?w)
;        (waiter-TRAY-mode ?W)
;        (<= (waiter-actual-velocity ?w) 0)
;    )
;    :effect (and 
;        (assign (waiter-actual-velocity ?w) (waiter-TRAY-velocity))
;    )
;)
;; action to start the motion towards a target
(:action mv-goto-target
    :parameters (?w - waiter ?pos1 ?pos2 - position)
    :precondition (and 
        (waiter-not-at-bar ?w)
        (waiter-still ?w)
        (waiter-at ?w ?pos1)
        (> (distance ?pos1 ?pos2) 0)
        (waiter-no-target ?w)
        (> (waiter-actual-velocity ?w) 0)
    )
    :effect (and 
        (not (waiter-still ?w)) (waiter-moving ?w)
        (assign (waiter-remaining-distance ?w) (distance ?pos1 ?pos2))
        (not (waiter-at ?w ?pos1))
        (not (waiter-no-target ?w)) (waiter-has-target ?w)
        (waiter-target ?w ?pos2)
    )
)

;; process to move towards the target
(:process mv-moving-to-target
    :parameters (?w - waiter)
    :precondition (and
        (waiter-moving ?w)
        (waiter-has-target ?w )
        (> (waiter-remaining-distance ?w) 0)
    )
    :effect (and
        (decrease (waiter-remaining-distance ?w) (* #t (waiter-actual-velocity ?w)))
    )
)

;; event to stop the motion once the target is reached
(:event mv-target-reached
    :parameters (?w - waiter ?tg - position)
    :precondition (and
        (waiter-moving ?w)
        (waiter-has-target ?w) (waiter-target ?w ?tg)
        (<= (waiter-remaining-distance ?w) 0)
    )
    :effect (and
        (not (waiter-moving ?w)) (waiter-still ?w)
        (waiter-at ?w ?tg)
        (not (waiter-has-target ?w)) (waiter-no-target ?w) 
        (not (waiter-target ?w ?tg))
        (assign (waiter-remaining-distance ?w) -1)
    )
)

;;;;;;;;;;;;;;;;;; SERVING ;;;;;;;;;;;;;;;;;; 

;; action to serve a warm drink while in OOG mode
(:action serve-warm-drink-OOG
    :parameters (?who - client ?w - waiter ?p - position)
    :precondition (and 
        (waiter-OOG-mode ?w)                                       
        (waiter-gripper-carry ?w)
        (warm-drink-to ?who)
        (waiter-client ?w ?who)
        (pos-is-table ?p)
        (waiter-at ?w ?p)
        (client-at-table ?who ?p)
    )                        
    :effect (and 
        (client-served ?who)
        (assign (client-drinking-progress ?who) 4)
        (not (waiter-gripper-carry ?w)) (waiter-gripper-empty ?w)
        (not (waiter-client ?w ?who))
        (not (warm-drink-to ?who))
        (not (cooling ?who))
        (assign (cooling-remaining-time ?who) -1)
    )
)                 

;; action to serve a cold drink in OOG mode
(:action serve-cold-drink-OOG
    :parameters (?who - client ?w - waiter ?p - position)
    :precondition (and 
        (waiter-OOG-mode ?w)                                       
        (waiter-gripper-carry ?w)
        (cold-drink-to ?who)
        (waiter-client ?w ?who)
        (pos-is-table ?p)
        (waiter-at ?w ?p)
        (client-at-table ?who ?p)
    )           
    :effect (and 
        (cookie-to ?who)
        (cookie-not-picked ?who)
        (not (waiter-gripper-carry ?w)) (waiter-gripper-empty ?w)
        (not (waiter-client ?w ?who))
        (not (cold-drink-to ?who))
    )
)   

;; action to serve a warm drink in tray mode
(:action serve-warm-drink-TRAY
    :parameters (?who - client ?w - waiter ?p - position)
    :precondition (and 
        (waiter-TRAY-mode ?w)
        (< (tray-free-slots ?w) 3)
        (warm-drink-to ?who)
        (waiter-client ?w ?who)
        (pos-is-table ?p)
        (waiter-at ?w ?p)
        (client-at-table ?who ?p)
    )       
    :effect (and 
        (client-served ?who)
        (assign (client-drinking-progress ?who) 4)
        (increase (tray-free-slots ?w) 1)
        (not (warm-drink-to ?who))
        (not (waiter-client ?w ?who))
        (not (cooling ?who))
        (assign (cooling-remaining-time ?who) -1)
    )
)       

;; action to serve a cold drink in tray mode
(:action serve-cold-drink-TRAY
    :parameters (?who - client ?w - waiter ?p - position)
    :precondition (and 
        (waiter-TRAY-mode ?w)
        (< (tray-free-slots ?w) 3)
        (cold-drink-to ?who)
        (waiter-client ?w ?who)
        (pos-is-table ?p)
        (waiter-at ?w ?p)
        (client-at-table ?who ?p)
    )          
    :effect (and 
        (cookie-to ?who)
        (cookie-not-picked ?who)
        (increase (tray-free-slots ?w) 1)
        (not (cold-drink-to ?who))
        (not (waiter-client ?w ?who))
    )
)

;;;;;;;;;;;;;;;;;; SERVING ;;;;;;;;;;;;;;;;;; 


;;;;;;;;;;;;;;;;;; COOKIE ;;;;;;;;;;;;;;;;;; 

;; action to pick up cookies from the bar OOG
(:action pick-up-cookie-OOG
    :parameters (?w - waiter ?who - client)
    :precondition (and
        (waiter-OOG-mode ?w)
        (waiter-at-bar ?w)
        (waiter-gripper-empty ?w)
        (cookie-to ?who)
        (cookie-not-picked ?who)
    )
    :effect (and
        (not (cookie-not-picked ?who))
        (not (waiter-gripper-empty ?w)) (waiter-gripper-carry ?w)
        (waiter-client ?w ?who)
        ;(assign (waiter-actual-velocity ?w) -1)
    )
)

;; action to pick up cookies from the bar TRAY
(:action pick-cookie-TRAY
    :parameters (?w - waiter ?who - client)
    :precondition (and
        (waiter-TRAY-mode ?w)
        (waiter-at-bar ?w)
        (cookie-to ?who)
        (cookie-not-picked ?who)
        (>= (tray-free-slots ?w) 1)
    )
    :effect (and
        (not (cookie-not-picked ?who))
        (waiter-client ?w ?who)
        (decrease (tray-free-slots ?w) 1)
    )
)

    ;; action to serve the cookie to the client OOG
    (:action serve-cookie-OOG
        :parameters (?who - client ?w - waiter ?p - position)
        :precondition (and
            (waiter-OOG-mode ?w)
            (waiter-gripper-carry ?w)
            (cookie-to ?who)
            (waiter-client ?w ?who)
            (pos-is-table ?p)
            (waiter-at ?w ?p)
            (client-at-table ?who ?p)
        )
        :effect (and
            (not(cookie-to ?who))
            (not (waiter-gripper-carry ?w)) (waiter-gripper-empty ?w)
            (not (waiter-client ?w ?who))
            (client-served ?who)
            (assign (client-drinking-progress ?who) 4)
        )
    )

    ;; action to serve the cookie to the client TRAY
    (:action serve-cookie-TRAY
        :parameters (?who - client ?w - waiter ?p - position)
        :precondition (and
            (waiter-TRAY-mode ?w)
            (< (tray-free-slots ?w) 3)
            (cookie-to ?who)
            (waiter-client ?w ?who)
            (pos-is-table ?p)
            (waiter-at ?w ?p)
            (client-at-table ?who ?p)
        )
        :effect (and
            (increase (tray-free-slots ?w) 1)
            (not (cookie-to ?who))
            (not (waiter-client ?w ?who))
            (client-served ?who)
            (assign (client-drinking-progress ?who) 4)
        )
    )

    ;;;;;;;;;;;;;;;;;; COOKIE ;;;;;;;;;;;;;;;;;; 

;;;;;;;;;;;;;;;;;; CLEANING TABLES ;;;;;;;;;;;;;;;;;; 

;; action to start cleaning a big table
(:action start-cleaning-table-big
    :parameters (?w - waiter ?p - position)
    :precondition (and 
        (waiter-at ?w ?p)
        (waiter-gripper-empty ?w)
        (pos-is-table ?p)
        (table-dirty ?p)
        (waiter-still ?w);modified
        (<= (waiter-cleaning-progress ?w) 0)
        (table-big ?p)
    )
    :effect (and 
        (assign (waiter-cleaning-progress ?w) (big-table-area))
        (waiter-cleaning-table ?w ?p)
        (not (waiter-still ?w));modified
    )
)

;; action to start cleaning a small table
(:action start-cleaning-table-small
    :parameters (?w - waiter ?p - position)
    :precondition (and 
        (waiter-at ?w ?p)
        (waiter-gripper-empty ?w)
        (pos-is-table ?p)
        (table-dirty ?p)
        (waiter-still ?w);modified
        (<= (waiter-cleaning-progress ?w) 0)
        (table-small ?p)
    )
    :effect (and 
        (assign (waiter-cleaning-progress ?w) (small-table-area))
        (waiter-cleaning-table ?w ?p)
        (not (waiter-still ?w));modified
    )
)

;; process to clean the table
(:process PROCESS-cleaning-table
    :parameters (?w - waiter ?t - position)
    :precondition (and
        (> (waiter-cleaning-progress ?w) 0)
        (waiter-cleaning-table ?w ?t)
        (table-dirty ?t)
    )
    :effect (and
        (decrease (waiter-cleaning-progress ?w) (* #t (waiter-cleaning-vel)))
    )
)

;; event to finish cleaning the table
(:event EVENT-table-cleaning-done
    :parameters (?w - waiter ?p - position)
    :precondition (and
        (waiter-at ?w ?p)
        (pos-is-table ?p)
        (waiter-cleaning-table ?w ?p)
        (table-dirty ?p)
        (<= (waiter-cleaning-progress ?w) 0)
    )
    :effect (and
        (not (table-dirty ?p))
        (not (waiter-cleaning-table ?w ?p))
        (assign (waiter-cleaning-progress ?w) -1)
        (debug)
        (waiter-still ?w)
    )
)

;;;;;;;;;;;;;;;;;; CLEANING TABLES ;;;;;;;;;;;;;;;;;; 

;;;;;;;;;;;;;;;;; CLEANING WHEN DONE;;;;;;;;;;;;;;;;; 

;; process to represent the tim ewhen the client is consuming the drink
(:process consuming
    :parameters (?who - client)
    :precondition (and
        (client-served ?who)
        (> (client-drinking-progress ?who) 0)
    )
    :effect (and
        (decrease (client-drinking-progress ?who) (* #t 1))
    )
)

;; event to state when the client finished the drink
(:event finish-drinking
    :parameters (?who - client ?t - position)
    :precondition (and
        (client-served ?who)
        (<= (client-drinking-progress ?who) 0)
        (pos-is-table ?t)
        (client-at-table ?who ?t)
    )
    :effect (and
        (assign (client-drinking-progress ?who) -1)
        (decrease (people-at-table ?t) (* #t 1))
        (not (client-served ?who))
        (not (client-at-table ?who ?t))
    )
)

;; action to set the table dirty when everyone is done
(:action set-dirty
    :parameters (?t - position)
    :precondition (and 
        (table-not-cleaned-yet ?t)
        (<= (people-at-table ?t) 0)
    )
    :effect (and 
        (not (table-not-cleaned-yet ?t))
        (table-dirty ?t)
    )
)

;;;;;;;;;;;;;;;;; CLEANING WHEN DONE;;;;;;;;;;;;;;;;; 

)