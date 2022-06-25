(define (domain gripper_domain)

    (:requirements :strips)

    (:predicates
        ;; robot
        (robot ?r)
        ;;      posizione del robot
        (at-robot ?robot ?room)
        ;;      stato del gripper
        (gripper ?obj)
        (gripper-free)
        
        ;; stanza
        (room ?room)
        ;;      corridoi
        (way ?roomA ?roomB)
        
        ;; oggetto
        (object ?obj)
        ;;      posizione oggetto
        (at-object ?obj ?room)
    )
    
    ;; movimento da una stanza all'altra
    (:action move-robot
        :parameters (?robot ?roomA ?roomB)
        :precondition (and 
            ;; controlli banali
            (robot ?robot)
            (room ?roomA)
            (room ?roomB)
            
            ;; il robot dev'essere nella roomA
            (at-robot ?robot ?roomA)
            ;; dev'esserci un corridoio tra A e B
            (way ?roomA ?roomB)
        )
        :effect (and 
            ;; il robot si sposta da A a B
            (not (at-robot ?robot ?roomA))
            (at-robot ?robot ?roomB)
        )
    )
    
    ;; afferrare un oggetto
    (:action grip
        :parameters (?obj ?robot ?room)
        :precondition (and 
            ;; controlli banali
            (object ?obj)
            (robot ?robot)
            (room ?room)
            
            ;; l'oggetto deve trovarsi nella stessa posizione del robot
            (at-robot ?robot ?room) (at-object ?obj ?room)
            ;; il gripper dev'essere libero
            (gripper-free)
        )
        :effect (and
            ;; il gripper afferra l'oggetto
            (gripper ?obj)
            ;; l'oggetto non si trova più nella stanza
            (not (at-object ?obj ?room) )
            ;; il gripper è occupato
            (not (gripper-free) )
        )
    )
    
    ;; rilasciare un oggetto
    (:action ungrip
        :parameters (?obj ?robot ?room)
        :precondition (and
            ;; controlli banali
            (object ?obj)
            (robot ?robot)
            
            ;; il gripper è occupato
            ;; (not (gripper-free) )
            ;; il gripepr sta trasportando l'oggetto indicato
            (gripper ?obj)
            ;; il robot si trova nella stanza indicata
            (at-robot ?robot ?room)
        )
        :effect (and
            ;; il gripper molla l'oggetto
            (not (gripper ?obj) )
            ;; il gripper è libero
            (gripper-free)
            ;; l'oggetto è nella stanza indicata
            (at-object ?obj ?room)
        )
    )
)

















