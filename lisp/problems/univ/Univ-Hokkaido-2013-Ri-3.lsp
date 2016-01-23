;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2013, Science Course, Problem 3
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-09-26
;;
;; <PROBLEM-TEXT>
;; For the real numbers $x$, $y$, $s$, and $t$, define $z = x + y i$ and
;; $w = s + t i$, and assume that $z =\frac{w-1}{w+1}$, where $i$ is the
;; imaginary unit.
;;
;; (1) Represent $w$ using $z$, and $s$ and $t$ using $x$ and $y$.
;;
;; (2) Draw the range $D$ of $(x, y)$ such that $0\le s\le 1$ and
;; $0\le t\le 1$ on the coordinate plane.
;;
;; (3) When the point $P(x, y)$ moves in $D$, find the minimum value of
;; $- 5 x + y$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_1
  (Find (w)
        (&& (!(= w (real->complex -1)))
      (= z (/ (- w (real->complex 1)) (+ w (real->complex 1))))
      )
  )
)

(def-answer p1_1 (PLam w (= w (/ (+ (- z) (- 1)) (- z 1)))))

(def-directive
        p1_2
        (Find (ans)
              (exists (z w s t)
                      (&& (!(= w (real->complex -1)))
                          (= z (complex x y)) (= w (complex s t))
                          (= z (/ (- w (real->complex 1)) (+ w (real->complex 1))))
        (= ans (list-of s t))
                          )
                      )
        )
)

(def-answer p1_2 (PLam ans (&& (! (&& (= x 1) (= y 0)))
                            (= ans (list-of (./ (.+ (.- (.- (.^ x 2) 1)) (.- (.^ y 2))) (.+ (.^ (.- x 1) 2) (.^ y 2))) (./ (.* 2 y) (.+ (.^ (.- x 1) 2) (.^ y 2)))))
                            )))

(def-directive
  p2
  (Draw (D)
    (let*
      (
        (z (complex x y))
        (w (complex s t))
      )
      (exists (x y s t)(&&
        (!(= w (real->complex -1)))
        (= z (/ (- w (real->complex 1)) (+ w (real->complex 1))))
        (<= 0 s) (<= s 1)
        (<= 0 t) (<= t 1)
        (= D (2d.shape-of-cpfun (PLam p (= p (complex->point z)))))
      ))
    )
  )
)

(def-answer p2 (2d.set-of-cfun (Lam x (PLam y (&&
  (.<= (.+ (.^ x 2) (.^ y 2)) 1)
  (.<= (./ 1 4) (.+ (.^ (.- x (./ 1 2)) 2) (.^ y 2)))
  (.<= 0 y)
  (.<= 1 (.+ (.^ (.- x 1) 2) (.^ (.- y 1) 2)))
  (|| (! (= x 1)) (! (= y 0)))
)))))

(def-directive
  p3
  (Find (m)
    (let*
      (
        (z (complex x y))
        (w (complex s t))
      )
      (minimum
        (set-by-def(PLam v (exists (x y)
          (&&
            (= v (.+ (.-(.* 5 x)) y))
            (
              exists (s t)(&&
                (!(= w (real->complex -1)))
                (= z (/ (- w (real->complex 1)) (+ w (real->complex 1))))
                (<= 0 s) (<= s 1)
                (<= 0 t) (<= t 1)
              )
            )
          )
        )))
        m
      )
    )
  )
)

(def-answer p3 (PLam m (= m (.- (./ 3 5)))))

