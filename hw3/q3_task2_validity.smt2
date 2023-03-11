(assert (forall ((x Real)) (exists ((y Real)) (and (< (* 3 x) (* 2 y)) (< (* 4 y) (+ (* 8 x) 10))))))
(check-sat)
