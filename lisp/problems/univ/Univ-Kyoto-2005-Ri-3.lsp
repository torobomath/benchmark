;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2005, Science Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-28
;;
;; <PROBLEM-TEXT>
;; Let ${\alpha}$, ${\beta}$, and ${\gamma}$ be the different complex
;; numbers satisfying
;; ${\alpha}+{\beta}+{\gamma}={\alpha}^2+{\beta}^2+{\gamma}^2=0$. Find
;; the triangle obtained by connecting the three points ${\alpha}$,
;; ${\beta}$, and ${\gamma}$ on the complex plane, where complex planes
;; are also called complex number plane.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (abc)
        (exists (a b c)
                (&& (! (= a b))
                    (! (= b c))
                    (! (= c a))
                    (= (+ a b c)
                       (+ (^ a 2) (^ b 2) (^ c 2)))
                    (= abc (2d.triangle (complex->point a)
                                        (complex->point b)
                                        (complex->point c)))))))

(def-answer p (PLam abc (exists (a b c)
        (&& (! (= a b))
            (! (= b c))
            (! (= c a))
            (= (+ a b c)
               (+ (^ a 2) (^ b 2) (^ c 2)))
            (= abc (2d.triangle
              (complex->point a)
              (complex->point b)
              (complex->point c)))
            (2d.is-equilateral-triangle abc)
            (2d.is-center-of-gravity-of (2d.point 0 0) abc)))))

