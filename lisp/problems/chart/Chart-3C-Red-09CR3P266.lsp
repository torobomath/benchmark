;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P266
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (exists (t) (&&
          (<= 0 t) (<= t (/ (Pi) 4))
          (= x (cos (* 2 t)))
          (= y (+ (* 2 t) (sin (* 2 t))))
        ))))))
      (= l (length-of C))
    ))
  )
)

(def-directive p2
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (exists (theta) (&&
          (<= (/ (Pi) 3) theta) (<= theta (/ (Pi) 2))
          (= x (* (+ 1 (cos theta)) (cos theta)))
          (= y (* (+ 1 (cos theta)) (sin theta)))
        ))))))
      (= l (length-of C))
    ))
  )
)

(def-directive p3
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (&&
          (<= (/ 5 3) x) (<= x (/ 8 3))
          (= y (* 2 (sqrt (^ x 3))))
        )))))
      (= l (length-of C))
    ))
  )
)

(def-directive p4
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (&&
          (<= (- a) x) (<= x a)
          (= y (* (/ 1 2) (+ (exp x) (exp (- x)))))
        )))))
      (< 0 a)
      (= l (length-of C))
    ))
  )
)

(def-directive p5
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (&&
          (<= 1 x) (<= x (sqrt 3))
          (= y (ln x))
        )))))
      (= l (length-of C))
    ))
  )
)

(def-directive p6
  (Find (l)
    (exists (C) (&&
      (= C (set-of-cfun (Lam x (PLam y (&&
          (<= 0 x) (<= x 1)
          (= (* 3 (^ y 2)) (* x (^ (- x 1) 2)))
        )))))
      (= l (length-of C))
    ))
  )
)

(def-answer p1 (PLam l (= l (* 2 (sqrt 2)))))

(def-answer p2 (PLam l (= l (+ (* 2 (sqrt 2)) -2))))

(def-answer p3 (PLam l (= l (/ 122 27))))

(def-answer p4 (PLam l (= l (+ (exp a) (- (exp (- a)))))))

(def-answer p5 (PLam l (= l (+ (+ 2 (- (sqrt 2))) (* (/ 1 2) (ln (/ (^ (+ (sqrt 2) 1) 2) 3)))))))

(def-answer p6 (PLam l (= l (/ (* 4 (sqrt 3)) 3))))

