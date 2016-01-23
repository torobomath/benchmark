;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2005, Science Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; For any complex number $z$ that satisfies $|z|>\frac{5}{4}$, let $T$
;; be the set of all the complex numbers $w$ that are not represented as
;; $w=z^2-2 z$. That is,
;; $T=\{If w| w=z^2-2 z, then |z|\le\frac{5}{4}\}$. Then, find the value
;; of the complex number $w$ belonging to $T$ such that the absolute
;; value $|w|$ is the maximum.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (w)
  (exists (max_abs)
    (&&
     (maximum (set-by-def (PLam w_abs
              (exists (w1)
                (&&
                 (forall (z)
                   (-> (= w1 (- (^ z 2) (* (complex 2 0) z)))
                 (<= (abs z) (./ 5 4))))
                 (= (abs w1) w_abs))))) max_abs)
     (forall (z)
       (-> (= w (- (^ z 2) (* (complex 2 0) z)))
           (<= (abs z) (./ 5 4))))
     (= (abs w) max_abs)))))

(def-answer p (PLam w (= w (complex (.- (./ 25 16)) 0))))

