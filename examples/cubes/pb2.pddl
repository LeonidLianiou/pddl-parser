(define (problem pb2)
  (:domain cubes)
  (:objects a b c)
  (:init (onGround a) (onGround b) (on c b) (clear a) (clear c)
    (equal a a) (equal b b) (equal c c))
  (:goal (and (on a b) (on b c))))