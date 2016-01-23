;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$ be the sides of a triangle, and $T$ its area.
;; Prove: $a^2 +b^2 +c^2 \geq 4\sqrt{3}T$.
;; In what case does equality hold?
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Show
   (forall (A B C a b c)
     (-> (&& (is-triangle A B C)
               (= (length-of (seg B C)) a)
               (= (length-of (seg C A)) b)
               (= (length-of (seg A B)) c))
         (>= (+ (^ a 2) (^ b 2) (^ c 2))
               (* 4 (sqrt 3) (area-of (triangle A B C))))))))

(def-directive p2
  (Find (abc)
        (exists (A B C a b c)
                (&& (is-triangle A B C)
          (= abc (list-of a b c))
                    (= (length-of (seg B C)) a)
                    (= (length-of (seg C A)) b)
                    (= (length-of (seg A B)) c)
                    (= (+ (^ a 2) (^ b 2) (^ c 2))
                       (* 4 (sqrt 3) (area-of (triangle A B C))))))))

(def-answer p2
   (PLam abc (exists (a b c)
                     (&& (= abc (list-of a b c))
                         (< 0 a)
                         (= a b)
                         (= b c)))))

