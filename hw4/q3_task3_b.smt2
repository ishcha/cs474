(define-fun pr ((r Real)) Bool
  (and (>= r 0) (<= r 1))
)

(define-fun phi ((r Real) (s Real) 
(a1 Real)
(a2 Real)
(a3 Real)
(a4 Real)
(b1 Real)
(b2 Real)
(b3 Real)
(b4 Real)
) Bool
    (and (pr r) (pr s)
        (not (exists ((u Real)) (and (not (= u r)) 
        (< (+ (* r (* s (- (+ a1 a4) (+ a2 a3)))) (* r (- a2 a4))) (+ (* u (* s (- (+ a1 a4) (+ a2 a3)))) (* u (- a2 a4)))) 
        (pr u))))
        (not (exists ((v Real)) (and (not (= v s)) 
        (< (+ (* r (* s (- (+ b1 b4) (+ b2 b3)))) (* s (- b2 b4))) (+ (* v (* r (- (+ b1 b4) (+ b2 b3)))) (* v (- b2 b4)))) 
        (pr v))))
    )
)

(declare-const a1 Real)
(declare-const a2 Real)
(declare-const a3 Real)
(declare-const a4 Real)
(declare-const b1 Real)
(declare-const b2 Real)
(declare-const b3 Real)
(declare-const b4 Real)
(declare-const r Real)
(declare-const s Real)

(assert (phi r s a1 a2 a3 a4 b1 b2 b3 b4))
(apply qe)
