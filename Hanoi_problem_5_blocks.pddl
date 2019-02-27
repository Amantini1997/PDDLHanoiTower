(define (problem Hanoi_5_blocks)
    (:domain hanoi)
    (:objects l c r block - object
              b1 b2 b3 b4 b5 - block)
    (:init (clear b1)(clear c)(clear r)
    
           (smaller b1 b2)(smaller b1 b3)(smaller b1 b4)(smaller b1 b5)
           (smaller b2 b3)(smaller b2 b4)(smaller b2 b5)
           (smaller b3 b4)(smaller b3 b5)
           (smaller b4 b5)
           
           (smaller b1 l)(smaller b1 c)(smaller b1 r)
           (smaller b2 l)(smaller b2 c)(smaller b2 r)
           (smaller b3 l)(smaller b3 c)(smaller b3 r)
           (smaller b4 l)(smaller b4 c)(smaller b4 r)
           (smaller b5 l)(smaller b5 c)(smaller b5 r)
           
           (on b5 l)(on b4 b5)(on b3 b4)(on b2 b3)(on b1 b2))
    (:goal (and(on b5 r)
               (on b4 b5)(on b3 b4)(on b2 b3)(on b1 b2))))