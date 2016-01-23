;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2R084
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (r)
    (exists (F C P Q R S) (&&
      (= F (set-of-cfun (Lam x (PLam y (= y (- (^ x 2) 1))))))
      (= C (set-of-cfun (Lam x (PLam y (= (^ r 2) (+ (^ x 2) (^ y 2)))))))
      (< 0 r)
      (on P (intersection F C))
      (on Q (intersection F C))
      (on R (intersection F C))
      (on S (intersection F C))
      (< (x-coord P) (x-coord Q))
      (< (x-coord Q) (x-coord R))
      (< (x-coord R) (x-coord S))
    ))
  )
)

(def-directive p2
  (Find (r)
    (exists (F C P Q R) (&&
      (= F (set-of-cfun (Lam x (PLam y (= y (- (^ x 2) 1))))))
      (= C (set-of-cfun (Lam x (PLam y (= (^ r 2) (+ (^ x 2) (^ y 2)))))))
      (< 0 r)
      (on P (intersection F C))
      (on Q (intersection F C))
      (on R (intersection F C))
      (< (x-coord P) (x-coord Q))
      (< (x-coord Q) (x-coord R))
      (forall (T) (->
        (on T (intersection F C))
        (|| (= P T) (= Q T) (= R T))
      ))
    ))
  )
)

(def-answer p1 (PLam r (&& (< (/ (sqrt 3) 2) r) (< r 1))))

(def-answer p2 (PLam r (= r 1)))

