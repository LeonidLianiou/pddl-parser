(define (domain cubes)
  (:requirements :strips :negative-preconditions)
  (:predicates (clear ?x) (onGround ?x) (cubeactive ?x) (on ?x ?y))

  (:action activateconnectedside
    :parameters (?ob)
    :precondition (and (clear ?ob) (onGround ?ob))
    :effect (and (cubeactive ?ob) (not (clear ?ob)) (not (onGround ?ob)))
  )

  (:action gotoground
    :parameters (?ob)
    :precondition (cubeactive ?ob)
    :effect (and (clear ?ob) (onGround ?ob) (not (cubeactive ?ob)))
  )

  (:action stack
    :parameters (?ob ?underob)
    :precondition (and (clear ?underob) (cubeactive ?ob) (not (equal ?ob ?underob)))
    :effect (and (clear ?ob) (on ?ob ?underob) (not (clear ?underob)) (not (cubeactive ?ob)))
  )

  (:action unstack
    :parameters (?ob ?underob)
    :precondition (and (on ?ob ?underob) (clear ?ob) (not (equal ?ob ?underob)))
    :effect (and (cubeactive ?ob) (clear ?underob) (not (on ?ob ?underob)) (not (clear ?ob)))
  )
)