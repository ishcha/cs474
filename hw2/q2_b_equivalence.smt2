(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(define-fun formula1 () Bool
	(and (or q (not r)) 
         (or (not p) r)
         (or (not q) r p)
         (or p q (not q))
         (or (not r) q)
    ))

;  (q ∨ ¬r) ∧ (¬p ∨ r) ∧ (¬q ∨ r ∨ p) ∧ (¬q ∨ r) ∧ (q ∨ ¬p)
(define-fun formula2 () Bool
	(and (or q (not r)) 
         (or (not p) r)
         (or (not q) r p)
         (or (not q) r)
         (or q (not p))
    ))

; check validity of equivalence between formula1 and formula2
(assert (not (and (=> formula1 formula2) (=> formula2 formula1))))
(check-sat)
