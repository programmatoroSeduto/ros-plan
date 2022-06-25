(define (problem robot-prb) (:domain robot-bar)
(:objects 
    ;;;; CLIENTS
    A - client
    B - client
    
    ;;;; WAITERS
    w1 - waiter
    ;w2 - waiter

    ;;;; ENVIRONMENT
    bar t1 t2 - position
)

(:init
    ;;;; ORDERS
    (cold-drink-to A) (drink-not-ready-for A) (client-at-table A t1)
    (warm-drink-to B) (drink-not-ready-for B) (client-at-table B t1)
    
    (table-not-cleaned-yet t1)
    (= (people-at-table t1) 2)

    (= (client-drinking-progress A) -1)
    (= (client-drinking-progress B) -1)
    ;(warm-drink-to C) (drink-not-ready-for C) (client-at-table C t1)
    ;;;; BARISTA
    (barista-free)
    (= (bar-remaining-time) -1)
    (= (bar-cold-drink-time) 3)
    (= (bar-warm-drink-time) 5)
    
    ;;;; COOLING
    (=(cooling-remaining-time A) -1)
    (=(cooling-remaining-time B) -1)
    (=(cooling-total-time) 4)
    

    ;;;; WAITERS
    (waiter-OOG-mode w1)
    (waiter-at w1 bar)
    (waiter-at-bar w1)
    (waiter-gripper-empty w1)
    (waiter-still w1)
    (waiter-no-target w1)

    ;(waiter-OOG-mode W2)
    ;(waiter-at W2 bar)
    ;(waiter-at-bar W2)
    ;(waiter-gripper-empty W2)
    ;(waiter-still W2)
    ;(waiter-no-target W2)


    (= (waiter-normal-velocity) 2);modified
    (= (waiter-TRAY-velocity) 1);modified
    (= (waiter-cleaning-vel) 2);modified


    (= (waiter-actual-velocity w1) 2)
    (= (waiter-remaining-distance w1) -1)
    (= (waiter-cleaning-progress w1) -1)
    
    ;(= (waiter-actual-velocity W2) 2)
    ;(= (waiter-remaining-distance W2) -1)
    ;(= (waiter-cleaning-progress W2) -1)


    ;;;; TRAYS
    (= (tray-free-slots w1) 3)

    ;;;; ENVIRONMENT
    ;; overall infos
    (= (big-table-area) 2) 
    (= (small-table-area) 1)
    ;; configuration of the room
    (pos-is-bar bar)
    (pos-is-table t1) (table-small t1)
    (pos-is-table t2) (table-small t2)
    ;;(pos-is-table t2) (table-small t2)
    (= (distance bar t1) 1)
    (= (distance bar bar) 0)
    (= (distance t1 t1) 0)
   ;; (= (distance bar t2) 1)
    (= (distance t1 bar) 1)
    (= (distance t2 bar) 1)
    (= (distance t2 t2) 0)
    (= (distance t2 t1) 2)
    (= (distance bar t2) 1)
    (= (distance t1 t2) 2)
   ;; (= (distance t2 bar) 1)
    ;;(= (distance t1 t2) 1)
   ;; (= (distance t2 t1) 1)

    ;;;; INITIAL STATE ;;;;
    ;; The drink is ready to be served; it's on the bar.
    ;(cold-drink-to A)
    (table-dirty t2)
)

(:goal (and
        (not (table-not-cleaned-yet t1))
        (not (table-dirty t1))
        (not (table-dirty t2))
        (not (cooled))

        
        


    )
)



)
