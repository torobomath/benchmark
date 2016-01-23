;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1964, Problem 3
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; A circle is inscribed in triangle $ABC$ with sides $a$, $b$, $c$.
;; Tangents to the circle parallel to the sides of the triangle are constructed.
;; Each of these tangents cuts off a triangle from $\triangle ABC$.
;; In each of these triangles, a circle is inscribed.
;; Find the sum of the areas of all four inscribed circles
;; (in terms of $a$, $b$, $c$).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (S)
  (exists (A B C K A2 B2 C2 A3 B3 C3 K1 K2 K3)
    (&& (is-triangle A B C)
        (= a (length-of (seg B C)))
        (= b (length-of (seg A C)))
        (= c (length-of (seg B A)))
        (circle-type K)
        (is-inscribed-in K (triangle A B C))
        (on A2 (seg B C)) (on A3 (seg B C))
        (on B2 (seg A C)) (on B3 (seg A C))
        (on C2 (seg B A)) (on C3 (seg B A))
        (tangent K (seg C2 B2))
        (tangent K (seg C3 A2))
        (tangent K (seg A3 B3))
        (parallel (line C2 B2) (line C B))
        (parallel (line C3 A2) (line A C))
        (parallel (line A3 B3) (line A B))
        (! (= (line C2 B2) (line C B)))
        (! (= (line C3 A2) (line A C)))
        (! (= (line A3 B3) (line A B)))
        (circle-type K1) (circle-type K2) (circle-type K3)
        (is-inscribed-in K1 (triangle A B2 C2))
        (is-inscribed-in K2 (triangle B A2 C3))
        (is-inscribed-in K3 (triangle C A3 B3))
        (= S (+ (area-of K) (area-of K1) (area-of K2) (area-of K3)))
     )
   )
   )
)

(def-answer p
  (PLam S (= S (/ (* (+ (^ a 2) (^ b 2) (^ c 2))
                     (Pi)
                     (- (+ c a) b)
                     (- (+ a b) c)
                     (- (+ c b) a))
                (^ (+ a b c) 3)))))

