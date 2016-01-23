;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-12
;;
;; <PROBLEM-TEXT>
;; Let $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ be the points
;; that internally divide the sides $AB$, $BC$, and $CA$ of
;; $\triangle ABC$ in a ratio of $2 : 1$, and let $A^{\prime\prime }$,
;; $B^{\prime\prime }$, and $C^{\prime\prime }$ be the points that
;; internally divide the sides $A^{\prime } B^{\prime }$,
;; $B^{\prime } C^{\prime }$, and $C^{\prime } A^{\prime }$ of
;; $\triangle A^{\prime } B^{\prime } C^{\prime }$ in a ratio of
;; $2 : 1$. Prove that the straight lines $A A^{\prime\prime }$,
;; $B B^{\prime\prime }$, and $C C^{\prime\prime }$ intersect with one
;; another at the centroid of $\triangle ABC$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
   (forall (A B C Ap Bp Cp App Bpp Cpp)
     (-> (&& (divide-internally Ap (seg A B) 2 1)
       (divide-internally Bp (seg B C) 2 1)
       (divide-internally Cp (seg C A) 2 1)
       (divide-internally App (seg Ap Bp) 2 1)
       (divide-internally Bpp (seg Bp Cp) 2 1)
       (divide-internally Cpp (seg Cp Ap) 2 1))
         (exists (G)
          (&& (lines-intersect-at (list-of (line A App) (line B Bpp) (line C Cpp)) G)
        (is-center-of-gravity-of G (triangle A B C))))))))

