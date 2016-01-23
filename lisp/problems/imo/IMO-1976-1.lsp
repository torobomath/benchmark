;; DOMAIN:    Geometry, quadrangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1976, Problem 1
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-26
;;
;; <PROBLEM-TEXT>
;; In a plane convex quadrilateral of area $32$, the sum of the lengths of two
;; opposite sides and one diagonal is $16$. Determine all possible lengths of the
;; other diagonal.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (L)
  (exists (A B C D)
    (&& (is-square A B C D)
        (= (area-of (square A B C D)) 32)
        (= (+ (length-of (seg A B))
                  (length-of (seg C D))
                  (length-of (seg A C))) 16)
        (= L (length-of (seg B D)))))))

(def-answer p (PLam L (= L (* 8 (sqrt 2)))))

