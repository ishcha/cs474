(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

; φ = (q ∨ ¬r) ∧ (¬p ∨ r) ∧ (¬q ∨ r ∨ p) ∧ (p ∨ q ∨ ¬q) ∧ (¬r ∨ q)

(define-fun formula () Bool
	(and (or q (not r)) 
         (or (not p) r)
         (or (not q) r p)
         (or p q (not q))
         (or (not r) q)
    ))

; checking satisfiability of formula
(assert formula) 

(check-sat)
(get-model)
