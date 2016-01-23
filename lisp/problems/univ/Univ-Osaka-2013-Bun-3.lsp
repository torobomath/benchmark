;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2013, Humanities Course, Problem 3
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-06-30
;;
;; <PROBLEM-TEXT>
;; Find the value of the constant $m$ that gives the minimum area of the
;; region enclosed by the curve $y = x^2 + x + 4 - |3 x|$ and the
;; straight line $y = m x + 4$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find(m)
    (exists (C lm) (&&
      (= C (shape-of-cpfun (PLam P
            (= (y-coord P)
              (-(+(+(^ (x-coord P) 2) (x-coord P)) 4) (abs(* 3 (x-coord P)))))
      )))
      (= lm (shape-of-cpfun (PLam P
            (= (y-coord P)
              (+(* m (x-coord P)) 4))
      )))
      (minimum
        (set-by-def (PLam S (exists (a l)
          (&& (= l (shape-of-cpfun (PLam P(= (y-coord P) (+(* a (x-coord P)) 4)))))
            (= S (area-of(shape-enclosed-by (list-of C l))))))))
        (area-of(shape-enclosed-by (list-of C lm))))))))

(def-answer p (PLam m (= m 1)))

