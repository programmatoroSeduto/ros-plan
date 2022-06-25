(define (problem gripper_problem)

    (:domain gripper_domain)
    
    (:objects
        ;; il robot
        ROBBY
        ;; le stanze
        r1 r2 r3 r4
        ;; gli oggetti
        o1 o2 o3 o4
    )
    
    (:init
        ;; tipi
        (robot ROBBY)
        (room r1) (room r2) (room r3) (room r4)
        (object o1) (object o2) (object o3) (object o4) 
        
        ;; posizione iniziale del robot
        (at-robot ROBBY r1)
        
        ;; il gripper è libero all'inizio del problema
        (gripper-free)
        
        ;; corridoi
        (way r1 r2) (way r2 r1)
        (way r2 r3) (way r3 r2)
        (way r3 r4) (way r4 r3)
        
        ;; posizione degli oggetti
        (at-object o1 r1) (at-object o2 r2) (at-object o3 r3) (at-object o4 r1) 
    )

    (:goal
        ;; tutti gli oggetti in r4
        (and (at-object o1 r4) (at-object o2 r4) (at-object o3 r4) (at-object o4 r4) )
    )
)