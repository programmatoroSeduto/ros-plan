; EXPECTED OPTIMAL SOLUTION
;   move_robot(robot, roomA, roomB)
;   carry_heavy_object(robot, hobj, roomB, gripperA, gripperB)
;   move_robot(robot, roomB, roomD)
;   drop_heavy_object(robot, hobj, roomD, gripperA, gripperB)
;   move_robot(robot, roomD, roomC)
;   carry_light_object(robot, lobj, roomC, gripperA)
;   move_robot(robot, roomC, roomD)
;   drop_light_object(robot, hobj, roomD, gripperA)

(define (problem robotProblem)
    (:domain robot)
    
    (:objects
        ;one robot
        robot
        
        ;two grippers
        gripperA gripperB
        
        ;four rooms
        roomA roomB roomC roomD
        
        ;two objects: one heavy, an one light
        hobj lobj
    )
    
    (:init 
        ; the robot, with its two grippers
        (ROBOT robot)
        (GRIPPER gripperA) (GRIPPER gripperB)
        (robot_gripper robot gripperA) (robot_gripper robot gripperB)
        (gripper_free robot gripperA) (gripper_free robot gripperB)
        
        ; the rooms
        (ROOM roomA) (ROOM roomB) (ROOM roomC) (ROOM roomD) 
        ; they're fully connected
        (CORRIDOR roomA roomB) 
        (CORRIDOR roomA roomC) 
        (CORRIDOR roomA roomD)
        (CORRIDOR roomB roomA)
        (CORRIDOR roomB roomC) 
        (CORRIDOR roomB roomD) 
        (CORRIDOR roomC roomA) 
        (CORRIDOR roomC roomB)
        (CORRIDOR roomC roomD) 
        
        ; two objects in the world
        (OBJECT hobj) (object_heavy hobj)
        (OBJECT lobj) (object_light lobj)
        
        ; initial positions
        (robot_at robot roomA)
        (object_at hobj roomB)
        (object_at lobj roomC)
    )
    
    (:goal 
        (and (object_at hobj roomD) (object_at lobj roomD))
    )
)