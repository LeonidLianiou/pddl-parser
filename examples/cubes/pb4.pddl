(define (problem pb4)
  (:domain cubes)
  (:objects a b c d)
  (:init (onGround a) (on b a) (on c b) (on d c) (clear d)
    (equal a a) (equal b b) (equal c c) (equal d d))
  (:goal (and (on b a) (on c b) (on a d))))