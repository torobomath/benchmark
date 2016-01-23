;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Science Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-10-02
;;
;; <PROBLEM-TEXT>
;; Consider the building built by putting a right circular cone with the
;; base of radius $a$ and the height $c$ on a cylinder with the same
;; base radius and the height of $b$ as shown in the figure.
;;
;; (1) Let $V$ be the volume of the building, and $S$, the outer surface
;; area of the building (excluding the base). Represent $V$ and $S$
;; using $a$, $b$, and $c$.
;;
;; (2) When minimizing $S$ by moving $a$, $b$, and $c$ while keeping $V$
;; constant:
;;
;; (i) Define $b = x a$ and $c = y a$, and assume that $V$ and $a$ are
;; constant, then represent the minimum value $T$ of $S$ using $V$ and
;; $a$.
;;
;; (ii) Find the ratio $a:b:c$ that gives the minimum value of $T$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (V)
  (exists (A B P)
    (&& (< 0 a)
        (< 0 b)
        (< 0 c)
        (= b (distance A B))
        (= c (distance B P))
        (vec-same-direction (vec A B) (vec B P))
        (= V (+ (volume-of (cylinder (disk A a (vec A B)) (disk B a (vec A B))))
          (volume-of (cone (disk B a (vec B P)) P))))))))

(def-answer
  p1
  (PLam V (&&
    (< 0 a)
    (< 0 b)
    (< 0 c)
    (= V (* (/ 1 3) (Pi) (^ a 2) (+ (* 3 b) c)))
  ))
)

(def-directive
  p2
  (Find (S)
  (exists (A B P)
    (&& (< 0 a)
        (< 0 b)
        (< 0 c)
        (= b (distance A B))
        (= c (distance B P))
        (vec-same-direction (vec A B) (vec B P))
        (= S (+ (area-of (cylindrical-surface (circle A a (vec A B)) (circle B a (vec A B))))
          (area-of (right-conical-surface (circle B a (vec B P)) P))))))))

(def-answer
  p2
  (PLam S (&&
    (< 0 a)
    (< 0 b)
    (< 0 c)
    (= S (* (Pi) a (+ (* 2 b) (sqrt (+ (^ a 2) (^ c 2))))))
  ))
)

(def-directive
  p3
  (Find (T)
  (&& (< 0 a)
    (< 0 V)
    (minimum (set-by-def (PLam S
          (exists (A B P)
            (exists (b c)
              (&& (< 0 b)
                  (< 0 c)
                  (= b (distance A B))
                  (= c (distance B P))
                  (vec-same-direction (vec A B) (vec B P))
                  (= V (+ (volume-of (cylinder (disk A a (vec A B)) (disk B a (vec A B))))
                    (volume-of (cone (disk B a (vec A B)) P))))
                  (= S (+ (area-of (cylindrical-surface (circle A a (vec A B)) (circle B a (vec A B))))
                    (area-of (right-conical-surface (circle B a (vec A B)) P)))))))))
     T)
  )))

(def-answer
  p3
  (PLam T (&&
    (< 0 a)
    (< 0 V)
    (= T (+ (/ (* 2 V) a) (/ (* (sqrt 5) (Pi) (^ a 2)) 3)))
  ))
)

(def-directive
  p4
  (Find (abbc)
  (exists (minT) (&&
    (minimum
      (set-by-def (PLam T (exists (a V) (&&
        (< 0 a)
        (< 0 V)
        (minimum
          (set-by-def (PLam S
            (exists (A B P)
              (exists (b c)
                (&& (= b (distance A B))
                    (= c (distance B P))
                    (vec-same-direction (vec A B) (vec B P))
                    (= V (+ (volume-of (cylinder (disk A a (vec A B)) (disk B a (vec A B))))
                      (volume-of (cone (disk B a (vec A B)) P))))
                    (= S (+ (area-of (cylindrical-surface (circle A a (vec A B)) (circle B a (vec A B))))
                      (area-of (right-conical-surface (circle B a (vec A B)) P)))))))))
          T)))))
      minT)
    (exists (a b c V) (&&
        (< 0 a)
        (< 0 b)
        (< 0 c)
        (< 0 V)
        (exists (A B P)
        (&& (= b (distance A B))
            (= c (distance B P))
            (vec-same-direction (vec A B) (vec B P))
            (= V (+ (volume-of (cylinder (disk A a (vec A B)) (disk B a (vec A B))))
              (volume-of (cone (disk B a (vec A B)) P))))
            (= minT (+ (area-of (cylindrical-surface (circle A a (vec A B)) (circle B a (vec A B))))
              (area-of (right-conical-surface (circle B a (vec A B)) P))))))
      (= abbc (list-of (/ a b) (/ b c)))
    ))))))

(def-answer
  p4
  (PLam abbc (= abbc (list-of (sqrt 5) (/ 1 2)))))

