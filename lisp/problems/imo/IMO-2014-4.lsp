;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2014, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-14
;;
;; <PROBLEM-TEXT>
;; Points $P$ and $Q$ lie on side $BC$ of acute-angled triangle $ABC$ so that
;; $\angle PAB = \angle BCA$ and $\angle CAQ = \angle ABC$.
;; Points $M$ and $N$ lie on lines $AP$ and $AQ$, respectively, such that $P$ is the
;; midpoint of $AM$, and $Q$ is the midpoint of $AN$. Prove that lines $BM$ and $CN$
;; intersect on the circumcircle of triangle $ABC$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C P Q M N K)
     (-> (&& (is-acute-triangle A B C)
               (on P (seg B C))
               (on Q (seg B C))
               (= (rad-of-angle (angle P A B)) (rad-of-angle (angle B C A)))
               (= (rad-of-angle (angle C A Q)) (rad-of-angle (angle A B C)))
               (on M (line A P))
               (on N (line A Q))
               (= P (seg-midpoint-of (seg A M)))
               (= Q (seg-midpoint-of (seg A N)))
               (circle-type K)
               (is-inscribed-in (triangle A B C) K))
           (exists (P)
                   (&& (intersect (line B M) (line C N) P)
                       (on P K)))))))

