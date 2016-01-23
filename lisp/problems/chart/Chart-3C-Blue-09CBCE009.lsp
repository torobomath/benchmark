;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE009
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (E F1 F2) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 25) (/ (^ y 2) 16)))))))
      (< 0 (x-coord F1))
      (! (= F1 F2))
      (is-focus-of F1 E)
      (is-focus-of F2 E)
      (= answer (list-of (x-coord F1) (y-coord F1) (x-coord F2) (y-coord F2)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (E F1 F2 P) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 25) (/ (^ y 2) 16)))))))
      (< 0 (x-coord F1))
      (! (= F1 F2))
      (is-focus-of F1 E)
      (is-focus-of F2 E)
      (< 0 (y-coord P))
      (= (/ 1 2) (cos-of-angle (angle P F2 F1)))
      (= answer (list-of (distance P F1) (distance P F2)))
    ))
  )
)

(def-directive p3
  (Find (answer)
    (exists (E F1 F2 P) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 25) (/ (^ y 2) 16)))))))
      (< 0 (x-coord F1))
      (! (= F1 F2))
      (is-focus-of F1 E)
      (is-focus-of F2 E)
      (< 0 (y-coord P))
      (= (/ 1 2) (cos-of-angle (angle P F2 F1)))
      (= answer (list-of (x-coord P) (y-coord P)))
    ))
  )
)

(def-directive p4
  (Find (r)
    (exists (E F1 F2 P C) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 25) (/ (^ y 2) 16)))))))
      (< 0 (x-coord F1))
      (! (= F1 F2))
      (is-focus-of F1 E)
      (is-focus-of F2 E)
      (< 0 (y-coord P))
      (= (/ 1 2) (cos-of-angle (angle P F2 F1)))
      (is-circumcenter-of C (triangle P F1 F2))
      (= r (distance C F1))
    ))
  )
)

(def-directive p5
  (Find (answer)
    (exists (E F1 F2 P circle x y) (&&
      (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (/ (^ x 2) 25) (/ (^ y 2) 16)))))))
      (= answer (list-of x y))
      (< 0 (x-coord F1))
      (! (= F1 F2))
      (is-focus-of F1 E)
      (is-focus-of F2 E)
      (< 0 (y-coord P))
      (= (/ 1 2) (cos-of-angle (angle P F2 F1)))
      (circle-type circle)
      (is-inscribed-in (triangle P F1 F2) circle)
      (on (point x y) circle)
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of 3 0 -3 0))))

(def-answer p2 (PLam answer (= answer (list-of (/ 38 7) (/ 32 7)))))

(def-answer p3 (PLam answer (= answer (list-of (/ -5 7) (/ (* 16 (sqrt 3)) 7)))))

(def-answer p4 (PLam r (= r (/ (* 38 (sqrt 3)) 21))))

(def-answer p5 (PLam answer (exists (x y) (&&
  (= answer (list-of x y))
  (= (^ (/ (* 38 (sqrt 3)) 21) 2) (+ (^ x 2) (^ (+ y (/ (* -11 (sqrt 3)) 21)) 2)))
))))

