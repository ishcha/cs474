(define-fun pr ((r Real)) Bool
  (and (>= r 0) (<= r 1))
)

(define-fun phi ((r Real) (s Real)) Bool
    (and (pr r) (pr s)
        (not (exists ((u Real)) (and (not (= u r)) (< (+ (* 5 (* r s)) (* 2 u)) (+ (* 5 (* u s)) (* 2 r))) (pr u))))
        (not (exists ((v Real)) (and (not (= v s)) (< (+ (* 10 (* r v)) (* 3 s)) (+ (* 10 (* r s)) (* 3 v))) (pr v))))
    )
)

(declare-const r Real)
(declare-const s Real)

(assert (phi r s))
(check-sat)
(get-model)
