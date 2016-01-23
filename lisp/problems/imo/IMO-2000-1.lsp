;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2000, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; AB is tangent to the circles CAMN and NMBD. M lies
;; between C and D on the line CD, and CD is parallel to AB. The chords
;; NA and CM meet at P; the chords NB and MD meet at Q. The rays CA
;; and DB meet at E. Prove that PE = QE.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show (forall (Gamma1 Gamma2 M N A B C D E P Q)
      (-> (&& (circle-type Gamma1)
                    (circle-type Gamma2)
                    (on C Gamma1)
                    (on A Gamma1)
                    (on M Gamma1)
                    (on N Gamma1)
                    (is-square C A M N)
                    (on N Gamma2)
                    (on M Gamma2)
                    (on B Gamma2)
                    (on D Gamma2)
                    (is-square N M B D)
                    (! (= M N))
                    (tangent (line A B) Gamma1)
                    (tangent (line A B) Gamma2)
                    (on M (line C D))
                    (vec-opp-direction (vec C M) (vec D M))
                    (parallel (line C D) (line A B))
                    (on P (intersection (seg A N) (seg C M)))
                    (on Q (intersection (seg B N) (seg M D)))
                    (on E (intersection (line C A) (line D B))))
                (= (distance E P) (distance E Q))))))

