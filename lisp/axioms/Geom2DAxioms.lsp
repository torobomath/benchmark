(namespace 2d)

(import "axioms/Geom2DTypes.lsp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Overloaded definitions for 2D/3D geometry
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(include "axioms/geom-common-axioms.lsp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Graphs of functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def_is_graph
  (g)
  (is-graph g))

(axiom
  def_is_curve
  (c)
  (is-curve c))

(axiom
  def_cpfun_to_cfun_2d
  (pf)
  (= (shape-of-cpfun pf)
     (set-of-cfun (Lam x (PLam y (PLamApp pf (point x y)))))))

(axiom
	def_char_fun_of_set_of_cfun_2d
	(cfun)
	(= (char-fun-of (set-of-cfun cfun))
		(PLam P (PLamApp (LamApp cfun (x-coord P)) (y-coord P)))))

(axiom
	def_on_set_of_cfun_2d
	(p cfun)
	(<-> (on p (set-of-cfun cfun))
		(PLamApp (LamApp cfun (x-coord p)) (y-coord p))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Basic geometric object and their properties
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; region :: Shape => Bool
(axiom
  def_common_noun_region
  (f)
  (region f))

(def-typing-trigger
  (line-type l)
  
  
  (x y z)
  (&& (= l (line2d x y z))
      (|| (= y 1) (&& (= y 0) (= x 1)))))
;  (P Q)
;  (&& (= l (line P Q))
;      ;(! (= P Q))))
;      (= 1 (distance^2 P Q))))
;      ;(= 0 (* (x-coord P) (y-coord P)))
;      ;(|| (&& (= (y-coord P) (y-coord Q))
;      ;        (= 0 (x-coord P))
;      ;        (= 1 (x-coord Q)))
;      ;    (&& (= 0 (y-coord P))
;      ;        (= 0 (x-coord Q))))))


; circle-type :: Shape => Bool
(def-typing-trigger
  (circle-type C)
  (c r)
  (&& (= C (circle c r))
      (< 0 r)))

(def-typing-trigger
  (disk-type C)
  (c r)
  (&& (= C (disk c r))
      (< 0 r)))


(def-typing-trigger
   (semicircle-type C)
   (c r ini)
   (&& (= C (semicircle c r ini))
       (< 0 r)))

(def-typing-trigger
   (arc-type a)
   (c r ang1 ang2)
   (&& (= a (arc c r ang1 ang2))
       (< 0 r)))

(def-typing-trigger
   (circular-sector-type cs)
   (c r ang1 ang2)
   (&& (= cs (circular-sector c r ang1 ang2))
       (< 0 r)))

(axiom
  fun_x_coord
  (x y)
  (= (x-coord (point x y)) x))

(axiom
  fun_y_coord
  (x y)
  (= (y-coord (point x y)) y))

(axiom
  def-coordinate-list-of-2d
  (x y)
  (= (coordinate-list-of (point x y))
     (list-of x y)))

(axiom
  fun_vec_x_coord
  (x y)
  (= (vec-x-coord (vec2d x y)) x))

(axiom
  fun_vec_y_coord
  (x y)
  (= (vec-y-coord (vec2d x y)) y))

(axiom
   def-component-list-of-2d
   (x y)
   (= (component-list-of (vec2d x y))
      (list-of x y)))

(axiom
 def_origin_2d
 ()
 (= (origin) (point 0 0)))

(axiom
  def_distance
  (px py qx qy)
  (= (distance (point px py) (point qx qy))
     (sqrt (distance^2 (point px py) (point qx qy)))))

(axiom
  def_distance_square
  (px py qx qy)
  (= (distance^2 (point px py) (point qx qy))
     (+ (^ (- px qx) 2) (^ (- py qy) 2))))

(axiom
 eq_point
 (px py qx qy)
 (<-> (= (point px py) (point qx qy))
      (&& (= px qx)
         (= py qy))))

(axiom
 eq_vector
 (px py qx qy)
 (<-> (= (vec2d px py) (vec2d qx qy))
      (&& (= px qx)
	  (= py qy)
       )
  )
)

(axiom
 def_vector_to_point_2d
 (x y)
 (= (vec->point (vec2d x y))
    (point x y))
)

(axiom
  def_vec_2d
  (px py qx qy)
  (= (vec (point px py) (point qx qy))
     (vec2d (- qx px)
              (- qy py))))

;; (axiom
;;   def_vector_by_elements_2d
;; 	(x y)
;; 	(= (vec2d x y)
;; 	   (point x y)))

(axiom
  def_vec_sum
  (px py qx qy)
  (= (v+ (vec2d px py) (vec2d qx qy))
     (vec2d (+ px qx)
              (+ py qy))))

(axiom
  def_vec_diff
  (px py qx qy)
  (= (v- (vec2d px py) (vec2d qx qy))
     (vec2d (- px qx)
              (- py qy))))

(axiom
  def_scalar_vec_prod
  (a px py)
  (= (sv* a (vec2d px py))
     (vec2d (* a px)
              (* a py))))

(axiom
  def_inner_prod
  (px py qx qy)
  (= (inner-prod (vec2d px py) (vec2d qx qy))
     (+ (* px qx) (* py qy))))

(axiom
  def_radius
  (px py)
  (= (radius (vec2d px py))
     (sqrt (+ (^ px 2) (^ py 2)))))

; Point -> R => Point
(axiom
  def_point_rotate_around_origin
  (x y t)
  (= (point-rotate-around-origin (point x y) t)
     (point (- (* x (cos t)) (* y (sin t)))
            (+ (* x (sin t)) (* y (cos t))))))

(axiom
  def_point_rotate_around
	(px py p0x p0y t)
	(= (point-rotate-around (point px py) (point p0x p0y) t)
	   (point (+ (x-coord (point-rotate-around-origin (point (- px p0x) (- py p0y)) t)) p0x)
		  (+ (y-coord (point-rotate-around-origin (point (- px p0x) (- py p0y)) t)) p0y)
	    )
	   ))

;(def-fun vec-rotate-around-origin :: Vector -> R => Vector)
(axiom
  def_vec_rotate_around_origin
  (x y t)
  (= (vec-rotate-around-origin (vec2d x y) t)
     (vec2d (- (* x (cos t)) (* y (sin t)))
            (+ (* x (sin t)) (* y (cos t))))))


; all point on a 2D plane are coplanar
(axiom
	def_coplanar_2d
		(p0 p1 p2 p3)
		(<-> (coplanar p0 p1 p2 p3) (true)))
(axiom
	def_points_coplanar_2d
	(points)
	(<-> (points-coplanar points) (true)))

(axiom
	def_extend_to_plane_2d
	(S)
	(= (extend-to-plane S) (xy-plane)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; vectors
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Zero vector
(axiom
  def_zero_vector_2d
  ()
  (= (zero-vector)
     (vec2d 0 0)))


; Vec -> Vec => Bool
(axiom
  def_vec_parallel_2d
  (v w)
  (<-> (vec-parallel v w)
       (= 0 (outer-prod v w))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_line2d
  (s t u)
  (= (line2d s t u)
     (if (! (= t 0))
         (let ((y0 (/ u t))
               (y1 (/ (- u s) t)))
           (line (point 0 y0) (point 1 y1)))
       (line (point (/ u s) 0) (point (/ u s) 1)))))

; R -> Line => Bool
(axiom
  def_is_slope_of
  (m p q)
  (<-> (is-slope-of m (line p q))
       (let ((x0 (x-coord p))
             (y0 (y-coord p))
             (x1 (x-coord q))
             (y1 (y-coord q)))
         (&& (! (= x0 x1))
             ;(= m (/ (- y1 y0) (- x1 x0)))))))
             (= (* m (- x1 x0)) (- y1 y0))))))

(axiom
  def-is-slope-of-poly-fun-graph-1
  (a b s)
  (<-> (is-slope-of s (graph-of (poly-fun (list-of b a)))) ;; y = ax + b
       (= s a)))

(axiom
  def-is-slope-of-poly-fun-graph-0
  (b s)
  (<-> (is-slope-of s (graph-of (poly-fun (list-of b)))) ;; y = b
       (= s 0)))

(axiom
  def-is-slope-of-poly-fun-graph-00
  (s)
  (<-> (is-slope-of s (graph-of (poly-fun (nil)))) ;; y = 0
       (= s 0)))


; R -> Line => Bool
(axiom
  def_is_x_intercept_of
  (x0 p q)
  (<-> (is-x-intercept-of x0 (line p q))
       (let ((x (x-coord p))
             (y (y-coord p)))
         (exists (m)
           (&& (is-slope-of m (line p q))
               (= y (* m (- x x0))))))))


; R -> Line => Bool
(axiom
  def_is_y_intercept_of
  (y0 p q)
  (<-> (is-y-intercept-of y0 (line p q))
       (let ((x (x-coord p))
             (y (y-coord p)))
         (exists (m)
           (&& (is-slope-of m (line p q))
               (= y0 (- y (* m x))))))))


;  Line => ListOf R
(axiom
  def_line_parameter
  (x0 y0 x1 y1)
  (= (line-parameter (line (point x0 y0) (point x1 y1)))
     (if (= x0 x1)
         (list-of -1 0 x0)
       (let ((a (/ (- y1 y0) (- x1 x0)))
             (c (- y0 (* a x0))))
         (list-of a
                  -1
                  c)))))

;(axiom
;  def-line-parameter-of-poly-fun-graph-deg1
;  (b a)
;  (= (line-parameter (graph-of (poly-fun (list-of b a))))
;     (list-of a -1 b)))

; Line -> R => Line
(axiom
  def_shape_rotate_around_origin_line
  (p q t)
  (= (shape-rotate-around-origin (line p q) t)
       (line (point-rotate-around-origin p t)
             (point-rotate-around-origin q t))))

(axiom
  def_shape_rotate_around_line
	(p q r t)
	(= (shape-rotate-around (line p q) r t)
		 (line (point-rotate-around p r t)
					 (point-rotate-around q r t))))

(axiom
   def_shape_rotate_around_origin_general_case
   (S t)
   (= (shape-rotate-around-origin S t)
      (shape-of-cpfun (PLam p (on (point-rotate-around-origin p (- t)) S)))))
          
; Point -> Line => R
(axiom
  def_point_shape_distance_line_2d
  (R P Q)
  (= (point-shape-distance R (line P Q))
     (sqrt (- (distance^2 Q R)
              (/ (^ (inner-prod (vec P Q) (vec Q R)) 2)
                 (distance^2 P Q))))))

(axiom
 def_point_shape_square_distance_line_2d
 (P A B)
 (= (point-shape-distance^2 P (line A B))
    (/ (^ (outer-prod (vec A B) (vec A P)) 2) (distance^2 A B))))

(axiom
  def-point-shape-distance-generic
  (P S d)
  (<-> (= d (point-shape-distance P S))
       (&& (<= 0 d)
           (minimum
               (set-by-def (PLam dd (exists (p)
                   (&& (on p S)
                   (= dd (distance^2 p P)))
               )))
               (^ d 2)
            ))))

; Line -> Line => R
(axiom
  def_line_line_distance_2d
  (p1 p2 q1 q2)
  (= (line-line-distance (line p1 p2) (line q1 q2))
		 (sqrt (line-line-distance^2 (line p1 p2) (line q1 q2)))))

(axiom
  def_line_line_square_distance_2d
  (p1 p2 q1 q2)
  (= (line-line-distance^2 (line p1 p2) (line q1 q2))
     (if (parallel (line p1 p2) (line q1 q2))
         (point-shape-distance^2 p1 (line q1 q2))
       0)))

; Line => Shape
(axiom
  def_upper_area_of
  (l)
  (= (upper-area-of l)
       (let ((lis (line-parameter l)) 
             (a (car lis))
             (b (car (cdr lis)))
             (c (car (cdr (cdr lis)))))
         (set-of-cfun (Lam x (PLam y (< (+ (* a x) (* b y) c) 0)))))))



; Line => Shape
(axiom
  def_lower_area_of
  (l)
  (= (lower-area-of l)
       (let ((lis (line-parameter l))
             (a (car lis))
             (b (car (cdr lis)))
             (c (car (cdr (cdr lis)))))
         (set-of-cfun (Lam x (PLam y (> (+ (* a x) (* b y) c) 0)))))))

;; x-axis
(axiom
  def_x_axis
  ()
  (= (x-axis)
     (line (origin) (point 1 0))))

;; y-axis
(axiom
  def_y_axis
  ()
  (= (y-axis)
     (line (origin) (point 0 1))))


;; xy-plane
(axiom
   def_xy_plane_2d
   ()
   (= (xy-plane)
      (shape-of-cpfun (PLam p (true)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Triangles
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; excircle
(axiom
 def_is_excircle_of
 (c r A B C P)
 (<-> (is-excircle-of (circle c r) (triangle A B C) P)
      (|| (&& (= P A)
              (tangent (circle c r) (half-line B (vec-translate B (vec A B))))
              (tangent (circle c r) (half-line C (vec-translate C (vec A C))))
              (tangent (circle c r) (line B C)))
          (&& (= P B)
              (tangent (circle c r) (half-line C (vec-translate C (vec B C))))
              (tangent (circle c r) (half-line A (vec-translate A (vec B A))))
              (tangent (circle c r) (line C A)))
          (&& (= P C)
              (tangent (circle c r) (half-line A (vec-translate A (vec C A))))
              (tangent (circle c r) (half-line B (vec-translate B (vec C B))))
              (tangent (circle c r) (line A B))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Circles
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_unit_circle
  ()
  (= (unit-circle)
     (circle (origin) 1)))

;; is-radius-of :: Seg -> Circle => Bool
(axiom
  def_is_radius_of
  (p q c r)
  (<-> (is-radius-of (seg p q) (circle c r))
       (|| (&& (= p c) (on q (circle c r)))
           (&& (= q c) (on p (circle c r))))))

;; is-diameter-of :: Seg -> Circle => Bool
(axiom
  def_is_diameter_of
  (p q c r)
  (<-> (is-diameter-of (seg p q) (circle c r))
       (&& (on p (circle c r))
           (on q (circle c r))
           
           ;(on c (seg p q)))))
           (= c (midpoint-of p q)))))

;; is-chord-of :: Seg -> Circle => Bool
(axiom
  def_is_chord_of
  (p q c r)
  (<-> (is-chord-of (seg p q) (circle c r))
       (&& (! (= p q))
           (on p (circle c r))
           (on q (circle c r)))))


;; is-diameter-of :: Seg -> Circle => Bool
;(axiom
;  def_is_diameter_of_circle
;  (p q c r)
;  (<-> (is-diameter-of (seg p q) (circle c r))
;       (&& (is-chord-of (seg p q) (circle c r))
;           (on c (seg p q)))))


;; (ListOf Point) => Bool
(axiom
  def_concircular_0
  ()
  (concircular (nil))) 

(axiom
  def_concircular_1
  (p)
  (concircular (list-of p ))) 

(axiom
  def_concircular_2
  (p0 p1)
  (concircular (list-of p0 p1))) 

(axiom
  def_concircular_3
  (p0 p1 p2)
  (<-> (concircular (list-of p0 p1 p2))
       (-> (pairwise-distinct (list-of p0 p1 p2))
             (! (colinear p0 p1 p2))))) 


(axiom
  def_concircular_4
  (p0 p1 p2 p3)
  (<-> (concircular (list-of p0 p1 p2 p3))
       
       
       (&& (-> (! (pairwise-distinct (list-of p0 p1 p2 p3)))
                 (concircular (remove-repetition (list-of p0 p1 p2 p3))))
           (-> (pairwise-distinct (list-of p0 p1 p2 p3)) 
                 
                 (|| (&& (points-same-side (line p0 p1) (list-of p2 p3))
                         (same-angle (angle p0 p2 p1)
                                     (angle p0 p3 p1)))
                     (&& (points-same-side (line p0 p2) (list-of p1 p3))
                         (same-angle (angle p0 p1 p2)
                                     (angle p0 p3 p2))))))))

(axiom
  def_concircular_general
  (ps)
  (<-> (concircular ps)
       (exists (c r) (all (PLam p (on p (circle c r))) ps))))

(axiom
  def_is_radius_of_disk_2d
  (p q c r)
  (<-> (is-radius-of (seg p q) (disk c r))
       (is-radius-of (seg p q) (circle c r))))

(axiom
  def_boundary_of_disk_2d
  (c r)
  (= (boundary-of (disk c r))
     (circle c r)))


; Arc => Point
(axiom
  def_arc_ini_point_2d
  (p r a b)
  (= (arc-ini-point (arc p r a b))
     (vec-translate p
		    (vec2d (* r (cos a)) (* r (sin a))))))


; Arc => Point
(axiom
  def_arc_end_point_2d
  (p r a b)
  (= (arc-end-point (arc p r a b))
     (vec-translate p
		    (vec2d (* r (cos b)) (* r (sin b))))))


; Arc => R
(axiom
  def_arc_central_angle_2d
  (p r a b)
  (= (arc-central-angle (arc p r a b))
     ;(mod (- b a) (* 2 (Pi)))))
     (- b a)))

(axiom
  def_is_radius_of_arc
  (p q c r ini end)
  (<-> (is-radius-of (seg p q) (arc c r ini end))
       (|| (&& (= p c) (on q (arc c r ini end)))
           (&& (= q c) (on p (arc c r ini end))))))

(axiom
  def_local_system_of_arc_2d
  (c r ini end)
  (= (local-system-of (arc c r ini end))
     (let*
       (
         (i (normalize (vec c (arc-ini-point (arc c r ini end)))))
         (j (vec2d (- (vec-y-coord i)) (vec-x-coord i)))
       )
       (list-of i j))))

(axiom
  def_local_system_of_minor_arc_by_three_points_2d
  (c p q)
  (= (local-system-of (minor-arc (arc c p q)))
     (let*
       (
         (i (normalize (vec c p)))
         (j (normalize (v+ (vec c q) (sv* (- (inner-prod (vec c q) i)) i))))
       )
       (list-of i j))))

(axiom
  def_local_system_of_major_arc_by_three_points_2d
  (c p q)
  (= (local-system-of (major-arc (arc c p q)))
     (let*
       (
         (i (normalize (vec c p)))
         (j (normalize (sv* -1 (v+ (vec c q) (sv* (- (inner-prod (vec c q) i)) i)))))
       )
       (list-of i j))))

(axiom
  def_local_system_of_arc_by_three_points_2d
  (c p q)
  (= (local-system-of (arc c p q)) (local-system-of (minor-arc (arc c p q)))))

(axiom
  def-connect-by-arc
  (pq c r ini end)
  (<-> (connect (arc c r ini end) pq)
       (|| (= pq (list-of (arc-ini-point (arc c r ini end))
                          (arc-end-point (arc c r ini end))))
           (= pq (list-of (arc-end-point (arc c r ini end))
                          (arc-ini-point (arc c r ini end)))))))

(axiom
  def_circular_sector_ini_point_2d
  (p r a b)
  (= (circular-sector-ini-point (circular-sector p r a b))
     (arc-ini-point (arc p r a b))))


(axiom
  def_circular_sector_end_point_2d
  (p r a b)
  (= (circular-sector-end-point (circular-sector p r a b))
     (arc-end-point (arc p r a b))))

(axiom
  def_is_radius_of_circular_sector_2d
  (p q c r ini end)
  (<-> (is-radius-of (seg p q) (circular-sector c r ini end))
     (is-radius-of (seg p q) (arc c r ini end))))

(axiom
 def_arc_of_circular_sector_2d
 (c r ini end)
 (= (arc-of (circular-sector c r ini end))
    (arc c r ini end)))

(axiom
  def_circular_sector_central_angle_2d
  (p r a b)
  (= (circular-sector-central-angle (circular-sector p r a b))
     (arc-central-angle (arc p r a b))))

(axiom
  def_sides_of_circular_sector_2d
  (c r ini end)
  (= (sides-of (circular-sector c r ini end))
     (sides-of (circular-sector-shape (circular-sector c r ini end)))))

(axiom
  def_local_system_of_circular_sector_2d
  (c r ini end)
  (= (local-system-of (circular-sector c r ini end))
     (local-system-of (arc c r ini end))))

(axiom
 def-is-radius-of-semicircle
 (p q c r ini)
 (<-> (is-radius-of (seg p q) (semicircle c r ini))
      (|| (&& (= p c) (on q (arc c r ini (+ ini (Pi)))))
          (&& (= q c) (on p (arc c r ini (+ ini (Pi))))))))

(axiom
 def-arc-of-semicircle
 (c r ini)
 (= (arc-of (semicircle c r ini))
    (arc c r ini (+ ini (Pi)))))

(axiom
 def-center-of-semicircle
 (c r ini)
 (= (center-of (semicircle c r ini)) c))

(axiom
 def-radius-of-semicircle
 (c r ini)
 (= (radius-of (semicircle c r ini)) r))

(axiom
 def-is-diameter-of-semicircle
 (p q c r ini)
 (<-> (is-diameter-of (seg p q) (semicircle c r ini))
      (|| (&& (= p (vec-translate c (sv* r (vec2d (cos ini) (sin ini)))))
              (= q (vec-translate c (sv* r (vec2d (- (cos ini)) (- (sin ini)))))))
          (&& (= q (vec-translate c (sv* r (vec2d (cos ini) (sin ini)))))
              (= p (vec-translate c (sv* r (vec2d (- (cos ini)) (- (sin ini))))))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ellipses
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-typing-trigger
 (ellipse-type e)
 (f1 f2 ap)
 (&& (= e (ellipse f1 f2 ap))
     (< (distance f1 f2) ap)))

(axiom
 def-major-radius
 (f1 f2 ap)
 (= (major-radius (ellipse f1 f2 ap))
    (/ ap 2)))

(axiom
 def-minor-radius
 (f1 f2 ap)
 (= (minor-radius (ellipse f1 f2 ap))
    (/ (sqrt (- (^ ap 2) (distance^2 f1 f2)))
       2)))

(axiom
 def-on-ellipse
 (P f1 f2 ap)
 (<-> (on P (ellipse f1 f2 ap))
      (= (+ (distance P f1) (distance P f2))
         ap)))

(axiom
  def-is-axis-of
  (A B f1 f2 ap)
  (<-> (is-axis-of (seg A B) (ellipse f1 f2 ap))
       (|| (= (seg A B) (major-axis-of (ellipse f1 f2 ap)))
           (= (seg A B) (minor-axis-of (ellipse f1 f2 ap))))))

(axiom
  def-major-axis-of
  (f1 f2 ap)
  (= (major-axis-of (ellipse f1 f2 ap))
     (let ((O (midpoint-of f1 f2))
           (maj-rad (major-radius (ellipse f1 f2 ap)))
           (v (normalize (vec f1 f2))))
          (seg (vec-translate O (sv* maj-rad v))
               (vec-translate O (sv* (- maj-rad) v))))))

(axiom
  def-minor-axis-of
  (f1 f2 ap)
  (= (minor-axis-of (ellipse f1 f2 ap))
     (let ((O (midpoint-of f1 f2))
           (min-rad (minor-radius (ellipse f1 f2 ap)))
           (v (vec-rotate-around-origin (normalize (vec f1 f2))
                                        (/ (Pi) 2))))
          (seg (vec-translate O (sv* min-rad v))
               (vec-translate O (sv* (- min-rad) v))))))

(axiom
  def-center-of-ellipse
  (f1 f2 ap)
  (= (center-of (ellipse f1 f2 ap))
     (midpoint-of f1 f2)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hyperbola
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def-typing-trigger
  (hyperbola-type h)
  (f1 f2 ap)
  (&& (! (= f1 f2))
      (= h (hyperbola f1 f2 ap)))) 


(axiom
 def-on-hyperbolla
 (P f1 f2 ap)
 (<-> (on P (hyperbola f1 f2 ap))
      (= (^ (- (distance P f1) (distance P f2)) 2)
         (^ ap 2))))



(axiom
 def-is-asymptote-of-hyperbola
 (p q f1 f2 ap)
 (<-> (is-asymptote-of (line p q) (hyperbola f1 f2 ap))
      (&& (on (midpoint-of f1 f2) (line p q))
          (! (= p q))
          (exists (A D)
                  (&& (on A (hyperbola f1 f2 ap))
                      (on A (line f1 f2)) 
                      (! (= D (midpoint-of f1 f2)))
                      (on D (line p q))
                      (perpendicular (line D A) (line f1 f2)) 
                      (= (distance^2 A D) (/ (- (distance^2 f1 f2) (^ ap 2)) 4)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Parabola
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-typing-trigger
  (parabola-type p)
  (f d)
  (= p (parabola f d))) 
                      
(axiom
 def-directrix-parabola
 (fx fy dx dy)
 (= (directrix (parabola (point fx fy) (point dx dy)))
    (line (point (+ dx dy (- fy)) (+ dy fx (- dx)))
          (point (+ dx fy (- dy)) (+ dy dx (- fx))))))

(axiom
 def-on-parabola
 (P f d)
 (<-> (on P (parabola f d))
      (= (distance P f)
         (point-shape-distance P (directrix (parabola f d))))))

                  



;; Line -> (ListOf Point) => Bool
(axiom
  def_points_same_side
  (l ps)
  (<-> (points-same-side l ps)
       (|| (all (PLam p (on p (upper-area-of l))) ps)
           (all (PLam p (on p (lower-area-of l))) ps))))

;; Line -> Point -> Point => Bool
(axiom
  def_points_opp_side
  (l p q)
  (<-> (points-opp-side l p q)
       (|| (&& (on p (upper-area-of l))
               (on q (lower-area-of l)))
           (&& (on p (lower-area-of l))
               (on q (upper-area-of l))))))


(axiom
  def_shapes_same_side
  (l lis)
  (<-> (shapes-same-side l lis)
       (|| (all (PLam x (inside-of x (upper-area-of l))) lis)
           (all (PLam x (inside-of x (lower-area-of l))) lis))))

(axiom
  def_point_inside_of_circle_2d 
  (p c r)
  (<-> (point-inside-of p (circle c r))
       (point-inside-of p (circle-shape (circle c r)))))

(axiom
  def_point_inside_of_disk_2d 
  (p c r)
  (<-> (point-inside-of p (disk c r))
       (point-inside-of p (disk-shape (disk c r)))))

(axiom
  def_point_inside_of_arc_2d
  (p c r ini end)
  (<-> (point-inside-of p (arc c r ini end))
       (point-inside-of p (arc-shape (arc c r ini end)))))

(axiom
  def_point_inside_of_circular_sector_2d
  (p c r ini end)
  (<-> (point-inside-of p (circular-sector c r ini end))
       (point-inside-of p (circular-sector-shape (circular-sector c r ini end)))))

;; (point-inside-of p (set-of-cfun f)) <-> (point-inside-of p (circle c r))
(axiom
  def_point_inside_of_generic_shape
  (p f)
  (<-> (point-inside-of p (set-of-cfun f))
       (on p (set-of-cfun f))))

;(axiom
; def-triangle-inside-of-shape
; (P Q R f)
; (<-> (inside-of (triangle P Q R) (set-of-cfun f))
;      (forall (p) (-> (on p (triangle P Q R)) (point-inside-of p (set-of-cfun f))))
;      )
;)

(axiom
  def_triangle_inside_of_half_plane0 
  (a b c l)
  (<-> (inside-of (triangle a b c) (upper-area-of l))
       (&& (on a (upper-area-of l))
           (on b (upper-area-of l))
           (on c (upper-area-of l)))))

(axiom
  def_triangle_inside_of_half_plane1 
  (a b c l)
  (<-> (inside-of (triangle a b c) (lower-area-of l))
       (&& (on a (lower-area-of l))
           (on b (lower-area-of l))
           (on c (lower-area-of l)))))
                        
(axiom
  def_square_inside_of_half_plane0 
  (a b c d l)
  (<-> (inside-of (square a b c d) (upper-area-of l))
       (&& (on a (upper-area-of l))
           (on b (upper-area-of l))
           (on c (upper-area-of l))
           (on d (upper-area-of l)))))

(axiom
  def_square_inside_of_half_plane1 
  (a b c d l)
  (<-> (inside-of (square a b c d) (lower-area-of l))
       (&& (on a (lower-area-of l))
           (on b (lower-area-of l))
           (on c (lower-area-of l))
           (on d (lower-area-of l)))))

(axiom
 def_triangle_inside_of_triangle
 (p q r P Q R)
 (<-> (inside-of (triangle p q r)
                 (triangle P Q R))
      (&& (point-inside-of p (triangle P Q R))
          (point-inside-of q (triangle P Q R))
          (point-inside-of r (triangle P Q R)))))

(axiom
 def-inside-of-generic-case
 (S1 S2)
 (<-> (inside-of S1 S2)
      
      ;(forall (P) (-> (on P S1) (on P S2)))))
      (forall (P) (-> (point-inside-of P S1) (point-inside-of P S2)))))

(axiom
  def_point_outside_of 
  (x y x0 y0 r)
  (<-> (point-outside-of (point x y) (circle (point x0 y0) r))
       (> (+ (* (- x x0) (- x x0))
             (* (- y y0) (- y y0)))
          (* r r))))

(axiom
  def-point-outside-of-triangle
  (P A B C)
  (<-> (point-outside-of P (triangle A B C))
       (! (on P (triangle A B C)))))

(axiom
  def-point-outside-of-square
  (P A B C D)
  (<-> (point-outside-of P (square A B C D))
       (! (on P (square A B C D)))))

(axiom
  def_point_outside_of_generic_case
  (P S)
  (<-> (point-outside-of P S)
       (&& (! (on P S))
           (! (point-inside-of P S)))))


(axiom
 def-outside-of-generic-case
 (S1 S2)
 (<-> (outside-of S1 S2)
      (forall (P) (-> (on P S1) (point-outside-of P S2)))))



(axiom
 def_polyline_2d_0
 ()
 (= (polyline (nil))
    (set-of-cfun (Lam x (PLam y (false))))))

(axiom
  def_polyline_2d_1
  (p)
  (= (polyline (list-of p))
     (set-of-cfun (Lam x (PLam y (= (point x y) p))))))
(axiom
  def_polyline_2d_2
  (p q)
  (= (polyline (list-of p q))
     (set-of-cfun (Lam x (PLam y (on (point x y) (seg p q)))))))

(axiom
  def_polyline_2d_2plus
  (p q ps)
  (= (polyline (cons p (cons q ps)))
     (set-of-cfun (Lam x (PLam y (|| (on (point x y) (seg p q))
                                          (on (point x y) (polyline (cons q ps)))))))))

;(axiom
;  def_tangential_line_of_fun_graph
;  (f x y)
;  (= (tangential-line-of-at (graph-of f) (point x y))
;     (let ((d (funapp (derivative f) x)))
;       (line2d (- d) 1 (+ (* (- d) x) y)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Symmetry
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_parabola_symmetry_axis
  (a b c l)
  (<-> (line-symmetry-shape (graph-of (poly-fun (list-of c b a))) l)
       (|| (&& (! (= a 0))
               (= l (line2d 1 0 (- (/ b (* 2 a))))))
           (&& (= a 0)
               (exists (u)
                       (= l (line2d -1 b u)))))))

(axiom
	def_line_symmetry_shape
	(f l)
	(<-> (line-symmetry-shape (graph-of f) l)
		(forall (P)
			(-> (on P (graph-of f))
				(exists (Q)
					(&& (on Q (graph-of f))
						(line-symmetry P Q l)))))))

(axiom
 def_is_symmetry_axis_of
 (C l)
 (<-> (is-symmetry-axis-of l C)
      (line-symmetry-shape C l)))

(axiom
  def_not_parabola_symmetry_axis
  (cs l)
  (<-> (line-symmetry-shape (graph-of (poly-fun cs)) l)
       (line-symmetry-shape (graph-of (fun (Lam _x (poly-value cs _x)))) l)))

(axiom
 def_parabola_peak
 (a b c P)
 
 ;(<-> (is-peak-of P (graph-of (poly-fun (list-of c b a))))
 (<-> (is-vertex-of P (graph-of (poly-fun (list-of c b a))))
      (&& (! (= a 0))
          (= P (point (- (/ b (* 2 a)))
                      (- c (/ (^ b 2) (* 4 a))))))))

(axiom
 def_parabola_peak_2
 (P f)
 (<-> (is-vertex-of P (graph-of f))
      (exists (a)
         (= f (fun (Lam x (+ (* a (^ (- x (x-coord P)) 2))
                             (y-coord P))))))))

(axiom
 def_parabola_translate
 (a b c v m g)
 (<-> (translate (graph-of (poly-fun (list-of c b a)))
                 v
                 m
                 g)
       (let* ((vx (vec-x-coord v))
              (vy (vec-y-coord v))
              (len (sqrt (+ (^ vx 2) (^ vy 2))))
              (dx (* m (/ vx len)))
              (dy (* m (/ vy len))))
        (= g (graph-of (poly-fun (list-of (+ (* a (^ dx 2))
                                             (- (* b dx))
                                             c
                                             dy)
                                          (- b (* 2 a dx))
                                          a)))))))


(axiom
  def_parabola_poly
  (c b a)
  (<-> (parabola (graph-of (poly-fun (list-of c b a))))
       (! (= a 0))))

(axiom
  def_parabola_fun
  (f)
  (<-> (parabola (graph-of (fun f)))
       (let ((zero (Lam x 0)))
         (&& (! (= (deriv (deriv f)) zero))
            (= (deriv (deriv (deriv f))) zero)))))

;; TORIAEZU
(axiom
  def-parabola-generic
  (f)
  (parabola (set-of-cfun f)))


;; any object of type 2d.Shape is a graph
(axiom
  def_graph
  (g)
  (graph g))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Translation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_translate1
  (v m f1 g2)
  (<-> (translate (graph-of f1)
                  v
                  m
                  ;(graph-of (fun f2)))
                  g2)
       (let* ((vx (vec-x-coord v))
              (vy (vec-y-coord v))
              (len (sqrt (+ (^ vx 2) (^ vy 2))))
              (dx (* m (/ vx len)))
              (dy (* m (/ vy len))))
         (= g2 (graph-of (fun (Lam x (+ (funapp f1 (- x dx)) dy))))))))
         ;(forall (x y)
         ;        (<-> (= y (LamApp f1 x))
         ;             (= (+ y dy) (LamApp f2 (+ x dx))))))))


;; translation, general case

(axiom
  def_translate-general
  (v m s1 s2)
  (<-> (translate s1
                  v
                  m
                  s2)
       (let* ((vx (vec-x-coord v))
	      (vy (vec-y-coord v))
	      (len (sqrt (+ (^ (vec-x-coord v) 2) (^ (vec-y-coord v) 2))))
	      (dx (* m (/ vx len)))
	      (dy (* m (/ vy len))))
	 (= s2 (shape-of-cpfun (PLam p (on (point (- (x-coord p) dx) (- (y-coord p) dy)) s1)))))))






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Intersection of geometric objects
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_intersect
  (f1 f2 p)
  (<-> (intersect (graph-of f1)
                  (graph-of f2)
                  p)
       (let ((x (x-coord p))
             (y (y-coord p)))
         (&& (= y (funapp f1 x))
            (= y (funapp f2 x))))))

(axiom
 def_intersect_fun_graph_and_region
 (f h x y)
 (<-> (intersect (graph-of f) (set-of-cfun h) (point x y))
      (&& (= y (funapp f x))
         (PLamApp (LamApp h x) y))))

(axiom
  def_tangent_func_and_circle
  (f c r px py)
  (<-> (tangent (graph-of f) (circle c r) (point px py))
       (&& (on (point px py) (graph-of f))
	  (on (point px py) (circle c r))
	  (= (funapp (derivative f) px) (/ (- (x-coord c) px) (- py (y-coord c)))))))

(axiom
  def_tangent_func_and_func
  (f g px py)
  (<-> (tangent (graph-of f) (graph-of g) (point px py))
       (&& (on (point px py) (graph-of f))
           (on (point px py) (graph-of g))
           (= (funapp (derivative f) px) (funapp (derivative g) px)))))

(axiom
  def_tangent_func_and_intersection_of_func_and_region
  (f g h px py)
  (<-> (tangent (graph-of f)
                (intersection (graph-of g) (set-of-cfun h))
                (point px py))
       (&& (tangent (graph-of f) (graph-of g) (point px py))
          (PLamApp (LamApp h px) py))))

(axiom
  def_tangent_func_and_line
  (f p q px py)
  (<-> (tangent (graph-of f)
                (line p q)
                (point px py))
       (&& (= py (funapp f px))
           (on (point px py) (line p q))
           (is-slope-of (funapp (derivative f) px) (line p q)))))
                

(axiom
  def_tangent_line_func
  (f p q px py)
  (<-> (tangent (line p q) (graph-of f) (point px py))
       (tangent (graph-of f) (line p q) (point px py))))



(axiom
  def_tangent_line_and_circle
  (p q c r P)
  (<-> (tangent (line p q)
               (circle c r)
               P)
      (&& (on P (line p q))
           (perpendicular (line c P) (line p q))
           (= (distance^2 P c) (^ r 2)))))

(axiom
  def_tangent_circle_and_line
  (p q c r P)
  (<-> (tangent (circle c r)
                (line p q)
                P)
       (tangent (line p q)
                (circle c r)
                P)))
(axiom
 def_tangent_circle_and_seg
 (p q c r P)
 (<-> (tangent (circle c r)
               (seg p q)
               P)
      (&& (tangent (line p q) (circle c r) P)
          (on P (seg p q)))))

(axiom
 def_tangent_seg_and_circle
 (p q c r P)
 (<-> (tangent (seg p q)
               (circle c r)
               P)
      (tangent (circle c r)
               (seg p q)
               P)))

(axiom
 def_tangent_circle_and_half_line
 (p q c r P)
 (<-> (tangent (circle c r)
               (half-line p q)
               P)
      (&& (tangent (line p q) (circle c r) P)
          (on P (half-line p q)))))

(axiom
 def_tangent_half_line_and_circle
 (p q c r P)
 (<-> (tangent (half-line p q)
               (circle c r)
               P)
      (tangent (circle c r)
               (half-line p q)
               P)))


(axiom
 def-tangent-line-and-ellipse
 (p q f1 f2 ap C)
 (<-> (tangent (line p q)
               (ellipse f1 f2 ap)
               C)
      (&& (on C (ellipse f1 f2 ap))
          (on C (line p q))
          (|| (&& (on C (line f1 f2))
                  (perpendicular (line p q) (line f1 f2)))
              (&& (perpendicular (line C (midpoint-of f1 f2))
                                 (line f1 f2)))
              (exists (A B G H)
                      (&& (perpendicular (line B C) (line f1 f2))
                          (on B (line f1 f2))
                          (intersect (line p q) (line f1 f2) A)
                          (! (= G H))
                          (intersect (line f1 f2) (ellipse f1 f2 ap) G)
                          (intersect (line f1 f2) (ellipse f1 f2 ap) H)
                          (! (= A B))
                          (= (* (distance^2 A G) (distance^2 B H))
                             (* (distance^2 A H) (distance^2 B G)))))))))

(axiom
 def-tangent-ellipse-and-line
 (p q f1 f2 ap C)
 (<-> (tangent (ellipse f1 f2 ap) (line p q) C)
      (tangent (line p q) (ellipse f1 f2 ap))))



(axiom
 def-tangent-line-and-hyperbola
 (p q f1 f2 ap C)
 (<-> (tangent (line p q)
               (hyperbola f1 f2 ap)
               C)
      (&& (on C (hyperbola f1 f2 ap))
          (on C (line p q))
          (|| (is-angle-bisector (line p q) (angle f1 C f2))
              (&& (colinear f1 f2 C)
                  (perpendicular (line p q) (line f1 f2)))))))

(axiom
 def-tangent-hyperbola-and-line
 (p q f1 f2 ap C)
 (<-> (tangent (hyperbola f1 f2 ap) (line p q) C)
      (tangent (line p q) (hyperbola f1 f2 ap) C)))
 


(axiom
 def-tangent-line-and-parabola
 (p q f d C)
 (<-> (tangent (line p q)
               (parabola f d)
               C)
      (&& (on C (parabola f d))
          (! (= p q))
          (on C (line p q))
          (|| (&& (= C (midpoint-of f d))
                  (perpendicular (line p q) (line f d)))
              (exists (D A)
                      (&& (on D (line f d))
                          (perpendicular (line C D) (line f d))
                          (on A (line f d))
                          (! (= D A))
                          (= (distance^2 D (midpoint-of f d))
                             (distance^2 A (midpoint-of f d)))
                          (= (line p q)
                             (line C A))))))))

(axiom
 def-tangent-parabola-and-line
 (p q f d C)
 (<-> (tangent (parabola f d)
               (line p q)
               C)
      (tangent (line p q)
               (parabola f d)
               C)))




(axiom
	def_tangent_line_and_graph_of_implicit_function
	(p q f P)
	(<-> (tangent (line p q) (graph-of-implicit-function f) P)
		(let* (
				(fx (Lam x (Lam y (LamApp (deriv (Lam t (LamApp (LamApp f t) y))) x))))
				(fy (Lam x (deriv (LamApp f x))))
				(Px (x-coord P))
				(Py (y-coord P))
				(fxP (LamApp (LamApp fx Px) Py))
				(fyP (LamApp (LamApp fy Px) Py))
			)
			(&& (on P (line p q))
				(on P (graph-of-implicit-function f))
				(|| (! (= 0 (LamApp (LamApp fx Px) Py)))
					(! (= 0 (LamApp (LamApp fy Px) Py)))
				)
				(= (line p q) (line2d fxP fyP (+ (* fxP Px) (* fyP Py))))
			)
		)))

(axiom
  def_tangent_graph_of_implicit_function_and_line
	(p q f P)
	(<-> (tangent (graph-of-implicit-function f) (line p q) P)
		(tangent (line p q) (graph-of-implicit-function f) P)))


(axiom
  def_normal_line_of_curve
  (p q f P)
  (<-> (normal-line (line p q)
                    (graph-of f)
                    P)
       (&& (on P (graph-of f))
           (on P (line p q))
           (|| (is-slope-of (/ -1 (funapp (derivative f) (x-coord P))) (line p q))
               (&& (= 0 (funapp (derivative f) (x-coord P)))
                   (= (x-coord p) (x-coord q)))))))
                           

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; inscribed-in/circumscribed-about
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
  def_is_inscribed_in
  (x1 y1 r1 x2 y2 r2)
  (<-> (is-inscribed-in (circle (point x1 y1) r1)
                        (circle (point x2 y2) r2))
       (&& (< r1 r2)
          (= (+ (^ (- x1 x2) 2) (^ (- y1 y2) 2))
             (^ (- r2 r1) 2)))))

(axiom
  def_triangle_is_inscribed_in_circle 
  (c r x y z)
  (<-> (is-inscribed-in (triangle x y z) (circle c r))
       (&& (is-circumcenter-of c  (triangle x y z))
           (= (^ r 2) (distance^2 c x)))))

(axiom
 def_is_inscribed_polygon_circle
 (c r x y z ps)
 (<-> (is-inscribed-in (polygon (cons x (cons y (cons z ps)))) (circle c r))
      (&& (is-inscribed-in (triangle x y z) (circle c r))
          (all (PLam p (on p (circle c r))) ps))))

(axiom
  def_is_inscribed_square_circle
  (c r p1 p2 p3 p4)
  (<-> (is-inscribed-in (square p1 p2 p3 p4) (circle c r))
       (is-inscribed-in (polygon (list-of p1 p2 p3 p4)) (circle c r))))

(axiom
  def_circle_is_inscribed_in_triangle 
  (c r x y z)
  (<-> (is-inscribed-in (circle c r) (triangle x y z))
       (&& (is-incenter-of c (triangle x y z))
           (= (^ r 2) (point-shape-distance^2 c (line x y))))))

(axiom
 def-circle-is-inscribed-in-polygon 
 (c r ps)
 (<-> (is-inscribed-in (circle c r) (polygon ps))
      (cyclic-all (Lam p0 (Lam p1 (PLam p2 (= (^ r 2) (point-shape-distance^2 c (line p1 p2)))))) ps)
  )
)

(axiom
  def_circle_is_inscribed_in_square 
  (c r p0 p1 p2 p3)
  (<-> (is-inscribed-in (circle c r) (square p0 p1 p2 p3))
       (is-inscribed-in (circle c r) (polygon (list-of p0 p1 p2 p3)))
  )
)



(axiom
  def_square_is_inscribed_in_circle 
  (c r x y z w)
  (<-> (is-inscribed-in (square x y z w) (circle c r))
       (&& (on x (circle c r))
           (on y (circle c r))
           (on z (circle c r))
           (on w (circle c r)))))

(axiom
  def_is_circumscribed_about
  (x1 y1 r1 x2 y2 r2)
  (<-> (is-circumscribed-about (circle (point x1 y1) r1)
                               (circle (point x2 y2) r2))
       (= (+ (^ (- x1 x2) 2) (^ (- y1 y2) 2))
          (^ (+ r1 r2) 2))))

(axiom
 def_intersect_func_circle
 (f cx cy r x y)
 (<-> (intersect (graph-of f)
                 (circle (point cx cy) r)
                 (point x y))
      (&& (= y (funapp f x))
         (= (^ r 2) (+ (^ (- x cx) 2) (^ (- y cy) 2))))))


(axiom
  def_move_along_counter_clockwise_on_circle
  (cx cy r px py qx qy len)
  (<-> (move-along-counter-clockwise-len
         (circle (point cx cy) r)
         (point px py)
         (point qx qy)
         len)
       (let ((c (cos (/ len r)))
             (s (sin (/ len r))))
         (&& (on (point px py) (circle (point cx cy) r))
            (on (point qx qy) (circle (point cx cy) r))
            (= (- qx cx) (- (* c (- px cx)) (* s (- py cy))))
            (= (- qy cy) (+ (* s (- px cx)) (* c (- py cy))))))))

(axiom
  def-center-of-regular-polygon
  (Ps)
  (= (center-of (polygon Ps))
     (vec->point (sv* (/ 1 (int->real (list-len Ps))) (vec (origin) (foldr1 (Lam v1 (Lam v2 (vec->point (v+ (vec (origin) v1) (vec (origin) v2))))) Ps))))))

(axiom
  def_char_fun_of_line2d
  (lx ly lz)
  (= (char-fun-of (line2d lx ly lz))
     (PLam P (= lz (+ (* lx (x-coord P)) (* ly (y-coord P)))))))

(axiom
  def_outer_prod_2d
  (x1 y1 x2 y2)
  (= (outer-prod (vec2d x1 y1) (vec2d x2 y2))
     (- (* x1 y2) (* y1 x2))))

(axiom
  def_in_counter_clockwise_direction
  (p1 p2 p3 p4 p5 p6)
  (<-> (in-counter-clockwise-direction (list-of p1 p2 p3 p4 p5 p6))
       (<= 0 (+ (outer-prod (vec (origin) p1) (vec (origin) p2))
                (+ (outer-prod (vec (origin) p2) (vec (origin) p3))
                   (+ (outer-prod (vec (origin) p3) (vec (origin) p4))
                      (+ (outer-prod (vec (origin) p4) (vec (origin) p5))
				     (+ (outer-prod (vec (origin) p5) (vec (origin) p6))
					(outer-prod (vec (origin) p6) (vec (origin) p1))))))))))

(axiom
	def_points_bending_to_same_side_2d
	(p0 p1 ps)
	(<-> (points-bending-to-same-side (cons p0 (cons p1 ps)))
		(cyclic-all
			(Lam x (Lam y (PLam z (< 0 (* (outer-prod (vec p0 (last ps)) (vec p0 p1)) (outer-prod (vec y x) (vec y z)))))))
			(cons p0 (cons p1 ps))
		)
	))

(axiom
 def_tangent_circle_and_circle
 ;;; 2013-01-16: avoid redundancy
 ;(c1 r1 c2 r2 t)
 ;(<-> (tangent (circle c1 r1) (circle c2 r2) t)
 ;     (&& (colinear c1 c2 t) --> wrong
 ;        (|| (= (^ (distance c1 c2) 2) (^ (- r1 r2) 2))
 ;           (= (^ (distance c1 c2) 2) (^ (+ r1 r2) 2))))))
 (c1 r1 c2 r2 t)
 (<-> (tangent (circle c1 r1) (circle c2 r2) t)
      (&& (on t (circle c1 r1))
         (on t (circle c2 r2))
         (|| (= (distance^2 c1 c2) (^ (- r1 r2) 2))
            (= (distance^2 c1 c2) (^ (+ r1 r2) 2))))))

(axiom
 def_intersect_obj_line2d
 (obj p q P)
 (<-> (intersect obj (line p q) P)
      (&& (on P obj)
          (on P (line p q)))))

(axiom
 def_intersect_line2d_obj
 (obj p q P)
 (<-> (intersect (line p q) obj P)
      (intersect obj (line p q) P)))


(axiom
  def_perpendicular_line_vs_graph
  (P Q f)
  (<-> (perpendicular (line P Q) (graph-of f))
       (&& (= (fun (Lam x 0)) (derivative (derivative f))) ;; f'': constant zero
	   (= 0 (inner-prod (vec P Q) (vec2d 1 (funapp (derivative f) 0)))))))

;; intersect/2 -> intersect/3
(axiom
  def_intersect/2_to_/3_2d
  (S T)
  (<-> (intersect S T)
       (exists (P) (intersect S T P))))

;; default
(axiom
  def_intersect_obj_vs_obj_2d
  (A B P)
  (<-> (intersect A B P)
       (&& (on P A)
          (on P B))))

(axiom
  def-are-intersection-points-of-parabola-and-line
  (A B a b c Ps)
  (<-> (are-intersection-points-of Ps (list-of (line A B) (graph-of (poly-fun (list-of c b a)))))
       (let ((Ax (x-coord A))
             (Ay (y-coord A))
             (Bx (x-coord B))
             (By (y-coord B)))
         (|| (&& (= Ax Bx)
                 (= Ps (list-of (point Ax (poly-value (list-of c b a) Ax)))))
             (&& (! (= Ax Bx))
                 (exists (xs)
                         (let ((slant (/ (- By Ay) (- Bx Ax)))
                               (y-intrsct (+ (- (* slant Ax)) Ay)))
                           (&& (are-solutions-of xs (poly-equation (list-of (- c y-intrsct)
                                                                            (- b slant)
                                                                            a)))
                               (= Ps (map (Lam x (point x (poly-value (list-of c b a) x))) xs))))))))))
(axiom
  def-are-intersection-points-of-line-and-parabola
  (A B a b c Ps)
  (<-> (are-intersection-points-of Ps (list-of (graph-of (poly-fun (list-of c b a))) (line A B)))
       (are-intersection-points-of Ps (list-of (line A B) (graph-of (poly-fun (list-of c b a)))))))

(axiom
  def-are-intersection-points-of-general-case
  (Ps A B)
  (<-> (are-intersection-points-of Ps (list-of A B))
       (forall (P)
         (<-> (member P Ps)
              (&& (on P A)
                  (on P B))))))

;; default
;(axiom
;  def-are-intersection-points-of
;  (Ps Cs)
;  (<-> (are-intersection-points-of Ps Cs)
;       (forall (P)
;               (<-> (member P Ps)
;                    (all (PLam c (on P c)) Cs)))))

(axiom
  def_angle_in_counterclockwise
	(v0 v1)
	(= (angle-in-counterclockwise v0 v1)
		 (if (<= 0 (outer-prod v0 v1))
				 (rad-of-angle (angle-of-vectors v1 v0))
			 (- (* 2 (Pi)) (rad-of-angle (angle-of-vectors v1 v0))))))

(axiom
 def_formed_angle__of_2d
 (a b c d)
 (= (formed-angle-of (line a b) (line c d))
    (angle-of-vectors (vec a b) (vec c d))
    )
)

(axiom
  def_center_of_circle_2d
  (c r)
  (= (center-of (circle c r))
     c))

(axiom
  def_radius_of_circle_2d
  (c r)
  (= (radius-of (circle c r))
     r))

(axiom
  def_center_of_disk_2d
  (c r)
  (= (center-of (disk c r))
     c))

(axiom
  def_radius_of_disk_2d
  (c r)
  (= (radius-of (disk c r))
     r))

(axiom
  def_center_of_arc_2d
  (c r ini end)
  (= (center-of (arc c r ini end))
     c))

(axiom
  def_radius_of_arc_2d
  (c r ini end)
  (= (radius-of (arc c r ini end)) 
     (radius-of (arc-shape (arc c r ini end)))))

(axiom
  def_center_of_circular_sector_2d
  (c r ini end)
  (= (center-of (circular-sector c r ini end))
     c))

(axiom
  def_radius_of_circular_sector_2d
  (c r ini end)
  (= (radius-of (circular-sector c r ini end))
     r))


;;(axiom
;;  def_enclosed_area
;;  (shapes)
;;  (= (enclosed-area shapes) (enclosed-area-lambda (shapes->cfun-forms shapes))))
;;
;;(axiom
;;  def_enclosed_area_within
;;  (shapes cond)
;;  (= (enclosed-area-within shapes cond) (enclosed-area-within-lambda (shapes->cfun-forms shapes) cond)))
;;
;;(axiom
;;  def_shapes_to_cfun_form_nil
;;  ()
;;  (= (shapes->cfun-forms (nil)) (nil)))
;;
;;(axiom
;;  def_shapes_to_cfun_form_seg
;;  (p1 p2 q1 q2 tl)
;;  (= (shapes->cfun-forms (cons (seg (point p1 p2) (point q1 q2)) tl))
;;     (let ((line (set-of-cfun (Lam x (PLam y (= (+ (* (- q2 p2) x) (* (- p1 q1) y)) (- (* p1 q2) (* p2 q1))))))))
;;       (cons line (shapes->cfun-forms tl)))))
;;
;;(axiom
;;  def_shapes_to_cfun_form_line2d
;;  (s t u tl)
;;  (= (shapes->cfun-forms (cons (line2d s t u) tl))
;;     (let ((line (set-of-cfun (Lam x (PLam y (= (+ (* s x) (* t y)) u))))))
;;       (cons line (shapes->cfun-forms tl)))))
;;
;;(axiom
;;  def_shapes_to_cfun_form_cfun
;;  (f tl)
;;  (= (shapes->cfun-forms (cons (set-of-cfun f) tl))
;;     (cons (set-of-cfun f) (shapes->cfun-forms tl))))
;;
;;(axiom
;;  def_shapes_to_cfun_form_fun_graph
;;  (f tl)
;;  (= (shapes->cfun-forms (cons (graph-of f) tl))
;;     (cons (graph-of f) (shapes->cfun-forms tl))))
(axiom
  def_area_of_triangle2d
  (p q r)
  (= (area-of (triangle p q r))
     (* (/ 1 2) (abs (outer-prod (vec p q) (vec p r))))))


(axiom
  def_area_of_circle_2d
  (c r)
  (= (area-of (circle c r))
     (* (Pi) (^ r 2))))

(axiom
  def_area_of_disk_2d
  (c r)
  (= (area-of (disk c r))
     (* (Pi) (^ r 2))))

(axiom
  def_area_of_arc_2d
  (c r ini end)
  (= (area-of (arc c r ini end))
     (area-of (arc-shape (arc c r ini end)))))

(axiom
  def_area_of_circular_sector_2d
  (c r ini end)
  (= (area-of (circular-sector c r ini end))
     (area-of (arc c r ini end))))

;(axiom
;  def_line2d_eq_obj
;  (s t u obj)
;  (<-> (= (line2d s t u) obj)
;       (forall (p)
;               (<-> (on p (line2d s t u))
;                    (on p obj)))))

;(axiom
;  def_eq_with_cfun
;  (shape cfun)
;  (<-> (= shape (set-of-cfun cfun))
;       (forall (x y)
;               (<-> (on (point x y) shape)
;                    (PLamApp (LamApp cfun x) y)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; length of perimeter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def-perimeter-of-circle
  (c r)
  (= (length-of (circle c r))
     (* 2 (Pi) r)))

(axiom
  def-length-of-arc
  (c r ini end)
  (= (length-of (arc c r ini end))
     (length-of (arc-shape (arc c r ini end)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; length of union of shapes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TORIAEZU
(axiom
  def-length-of-union-of-shapes
  (ss)
  (= (length-of (union ss))
     (sum (map (Lam x (length-of x)) ss))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; convexity
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def-shape-convex-upward
  (f)
  (<-> (convex-upward (graph-of f))
       (fun-convex-upward f)))

(axiom
  def-shape-convex-upward-in-region
  (f region)
  (<-> (convex-upward (graph-of f) region)
       (fun-convex-upward f region)))

(axiom
  def-shape-convex-downward
  (f)
  (<-> (convex-downward (graph-of f))
       (fun-convex-downward f)))

(axiom
  def-shape-convex-downward-in-region
  (f region)
  (<-> (convex-downward (graph-of f) region)
       (fun-convex-downward f region)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Points on geometric objects
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
 def_point_on_poly_fun
 (P cs)
 (<-> (on P (graph-of (poly-fun cs)))
      (= (y-coord P) (poly-value cs (x-coord P)))))

(axiom
 def_point_on_graph
 (f px py)
 (<-> (on (point px py) (graph-of f))
      (= py (funapp f px))))

(axiom
 def_point_on_graph_of_implicit_function
 (x y f)
 (<-> (on (point x y) (graph-of-implicit-function f))
      (= 0 (LamApp (LamApp f x) y))))

(axiom
  def_on_set_of_cfun
  (x y cf)
  (<-> (on (point x y) (set-of-cfun cf))
       (PLamApp (LamApp cf x) y)))

(axiom
 def_on_circle_2d
 (p c r)
 (<-> (on p (circle c r))
      (on p (circle-shape (circle c r)))))

(axiom
 def_on_disk_2d
 (p c r)
 (<-> (on p (disk c r))
      (on p (disk-shape (disk c r)))))

(axiom
 def_on_arc_2d
 (p c r b e)
 (<-> (on p (arc c r b e))
      (on p (arc-shape (arc c r b e)))))

(axiom
 def_on_circular_sector_2d
 (p c r b e)
 (<-> (on p (circular-sector c r b e))
      (on p (circular-sector-shape (circular-sector c r b e)))))


;;------------------------------------------------------------------------------
;; Geometric objects by characteristic functions
;;------------------------------------------------------------------------------
;inner-part-of
(axiom
	def_char_fun_of_inside_of_circle_2d
	(c r)
	(= (char-fun-of (inner-part-of (circle c r))) (char-fun-of (inner-part-of (circle-shape (circle c r))))))

(axiom
	def_char_fun_of_inside_of_disk_2d
	(c r)
	(= (char-fun-of (inner-part-of (disk c r))) (char-fun-of (inner-part-of (disk-shape (disk c r))))))

(axiom
	def_char_fun_of_inside_of_arc_2d
	(c r b e)
	(= (char-fun-of (inner-part-of (arc c r b e)))
		(char-fun-of (inner-part-of (arc-shape (arc c r b e))))))

(axiom
	def_char_fun_of_inside_of_circular_sector_2d
	(c r b e)
	(= (char-fun-of (inner-part-of (circular-sector c r b e)))
		(char-fun-of (inner-part-of (circular-sector-shape (circular-sector c r b e))))))

;with-boundary
(axiom
	def_char_fun_of_circle_with_boundary_2d
	(c r)
	(= (char-fun-of (with-boundary (circle c r))) (char-fun-of (with-boundary (circle-shape (circle c r))))))

(axiom
	def_char_fun_of_disk_with_boundary_2d
	(c r)
	(= (char-fun-of (with-boundary (disk c r))) (char-fun-of (with-boundary (disk-shape (disk c r))))))

(axiom
	def_char_fun_of_arc_with_boundary_2d
	(c r b e)
	(= (char-fun-of (with-boundary (arc c r b e)))
		(char-fun-of (with-boundary (arc-shape (arc c r b e))))))

(axiom
	def_char_fun_of_circular_sector_with_boundary_2d
	(c r b e)
	(= (char-fun-of (with-boundary (circular-sector c r b e)))
		(char-fun-of (with-boundary (circular-sector-shape (circular-sector c r b e))))))

;boundary
(axiom
	def_char_fun_of_boundary_of_circle_2d
	(c r)
	(= (char-fun-of (boundary-of (circle c r))) (char-fun-of (boundary-of (circle-shape (circle c r))))))

(axiom
	def_char_fun_of_boundary_of_disk_2d
	(c r)
	(= (char-fun-of (boundary-of (disk c r))) (char-fun-of (boundary-of (disk-shape (disk c r))))))

(axiom
	def_char_fun_of_boundary_of_arc_2d
	(c r b e)
	(= (char-fun-of (boundary-of (arc c r b e)))
		(char-fun-of (boundary-of (arc-shape (arc c r b e))))))

(axiom
	def_char_fun_of_boundary_of_circular_sector_2d
	(c r b e)
	(= (char-fun-of (boundary-of (circular-sector c r b e)))
		(char-fun-of (boundary-of (circular-sector-shape (circular-sector c r b e))))))

;default
(axiom
	def_char_fun_of_circle_2d
	(c r)
	(= (char-fun-of (circle c r)) (char-fun-of (circle-shape (circle c r)))))

(axiom
	def_char_fun_of_disk_2d
	(c r)
	(= (char-fun-of (disk c r)) (char-fun-of (disk-shape (disk c r)))))

(axiom
	def_char_fun_of_arc_2d
	(c r b e)
	(= (char-fun-of (arc c r b e))
		(char-fun-of (arc-shape (arc c r b e)))))

(axiom
	def_char_fun_of_circular_sector_2d
	(c r b e)
	(= (char-fun-of (circular-sector c r b e))
		(char-fun-of (circular-sector-shape (circular-sector c r b e)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; equality between geometric figures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def_circle_equality
  (c1 r1 c2 r2)
  (<-> (= (circle c1 r1) (circle c2 r2))
       (&& (= c1 c2)
          (= r1 r2))))

(axiom
  def_disk_equality
  (c1 r1 c2 r2)
  (<-> (= (disk c1 r1) (disk c2 r2))
       (&& (= c1 c2)
          (= r1 r2))))

(axiom
 def_fun_graph_equality
 (f1 f2)
 (<-> (= (graph-of f1) (graph-of f2))
      (= f1 f2)))

(axiom
  def-poly-fun-graph-line-equality
  (cs P Q)
  (<-> (= (graph-of (poly-fun cs))
          (line P Q))
       (&& (! (= P Q))
           (on P (graph-of (poly-fun cs)))
           (on Q (graph-of (poly-fun cs)))
           (int.<= (poly-deg cs) 1))))

(axiom
  def-poly-fun-graph-line-equality2
  (b P Q)
  (<-> (= (graph-of (poly-fun (list-of b)))
          (line P Q))
       (&& (! (= P Q))
           (= (y-coord P) b)
           (= (y-coord Q) b))))

(axiom
  def_fun_graph_line_equality
  (f P Q)
  (<-> (= (graph-of (fun f)) (line P Q))
       (&& (= (fun (Lam x 0)) (derivative (derivative (fun f)))) ;; f'' = 0
           (on P (graph-of (fun f)))
           (on Q (graph-of (fun f)))
           (! (= P Q)))))

(axiom
  def_arc_equality
  (O0 r0 b0 e0 O1 r1 b1 e1)
  (<-> (= (arc O0 r0 b0 e0) (arc O1 r1 b1 e1))
       (&& (= O0 O1)
           (= r0 r1)
           (= b0 b1)
           (= e0 e1))))

;(axiom
;  def_cfun_shape_equality
;  (f S)
;  (<-> (= (set-of-cfun f) S)
;       (forall (p)
;               (<-> (on p S)
;                    (on p (set-of-cfun f))))))
(def-pred _expand_shape_eq :: Shape -> Shape => Bool)
(axiom
  def_expand_shape_eq
  (S1 S2)
  (<-> (_expand_shape_eq S1 S2)
       (forall (p)
               (<-> (on p S1)
                    (on p S2)))))
(axiom
  def_cfun_shape_half_line_equality
  (f p1 p2)
  (<-> (= (set-of-cfun f) (half-line p1 p2))
       (_expand_shape_eq (set-of-cfun f) (half-line p1 p2))))
(axiom
  def_cfun_shape_line_equality
  (f p1 p2)
  (<-> (= (set-of-cfun f) (line p1 p2))
       (_expand_shape_eq (set-of-cfun f) (line p1 p2))))
(axiom
  def_cfun_shape_seg_equality
  (f p1 p2)
  (<-> (= (set-of-cfun f) (seg p1 p2))
       (_expand_shape_eq (set-of-cfun f) (seg p1 p2))))
(axiom
  def_cfun_shape_triangle_equality
  (f p1 p2 p3)
  (<-> (= (set-of-cfun f) (triangle p1 p2 p3))
       (_expand_shape_eq (set-of-cfun f) (triangle p1 p2 p3))))
(axiom
  def_cfun_shape_square_equality
  (f p1 p2 p3 p4)
  (<-> (= (set-of-cfun f) (square p1 p2 p3 p4))
       (_expand_shape_eq (set-of-cfun f) (square p1 p2 p3 p4))))
(axiom
  def_cfun_shape_polygon_equality
  (f ps)
  (<-> (= (set-of-cfun f) (polygon ps))
       (_expand_shape_eq (set-of-cfun f) (polygon ps))))
(axiom
  def_cfun_shape_cfun_shape_equality
  (f g)
  (<-> (= (set-of-cfun f) (set-of-cfun g))
       (_expand_shape_eq (set-of-cfun f) (set-of-cfun g))))
(axiom
  def_cfun_shape_intersection_equality
  (f S1 S2)
  (<-> (= (set-of-cfun f) (intersection S1 S2))
       (_expand_shape_eq (set-of-cfun f) (intersection S1 S2))))
(axiom
  def_cfun_shape_intersection_equality2
  (f Ss)
  (<-> (= (set-of-cfun f) (intersection Ss))
       (_expand_shape_eq (set-of-cfun f) (intersection Ss))))
(axiom
  def_cfun_shape_union_equality
  (f S1 S2)
  (<-> (= (set-of-cfun f) (union S1 S2))
       (_expand_shape_eq (set-of-cfun f) (union S1 S2))))
(axiom
  def_cfun_shape_union_equality2
  (f Ss)
  (<-> (= (set-of-cfun f) (union Ss))
       (_expand_shape_eq (set-of-cfun f) (union Ss))))
(axiom
  def_cfun_shape_circle_equality
  (f c r)
  (<-> (= (set-of-cfun f) (circle c r))
       (_expand_shape_eq (set-of-cfun f) (circle c r))))
(axiom
  def_cfun_shape_arc_equality
  (f c r b e)
  (<-> (= (set-of-cfun f) (arc c r b e))
       (_expand_shape_eq (set-of-cfun f) (arc c r b e))))
(axiom
  def_cfun_shape_graph_equality
  (f g)
  (<-> (= (set-of-cfun f) (graph-of g))
       (_expand_shape_eq (set-of-cfun f) (graph-of g))))

(axiom
  def_graph_of_implicit_function_equality
  (f g)
  (<-> (= (graph-of-implicit-function f) (graph-of-implicit-function g))
       (= f g)))

;(axiom
;  def_line_to_cfun_graph
;  (p q f)
;  (<-> (= (line p q) (set-of-cfun f))
;       (&& (! (= p q))
;           (forall (x y) (<-> (PLamApp (LamApp f x) y)
;                              (colinear p q (point x y)))))))
;
;(axiom
;  def_eq_btwn_circles
;  (c r f)
;  (<-> (= (circle c r) (set-of-cfun f))
;       (&& (< 0 r)
;          (forall (x y)
;               (<-> (= (distance^2 (point x y) c) (^ r 2))
;                    (PLamApp (LamApp f x) y))))))


;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
 def-intersection-to-cfun
 (f1 f2)
 (= (intersection (set-of-cfun f1) (set-of-cfun f2))
    (set-of-cfun (Lam x (PLam y (&& (PLamApp (LamApp f1 x) y)
                                    (PLamApp (LamApp f2 x) y)))))))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
  def-intersection-of-square-cfun
  (P Q R S f)
  (= (intersection (square P Q R S) (set-of-cfun f))
     (set-of-cfun (Lam x (PLam y (&& (PLamApp (LamApp f x) y)
                                     (exists (t1 t2 u1 u2)
                                             (&& (<= 0 t1)
                                                 (<= 0 t2)
                                                 (<= 0 u1)
                                                 (<= 0 u2)
                                                 (|| (= (point x y)
                                                        (vec->point (v+ (sv* t1 (vec (origin) P))
									(v+ (sv* t2 (vec (origin) Q))
									    (sv* (- 1 (+ t1 t2)) (vec (origin) R))))))
                                                     (= (point x y)
                                                        (vec->point (v+ (sv* u1 (vec (origin) R))
									(v+ (sv* u2 (vec (origin) S))
									    (sv* (- 1 (+ u1 u2)) (vec (origin) P)))))))))))))))
;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
 def-cfun-to-tail-in-intersection-list1
 (f S1) 
 (= (intersection (set-of-cfun f) S1)
    (intersection S1 (set-of-cfun f))))

(axiom
 def-cfun-to-tail-in-intersection-list2
 (f S1 S2)
 (= (intersection (set-of-cfun f) (intersection S1 S2))
    (intersection S1 (intersection (set-of-cfun f) S2))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Area enclosed by (algebraic) curves
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-fun area-enclosed-by :: (ListOf (Point -> Bool)) -> (Unit -> Bool) => R)
(def-fun area-enclosed-by-within :: (ListOf (Point -> Bool)) -> (Point -> Bool) -> (Unit -> Bool) => R)

(axiom
 def_area_of_enclosed_shape
 (shapes)
 (= (area-of (shape-enclosed-by-cpfun shapes))
    (area-enclosed-by shapes (PLam _ (true)))))

;;-------------------------------------------
;; 2015-03-31:
;(axiom
; def_area_of_enclosed_shape_with_restriction
; (shapes r)
; (= (area-of (intersection (shape-enclosed-by-cpfun shapes) (set-of-cfun r)))
;    (area-enclosed-by-within shapes r)))
(axiom
 def_area_of_enclosed_shape_with_restriction
 (boundaries shape)
 (= (area-of (shape-enclosed-by-within boundaries shape))
    (area-enclosed-by-within boundaries shape (PLam _ (true)))))

(axiom
 def_area_of_enclosed_shape_with_restriction2
 (shapes r)
 (= (area-of (intersection (set-of-cfun r) (shape-enclosed-by-cpfun shapes)))
    (area-of (intersection (shape-enclosed-by-cpfun shapes) (set-of-cfun r)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quadrants
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
 def-1st-quadrant
 ()
 (= (1st-quadrant)
    (set-of-cfun (Lam x (PLam y (&& (> x 0) (> y 0)))))))

(axiom
 def-2nd-quadrant
 ()
 (= (2nd-quadrant)
    (set-of-cfun (Lam x (PLam y (&& (< x 0) (> y 0)))))))

(axiom
 def-3rd-quadrant
 ()
 (= (3rd-quadrant)
    (set-of-cfun (Lam x (PLam y (&& (< x 0) (< y 0)))))))

(axiom
 def-4th-quadrant
 ()
 (= (4th-quadrant)
    (set-of-cfun (Lam x (PLam y (&& (> x 0) (< y 0)))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tan
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2x2 Matrices
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
 def-matrix-addtion-2x2
 (a b c d A B C D)
 (= (m+ (matrix a b c d)
        (matrix A B C D))
    (matrix (+ a A) (+ b B) (+ c C) (+ d D))))

(axiom
 def-matrix-minus-2x2
 (a b c d A B C D)
 (= (m- (matrix a b c d)
        (matrix A B C D))
    (matrix (- a A) (- b B) (- c C) (- d D))))

(axiom
 def-matrix-negative-2x2
 (a b c d)
 (= (m- (matrix a b c d))
		(matrix (- a) (- b) (- c) (- d))))

;; [a b] [A B] = [aA+bC aB+bD]
;; [c d] [C D]   [cA+dC cB+dD]
(axiom
 def-matrix-times-2x2
 (a b c d A B C D)
 (= (m* (matrix a b c d)
        (matrix A B C D))
    (matrix (+ (* a A) (* b C)) (+ (* a B) (* b D))
            (+ (* c A) (* d C)) (+ (* c B) (* d D)))))

(axiom
 def-matrix-scalar-mult-2x2
 (s a b c d)
 (= (sm* s (matrix a b c d))
    (matrix (* s a) (* s b) (* s c) (* s d))))

(axiom
 def-matrix-vec-mult-2x2
 (a b c d x y)
 (= (mv* (matrix a b c d) (vec2d x y))
    (vec2d (+ (* a x) (* b y))
           (+ (* c x) (* d y)))))

(axiom
  def-identity-matrix-2x2
  ()
  (= (identity-matrix)
     (matrix 1 0
             0 1)))

(axiom
  def-zero-matrix-2x2
  ()
  (= (zero-matrix)
     (matrix 0 0 0 0)))

(axiom
  def-is-non-singular
  (a b c d)
  (<-> (is-non-singular (matrix a b c d))
       (! (= 0 (- (* a d) (* b c))))))

(axiom
  def-inverse-of
  (a b c d)
  (= (inverse-of (matrix a b c d))
     (sm* (/ 1 (- (* a d) (* b c)))
          (matrix d (- b) (- c) a))))


(axiom
  def-mat-shape*-line
	(M p q)
	(= (mat-shape* M (line p q))
		 (line (vec->point (mv* M (vec (origin) p))) (vec->point (mv* M (vec (origin) q))))))


(axiom
 def-mat-shape*-general
 (M S)
 (= (mat-shape* M S)
    (shape-of-cpfun (PLam p (on (vec->point (mv* (inverse-of M) (vec (origin) p))) S)))))
 

(axiom
  def-matrix-equality
  (a b c d A B C D)
  (<-> (= (matrix a b c d) (matrix A B C D))
       (&& (= a A)
           (= b B)
           (= c C)
           (= d D))))

(axiom
 def-transposed-matrix
 (a b c d)
 (= (transposed-matrix (matrix a b c d))
    (matrix a c b d)))

(axiom
 def-orthogonal-matrix
 (M)
 (<-> (is-orthogonal-matrix M)
      (= (identity-matrix)
	 (m* M (transposed-matrix M)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Focus
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def-focus-of-ellipse
  (p f1 f2 ap)
  (<-> (is-focus-of p (ellipse f1 f2 ap))
       (|| (= p f1)
           (= p f2))))
(axiom
  def-focus-of-parabola
  (p f d)
  (<-> (is-focus-of p (parabola f d))
       (= p f)))

(axiom
  def-focus-of-hyperbola
  (p f1 f2 ap)
  (<-> (is-focus-of p (hyperbola f1 f2 ap))
       (|| (= p f1)
           (= p f2))))
(axiom
  def-foci-of-ellipse
  (ps f1 f2 ap)
  (<-> (are-foci-of ps (ellipse f1 f2 ap))
       (|| (= ps (list-of f1 f2))
           (= ps (list-of f2 f1)))))
(axiom
  def-foci-of-parabola
  (ps f d)
  (<-> (are-foci-of ps (parabola f d))
       (= ps (list-of f))))

(axiom
  def-foci-of-hyperbola
  (ps f1 f2 ap)
  (<-> (are-foci-of ps (hyperbola f1 f2 ap))
       (|| (= ps (list-of f1 f2))
           (= ps (list-of f2 f1)))))

(axiom
 def-focus-of
 (p s1)
 (<-> (is-focus-of p s1)
      (exists (s0 v m M a b)
	      (let* ((vx (vec-x-coord v))
		     (vy (vec-y-coord v))
		     (len (sqrt (+ (^ (vec-x-coord v) 2) (^ (vec-y-coord v) 2))))
		     (dx (* m (/ vx len)))
		     (dy (* m (/ vy len))))
		(|| (&& (is-orthogonal-matrix M)
			(translate s1 v m s0)
			(= (mat-shape* M s0)
			   (shape-of-cpfun (PLam q (= 1 
						      (- (* a (^ (x-coord q) 2)) (* b (^ (y-coord q) 2)))))))
			(|| (= p
			       (vec->point (v- (mv* (inverse-of M) (vec2d (sqrt (+ (/ 1 a) (/ 1 b))) 0)) (vec2d dx dy))))
			 (= p
			    (vec->point (v- (mv* (inverse-of M) (vec2d (- (sqrt (+ (/ 1 a) (/ 1 b)))) 0)) (vec2d dx dy))))))
		 (&& (is-orthogonal-matrix M)
		     (translate s1 v m s0)
		     (= (mat-shape* M s0)
			(shape-of-cpfun (PLam p (= 1 
						   (+ (* a (^ (x-coord p) 2)) (* b (^ (y-coord p) 2)))))))
		     (|| (= p
			    (vec->point (v- (mv* (inverse-of M) (vec2d (sqrt (- (/ 1 a) (/ 1 b))) 0)) (vec2d dx dy))))
		      (= p
			 (vec->point (v- (mv* (inverse-of M) (vec2d (- (sqrt (- (/ 1 a) (/ 1 b)))) 0)) (vec2d dx dy)))))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Translation of 2D geometric objects
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
 def-translation-of-parabola
 (c b a v)
 (= (translate (graph-of (poly-fun (list-of c b a))) v)
    (graph-of (poly-fun (list-of (+ (* a (^ (vec-x-coord v) 2))
                                             (- (* b (vec-x-coord v)))
                                             c
                                             (vec-y-coord v))
                                          (- b (* 2 a (vec-x-coord v)))
                                          a)))))
;(axiom
;  def-translation-of-fun-graph
;  (f v)
;  (= (translate (graph-of (fun f)) v)
;     (graph-of (fun (Lam x (+ (funapp f (- x (vec-x-coord v))) (vec-y-coord v)))))))
(axiom
  def-translation-of-fun-graph
  (f v)
  (= (translate (graph-of f) v)
     (graph-of (fun (Lam x (+ (funapp f (- x (vec-x-coord v))) (vec-y-coord v)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Intersection points between 2D geometric objects
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def-are-intersection-points-of-line-and-circle
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (line p q) (circle c r)))
       (|| (&& (= Ps (nil))
               (! (intersect (circle c r) (line p q))))
           (exists (P)
               (&& (= Ps (list-of P))
                   (tangent (circle c r) (line p q))))
           (exists (P Q)
               (&& (= Ps (list-of P Q))
                   (intersect (circle c r) (line p q) P)
                   (intersect (circle c r) (line p q) Q)
                   (! (= P Q)))))))
(axiom
  def-are-intersection-points-of-circle-and-line
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (circle c r) (line p q)))
       (are-intersection-points-of Ps (list-of (line p q) (circle c r)))))

(axiom
  def-are-intersection-points-of-seg-and-circle
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (seg p q) (circle c r)))
       (|| (&& (= Ps (nil))
               (! (intersect (circle c r) (seg p q))))
           (exists (P)
               (&& (= Ps (list-of P))
                   (tangent (circle c r) (seg p q))))
           (exists (P Q)
               (&& (= Ps (list-of P Q))
                   (intersect (circle c r) (seg p q) P)
                   (intersect (circle c r) (seg p q) Q)
                   (! (= P Q)))))))
(axiom
  def-are-intersection-points-of-circle-and-seg
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (circle c r) (seg p q)))
       (are-intersection-points-of Ps (list-of (seg p q) (circle c r)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; non-degenerated condition of polygon
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-typing-trigger
  (polygon-type p)
  (ps)
  (&& (= p (polygon ps))
      (int.<= 3 (list-len ps))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Overloaded definitions for 2D/3D geometry, part 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(include "axioms/geom-common-axioms2.lsp")
