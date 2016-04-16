;; DOMAIN:    DUP
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2005, Science Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-10-02
;;
;; <PROBLEM-TEXT>
;; Define the complex numbers $a_n$ ($n = 1, 2, \cdots$) as follows:
;; \[
;; a_1 = 1 + i, a_{n+1} = \frac{a_n}{2a_n - 3},
;; \]
;; where $i$ is the imaginary unit. Answer the following questions:
;; (1) Find the equation of the circle passing through the three
;; points $0$, $a_1$, and $a_2$ on the complex plane.
;; (2) Prove that all $a_n$ are on the circle found above.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Find (p)
  (exists (C)
    (exists (a_)
      (&& (= (LamApp a_ 1) (+ (complex 1 0) (i)))
          (forall (n)
            (-> (&& (int.is-integer n)
              (int.>= n 1))
          (= (LamApp a_ (int.+ n 1))
             (/ (LamApp a_ n) (- (* (complex 2 0) (LamApp a_ n)) (complex 3 0))))))
          (2d.on (2d.origin) C)
          (2d.on (complex->point (LamApp a_ 1)) C)
          (2d.on (complex->point (LamApp a_ 2)) C)
          (2d.circle-type C)
          (2d.on (complex->point p) C))))))

(def-answer
  p1
  (PLam p (= 1 (abs (- p (complex 1 0))))))

(def-directive
  p2
  (Show
   (exists (C)
     (exists (a_)
       (&& (= (LamApp a_ 1) (+ (complex 1 0) (i)))
           (forall (n)
             (-> (&& (int.is-integer n)
               (int.>= n 1))
           (= (LamApp a_ (int.+ n 1))
              (/ (LamApp a_ n) (- (* (complex 2 0) (LamApp a_ n)) (complex 3 0))))))
           (2d.on (2d.origin) C)
           (2d.on (complex->point (LamApp a_ 1)) C)
           (2d.on (complex->point (LamApp a_ 2)) C)
           (2d.circle-type C)
           (forall (n)
             (-> (&& (int.is-integer n)
               (int.>= n 1))
           (2d.on (complex->point (LamApp a_ n)) C))))))))

