;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R139
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 3d)

(def-directive p
  (Find (v)
    (forall (B0 B1 P0 P1 v1 v2) (->
      (&& (= 0 (- (x-coord P0) (x-coord B0)))
        (= 0 (- (y-coord P0) (y-coord B0)))
        (= 4 (- (z-coord P0) (z-coord B0)))
        (= (vec (origin) B1) (v+ (vec (origin) B0) (sv* (/ 1 60) (vec3d 0 12 0))))
        (= (vec (origin) P1) (v+ (vec (origin) P0) (sv* (/ 1 60) (vec3d v1 v2 0))))
        (= (/ (sqrt 3) 2) (cos-of-angle (angle P1 B1 (point (x-coord P1) (y-coord P1) (z-coord B1)))))
        (= (/ 1 (sqrt 2)) (cos-of-angle (angle (point (x-coord P1) (y-coord P1) (z-coord B1)) B1 (vec->point (v+ (vec (origin) B1) (vec3d 0 1 0))))))
        (< 0 v1)
        (< 0 v2)
      )
      (= v (radius Pv))
    ))
  )
)

(def-directive p1
  (Find (v)
    (forall (v1 v2 Bv Pv B0 B1 P0 P1) (->
      (&&
        (= Bv (vec3d 0 12 0))
        (= Pv (vec3d v1 v2 0))
        (= B0 (vec3d 0 0 0))
        (= B1 (vec3d 0 (/ 1 5) 0))
        (= P0 (vec3d 0 0 4))
        (= P1 (vec3d (/ v1 60) (/ v2 60) 4))
        (= (/ (sqrt 3) 2) (cos-of-angle (angle (vec->point P1) (vec->point B1) (point (vec-x-coord P1) (vec-y-coord P1) (vec-z-coord B1)))))
      )
      (= v (radius Pv))
    ))
  )
)

(def-answer p (PLam v (= v 423)))

(def-answer p1 (PLam v (= v 423)))

