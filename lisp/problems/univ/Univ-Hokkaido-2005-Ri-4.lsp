;; DOMAIN:    DUP
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2005, Science Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-10-02

(namespace complex)

(def-directive
  p1
  (Find (p)
  (exists (C)
    (exists (a_)
      (&& (= (LamApp a_ 1) (+ 1 (i)))
          (forall (n)
            (-> (&& (int.is-integer n)
              (int.>= n 1))
          (= (LamApp a_ (int.+ n 1))
             (/ (LamApp a_ n) (- (* 2 (LamApp a_ n)) 3)))))
          (2d.on (2d.origin) C)
          (2d.on (complex->point (LamApp a_ 1)) C)
          (2d.on (complex->point (LamApp a_ 2)) C)
          (2d.circle-type C)
          (2d.on (complex->point p) C))))))

(def-answer
  p1
  (PLam p (= 1 (abs (- p 1)))))

(def-directive
  p2
  (Show
   (exists (C)
     (exists (a_)
       (&& (= (LamApp a_ 1) (+ 1 (i)))
           (forall (n)
             (-> (&& (int.is-integer n)
               (int.>= n 1))
           (= (LamApp a_ (int.+ n 1))
              (/ (LamApp a_ n) (- (* 2 (LamApp a_ n)) 3)))))
           (2d.on (2d.origin) C)
           (2d.on (complex->point (LamApp a_ 1)) C)
           (2d.on (complex->point (LamApp a_ 2)) C)
           (2d.circle-type C)
           (forall (n)
             (-> (&& (int.is-integer n)
               (int.>= n 1))
           (2d.on (complex->point (LamApp a_ n)) C))))))))

