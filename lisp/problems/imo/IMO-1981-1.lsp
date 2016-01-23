;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1981, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; $P$ is a point inside a given triangle $ABC$. $D$, $E$, $F$ are the feet of the
;; perpendiculars from $P$ to the lines $BC$, $CA$, $AB$ respectively.
;; Find all $P$ for which
;; ¥[
;; $¥frac{BC}{PD} + ¥frac{CA}{PE} + ¥frac{QB}{PF}$
;; ¥]
;; is least.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (P)
    (exists (A B C D E F f min)
      (&& (= A (point Ax Ay))
          (= B (point Bx By))
          (= C (point Cx Cy))
          (is-triangle A B C)
          (= D (foot-of-perpendicular-line-from-to P (line B C)))
          (= E (foot-of-perpendicular-line-from-to P (line C A)))
          (= F (foot-of-perpendicular-line-from-to P (line A B)))
          (= f (Lam p (+ (/ (distance B C) (distance p D))
                         (/ (distance C A) (distance p E))
                         (/ (distance A B) (distance p F)))))
          (is-triangle A B C)
          (point-inside-of P (triangle A B C))
          (= min (LamApp f P))
          (minimum (set-by-def (PLam var (exists (q) (= var (LamApp f q))))) min)))))

(def-answer p (PLam P (exists (A B C)
                              (&& (= A (point Ax Ay))
                                  (= B (point Bx By))
                                  (= C (point Cx Cy))
                                  (is-triangle A B C)
                                  (is-incenter-of P (triangle A B C))))))

