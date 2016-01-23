;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1999, Science Course, Problem 6
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2015-02-07
;;
;; <PROBLEM-TEXT>
;; Prove that $\int_0^{{\pi}} e^x\sin^2 x dx>8$, where
;; ${\pi}=3.14\cdots$ is the circular constant, and $e=2.71\cdots$ is
;; the base of natural logarithms.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Show
    (>
      (integral (Lam x
        (* (^ (exp 1) x) (^ (sin x) 2))) 0 (Pi)) 8)
  )
)

