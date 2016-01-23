;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Science Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; For the function $f(x)=\frac{\sqrt{1+2 x}-1}{x}$ $(x\not= 0)$, let
;; $a =\lim_{x\rightarrow\infty } f(x)$ and
;; $b =\lim_{x\rightarrow 0} f^{\prime }(x)$.
;;
;; (1) Find the values of $a$ and $b$.
;;
;; (2) Investigate the magnitude relation of the three functions
;; $\sqrt{1+2 x}$, $1 + a x$, and $1 + a x + b x^2$ in the range of
;; $-\frac{1}{2}\le x$, and draw the graphs of these functions on the
;; same $x y$ plane.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (ab)
  (exists (f)
    (&&
     (= f (fun (Lam x (/ (- (sqrt (+ 1 (* 2 x))) 1) x))))
     (converge f 0 a)
     (converge (derivative f) 0 b)
     (= ab (list-of a b))))))

(def-directive
  p2
  (Find (ans)
  (exists (a b f r123 r132 r213 r231 r312 r321 p12_3 p13_2 p23_1 p123)
    (&&
     (= f (fun (Lam x (/ (- (sqrt (+ 1 (* 2 x))) 1) x))))
     (converge f 0 a)
     (converge (derivative f) 0 b)
                 (= ab (list-of a b))
     (= f1 (fun (Lam x (sqrt (+ 1 (* 2 x))))))
     (= f2 (fun (Lam x (+ 1 (+ a x)))))
     (= f3 (fun (Lam x (+ 1 (* a x) (* b (^ x 2))))))
     (= r123 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f1 x) (funapp f2 x)) (> (funapp f2 x) (funapp f3 x))))))
     (= r132 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f1 x) (funapp f3 x)) (> (funapp f3 x) (funapp f2 x))))))
     (= r213 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f2 x) (funapp f1 x)) (> (funapp f1 x) (funapp f3 x))))))
     (= r231 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f2 x) (funapp f3 x)) (> (funapp f3 x) (funapp f1 x))))))
     (= r312 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f3 x) (funapp f1 x)) (> (funapp f1 x) (funapp f2 x))))))
     (= r321 (set-by-def (PLam x (&& (<= (/ -1 2) x) (> (funapp f3 x) (funapp f2 x)) (> (funapp f2 x) (funapp f1 x))))))
     (= p12_3 (set-by-def (PLam x (&& (<= (/ -1 2) x) (= (funapp f1 x) (funapp f2 x)) (! (= (funapp f2 x) (funapp f3 x)))))))
     (= p13_2 (set-by-def (PLam x (&& (<= (/ -1 2) x) (= (funapp f1 x) (funapp f3 x)) (! (= (funapp f3 x) (funapp f2 x)))))))
     (= p23_1 (set-by-def (PLam x (&& (<= (/ -1 2) x) (= (funapp f2 x) (funapp f3 x)) (! (= (funapp f3 x) (funapp f1 x)))))))
     (= p123 (set-by-def (PLam x (&& (<= (/ -1 2) x) (= (funapp f1 x) (funapp f2 x)) (= (funapp f2 x) (funapp f3 x))))))
     (= ans (list-of r123 r132 r213 r231 r312 r321 p12_3 p13_2 p23_1 p123))))))

(def-answer p1 (PLam ab (= ab (list-of 1 (/ -1 2)))))

(def-answer p2 (PLam ans (exists (E r231 p123 r213)
         (&&
           (is-empty E)
           (= r231 (set-by-def (PLam x (&& (<= (/ -1 2) x) (< x 0)))))
           (= p123 (set-by-def (PLam x (= x 0))))
           (= r213 (set-by-def (PLam x (> x 0))))
           (= ans (list-of E E r213 r231 E E E E E p123))))))

