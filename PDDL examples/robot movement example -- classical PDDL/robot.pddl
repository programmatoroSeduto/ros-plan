(define (domain robot)

    (:requirements :strips)

    (:predicates
        ; it identifies a room
        (ROOM ?room)
        
        ; rooms are connected by corridors
        ; IMPORTANT REMARK: this domain considers corridors as bidirectional
        (CORRIDOR ?roomA ?roomB)
        
        ; it identifies a gripper of a certain robot
        (GRIPPER ?gripper)
        ; single gripper could be available for handling objects
        (gripper_free ?robot ?gripper)
        ; a gripper can handle an object (an heavy object must be gripped with two grippers)
        (gripper_handle ?robot ?gripper ?obj)
        
        ; it identifies the robot
        (ROBOT ?robot)
        ; the robot has a gripper
        (robot_gripper ?robot ?gripper)
        ; the location of the robot
        (robot_at ?robot ?room)
        
        ; an object in the world
        (OBJECT ?obj)
        ; objects can be either heavy or light
        (object_heavy ?obj)
        (object_light ?obj)
        ; where is an object in the world?
        (object_at ?obj ?room)
    )

    ; take a light object with the gripper
    (:action carry_light_object
        :parameters (?r ?lo ?pos ?grip)
        :precondition (and
                        ; trivial checks
                        (ROBOT ?r)      ;r must be a robot
                        (ROOM ?pos)     ;pos must be a room
                        (OBJECT ?lo)    ;lo must be an object
                        (GRIPPER ?grip) ;grip must be a gripper
                        
                        ; lo must be a light object
                        (object_light ?lo)      
                        ; robot and object must be in the same room
                        (object_at ?lo ?pos) (robot_at ?r ?pos)
                        ;the gripper belongs to the robot i'm considering
                        (robot_gripper ?r ?grip)
                        ; the gripper must be free
                        (gripper_free ?r ?grip)
                    )
        :effect (and 
                        ; the gripper is not free
                        (not (gripper_free ?r ?grip))
                        ; the robot handle the object
                        (gripper_handle ?r ?grip ?lo)
                        ; the object is no longer in the room
                        (not (object_at ?lo ?pos))
                    )
    )
    
    ; leave a light object with the gripper
    (:action drop_light_object
        :parameters (?r ?lo ?pos ?grip)
        :precondition (and 
                        ; trivial checks
                        (ROBOT ?r)      ;r must be a robot
                        (ROOM ?pos)     ;pos must be a room
                        (OBJECT ?lo)    ;lo must be an object
                        (GRIPPER ?grip) ;grip must be a gripper
                        
                        ; lo must be a light object
                        (object_light ?lo)      
                        ;the gripper belongs to the robot i'm considering
                        (robot_gripper ?r ?grip)
                        ;the robot is in the given position
                        (robot_at ?r ?pos)
                        ;the gripper is carrying the object
                        (gripper_handle ?r ?grip ?lo)
                    )
        :effect (and
                        ; the object is dropped in the given position
                        (object_at ?lo ?pos)
                        ; the gripper is ready
                        (gripper_free ?r ?grip)
                        ; the gripper drops the object
                        (not (gripper_handle ?r ?grip ?lo))
                    )
    )
    
    ; carry a heavy object with the grippers
    (:action carry_heavy_object
        :parameters (?r ?ho ?pos ?grip1 ?grip2)
        :precondition (and
                        ; trivial checks
                        (ROBOT ?r)      ;r must be a robot
                        (ROOM ?pos)     ;pos must be a room
                        (OBJECT ?ho)    ;lo must be an object
                        ;grip1 and grip2 must be grippers
                        (GRIPPER ?grip1) (GRIPPER ?grip2)
                        
                        ; ho must be a heavy object
                        (object_heavy ?ho)      
                        ; robot and object must be in the same room
                        (object_at ?ho ?pos) (robot_at ?r ?pos)
                        ;grippers belongs to the robot i'm considering
                        (robot_gripper ?r ?grip1) (robot_gripper ?r ?grip2)
                        ; grippers must be free
                        (gripper_free ?r ?grip1) (gripper_free ?r ?grip2)
                    )
        :effect (and 
                        ; grippers are no longer free
                        (not (gripper_free ?r ?grip1)) (not (gripper_free ?r ?grip2))
                        ; the robot handle the object
                        (gripper_handle ?r ?grip1 ?ho) (gripper_handle ?r ?grip2 ?ho)
                        ; the object is no longer in the room
                        (not (object_at ?ho ?pos))
                    )
    )
    
    ; put down the heavy object
    (:action drop_heavy_object
        :parameters (?r ?ho ?pos ?grip1 ?grip2)
        :precondition (and 
                        ; trivial checks
                        (ROBOT ?r)      ;r must be a robot
                        (ROOM ?pos)     ;pos must be a room
                        (OBJECT ?ho)    ;lo must be an object
                        ;grip1 and grip2 must be grippers
                        (GRIPPER ?grip1) (GRIPPER ?grip2)
                        
                        ; lo must be a heavy object
                        (object_heavy ?ho)      
                        ;gripper belong to the robot i'm considering
                        (robot_gripper ?r ?grip1) (robot_gripper ?r ?grip2)
                        ;the robot is in the given position
                        (robot_at ?r ?pos)
                        ;the gripper is carrying the object
                        (gripper_handle ?r ?grip1 ?ho) (gripper_handle ?r ?grip2 ?ho)
                    )
        :effect (and
                        ; the object is dropped in the given position
                        (object_at ?ho ?pos)
                        ; grippers become ready again
                        (gripper_free ?r ?grip1) (gripper_free ?r ?grip2)
                        ; gripeprs drop the object
                        (not (gripper_handle ?r ?grip1 ?ho)) (not (gripper_handle ?r ?grip2 ?ho))
                    )
    )
    
    ; move the robot from one room to another
    (:action move_robot
        :parameters (?robot ?from ?to)
        :precondition (and 
                        ; TRIVIAL CHECKS
                        (ROBOT ?robot)
                        (ROOM ?from) (ROOM ?to)
                        
                        ; it exists a corridor between the positions (the corridor is bidirectional, see predicates)
                        (or (CORRIDOR ?from ?to) (CORRIDOR ?to ?from))
                        ; the robot is in 'from'
                        (robot_at ?robot ?from)
                    )
        :effect (and
                        ; the robot is no longer in 'from'
                        (not (robot_at ?robot ?from))
                        ; the robot is now in 'to'
                        (robot_at ?robot ?to)
                    )
    )
)