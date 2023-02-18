; colors 0, 1, 2
(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)

(assert (and ((_ at-most 1) p00 p01 p02) ((_ at-least 1) p00 p01 p02)))
(assert (and ((_ at-most 1) p10 p11 p12) ((_ at-least 1) p10 p11 p12)))
(assert (and ((_ at-most 1) p20 p21 p22) ((_ at-least 1) p20 p21 p22)))
(assert (and ((_ at-most 1) p30 p31 p32) ((_ at-least 1) p30 p31 p32)))

; neighbor constraints
(assert (and (not (or (and p00 p10) (and p01 p11) (and p02 p12))) 
             (not (or (and p00 p20) (and p01 p21) (and p02 p22))) 
             (not (or (and p00 p30) (and p01 p31) (and p02 p32)))))
(assert (and (not (or (and p10 p00) (and p11 p01) (and p12 p02))) 
             (not (or (and p10 p20) (and p11 p21) (and p12 p22))) 
             (not (or (and p10 p30) (and p11 p31) (and p12 p32)))))
(assert (and (not (or (and p20 p00) (and p21 p01) (and p22 p02))) 
             (not (or (and p20 p10) (and p21 p11) (and p22 p12))) 
             (not (or (and p20 p30) (and p21 p31) (and p22 p32)))))
(assert (and (not (or (and p30 p00) (and p31 p01) (and p32 p02))) 
             (not (or (and p30 p10) (and p31 p11) (and p32 p12))) 
             (not (or (and p30 p20) (and p31 p21) (and p32 p22)))))
(check-sat)
(get-model)