(import "axioms/IntegerTypes.lsp")

(def-fun circle-shape :: Shape => Shape) 
(def-fun disk-shape :: Shape => Shape) 
(def-fun arc-shape :: Shape => Shape) 
(def-fun circular-sector-shape :: Shape => Shape) 

(axiom 
 def_is_shape
 (s)
 (is-shape s))

(axiom def_is_point (p) (is-point p)) ;; always true

(axiom
  def_vec_perpendicular
  (v1 v2)
  (<-> (vec-perpendicular v1 v2)
       (= 0 (inner-prod v1 v2))))


; Point -> Point -> Point => Bool
(axiom
  def_colinear
  (p0 p1 p2)
  (<-> (colinear p0 p1 p2)
       (vec-parallel (vec p0 p1) (vec p0 p2))))

(axiom
 def_vec_translate
 (P v)
 (= (vec-translate P v)
    (vec->point (v+ (vec (origin) P) v))
  )
)

; (Z -> Point) -> Point => Bool
(axiom
 def_converge_point
 (f p0)
 (<-> (converge-point f p0)
      (forall (x)
	      (exists (l)
		      (forall (n)
			      (-> (int.< l n)
				  (< (distance p0 (LamApp f n)) x)))))))


; (ListOf Points) => Bool
(axiom
  def_points_colinear_base_case
    (p0 p1)
    (points-colinear (list-of p0 p1)))
    

(axiom
  def_points_colinear
    (p0 p1 p2 ps)
    (<-> (points-colinear (cons p0 (cons p1 (cons p2 ps))))
             (&& (colinear p0 p1 p2)
                     (points-colinear (cons p1 (cons p2  ps))))))

(axiom
	def_points_with_equal_interval
	(p0 p1 ps)
	(<-> (points-with-equal-interval (cons p0 (cons p1 ps)))
		(cyclic-all
			(Lam x (Lam y (PLam z (= (distance^2 p0 p1) (distance^2 x y)))))
			(cons p0 (cons p1 ps))
		)))

(axiom
	def_points_bending_by_equal_angle
	(p0 p1 ps)
	(<-> (points-bending-by-equal-angle (cons p0 (cons p1 ps)))
		(cyclic-all
			(Lam x (Lam y (PLam z (= (cos-of-angle (angle (last ps) p0 p1)) (cos-of-angle (angle x y z))))))
			(cons p0 (cons p1 ps))
		)))

;; Point -> Point -> Point => Bool
(axiom
  def_equidistant
  (p q r)
  (<-> (equidistant p q r)
       (= (distance^2 p r) (distance^2 q r))))

;; (ListOf Point) -> Point => Bool
(axiom
  def_equidistant_list
  (ps q)
  (<-> (equidistant ps q)
       (equal (map (Lam p (distance^2 p q)) ps))))

; Vec -> Vec => Bool
(axiom
  def_vec_same_direction
  (v w)
  (<-> (vec-same-direction v w)
       (&& (vec-parallel v w)
           (< 0 (inner-prod v w)))))



; Vec -> Vec => Bool
(axiom
  def_vec_opp_direction
  (v w)
  (<-> (vec-opp-direction v w)
       (&& (vec-parallel v w)
           (> 0 (inner-prod v w)))))

;; always true
(axiom
  def-is-vector
  (v)
  (is-vector v))

; Vec => Bool
(axiom
  def_is_unit_vec
    (v)
    (<-> (is-unit-vec v)
             (= 1 (radius^2 v))))

(axiom
 def-vec-unary-minus
 (v)
 (= (v- v)
    (sv* -1 v)))

; Vec -> Line => Bool
(axiom
  def_is_normal_vector_of
    (v p q)
    (<-> (is-normal-vector-of v (line p q))
             (= 0 (inner-prod v (vec p q)))))

(axiom
  def_is_normal_vector_of_half_line
    (v p q)
    (<-> (is-normal-vector-of v (half-line p q))
             (= 0 (inner-prod v (vec p q)))))

(axiom
  def_is_normal_vector_of_segment
    (v p q)
    (<-> (is-normal-vector-of v (seg p q))
             (= 0 (inner-prod v (vec p q)))))

(axiom
	def_normal_vector_to_line
	(P Q point)
	(= (normal-vector-to (line P Q) point)
		(let ((p (vec P point)) (q (vec P Q)))
			(v- p (sv* (/ (inner-prod p q) (radius^2 q)) q))
		)))

(axiom
	def_normal_vector_to_half-line
	(P Q point)
	(= (normal-vector-to (half-line P Q) point)
     (normal-vector-to (line P Q) point)))

(axiom
	def_normal_vector_to_seg
	(P Q point)
	(= (normal-vector-to (seg P Q) point)
     (normal-vector-to (line P Q) point)))

(axiom
  def_direction_vec
  (p q)
  (= (direction-vec (line p q))
	   (vec p q)))

(axiom
  def_radius_vector
  (v)
  (= (radius v)
     (sqrt (inner-prod v v))))
     
(axiom
  def_square_radius_vector
  (v)
  (= (radius^2 v)
     (inner-prod v v)))

(axiom
  def_normalize
  (v)
  (= (normalize v)
     (sv* (/ 1 (radius v)) v)))

(axiom
  def-v-sum-nil
  ()
  (= (v-sum (nil))
     (zero-vector))) ;; zero
(axiom
  def-v-sum-cons
  (v vs)
  (= (v-sum (cons v vs))
     (v+ v (v-sum vs))))


;; Angle => R
(axiom
  def_cos_of_angle
  (a b c)
  (= (cos-of-angle (angle a b c))
     (/ (inner-prod (vec b a) (vec b c))
        (* (distance b a) (distance b c)))))
(axiom
  def_sin_of_angle
  (a)
  (= (sin-of-angle a)
     (sqrt (- 1 (^ (cos-of-angle a) 2)))))

(axiom
  def_tan_of_angle
  (a b c)
  (= (tan-of-angle (angle a b c))
     (let ((ax (x-coord a))
           (ay (y-coord a))
           (bx (x-coord b))
           (by (y-coord b))
           (cx (x-coord c))
           (cy (y-coord c)))
       (/ (abs (+ (- (* ax by) (* ay bx))
                  (- (* bx cy) (* by cx))
                  (- (* cx ay) (* cy ax))))
          (inner-prod (vec b a) (vec b c))))))

(axiom
	def_cos_of_angle_lines
	(a b p q)
	(= (cos-of-angle (formed-angle-of (line a b) (line p q)))
		(max
			(cos-of-angle (angle-of-vectors (vec a b) (vec p q)))
			(cos-of-angle (angle-of-vectors (vec b a) (vec p q)))
		)))

(axiom
	def_cos_of_angle_half_lines
	(a b p q)
	(= (cos-of-angle (formed-angle-of (half-line a b) (half-line p q)))
		(cos-of-angle (angle-of-vectors (vec a b) (vec p q)))))


;;----------------
;;----------------
(axiom
 def_cos_1/2_angle
 (A)
 (= (cos (* (/ 1 2) (rad-of-angle A)))
    (sqrt (/ (+ 1 (cos-of-angle A)) 2))))

(axiom
 def_cos_1/2_angle2
 (A)
 (= (cos (* (/ (int->real 1) (int->real 2)) (rad-of-angle A)))
    (sqrt (/ (+ 1 (cos-of-angle A)) 2))))

(axiom
 def_sin_1/2_angle
 (A)
 (= (sin (* (/ 1 2) (rad-of-angle A)))
    (sqrt (/ (- 1 (cos-of-angle A)) 2))))

(axiom
 def_sin_1/2_angle2
 (A)
 (= (sin (* (/ (int->real 1) (int->real 2)) (rad-of-angle A)))
    (sqrt (/ (- 1 (cos-of-angle A)) 2))))

(axiom
 def_tan_1/2_angle
 (A)
 (= (tan (* (/ 1 2) (rad-of-angle A)))
    (sqrt (/ (- 1 (cos-of-angle A))
             (+ 1 (cos-of-angle A))))))

(axiom
 def_tan_1/2_angle2
 (A)
 (= (tan (* (/ (int->real 1) (int->real 2)) (rad-of-angle A)))
    (sqrt (/ (- 1 (cos-of-angle A))
             (+ 1 (cos-of-angle A))))))

;;----------------
;;----------------
(axiom
 def_cos_2*angle
 (A)
 (= (cos (* 2 (rad-of-angle A)))
    (- (^ (cos (rad-of-angle A)) 2)
       (^ (sin (rad-of-angle A)) 2))))

(axiom
 def_cos_2*angle2
 (A)
 (= (cos (* (int->real 2) (rad-of-angle A)))
    (- (^ (cos (rad-of-angle A)) 2)
       (^ (sin (rad-of-angle A)) 2))))

(axiom
 def_sin_2*angle
 (A)
 (= (sin (* 2 (rad-of-angle A)))
    (* 2 (cos (rad-of-angle A))
         (sin (rad-of-angle A)))))

(axiom
 def_sin_2*angle2
 (A)
 (= (sin (* (int->real 2) (rad-of-angle A)))
    (* 2 (cos (rad-of-angle A))
         (sin (rad-of-angle A)))))

(axiom
 def_tan_2*angle
 (A)
 (= (tan (* 2 (rad-of-angle A)))
    (/ (sin (* 2 (rad-of-angle A)))
       (cos (* 2 (rad-of-angle A))))))

(axiom
 def_tan_2*angle2
 (A)
 (= (tan (* (int->real 2) (rad-of-angle A)))
    (/ (sin (* 2 (rad-of-angle A)))
       (cos (* 2 (rad-of-angle A))))))

;;----------------
;;----------------
(axiom
	def_cos_addition_theorem_angle_additon
	(A B)
	(= (cos (+ (rad-of-angle A) (rad-of-angle B)))
		(- (* (cos (rad-of-angle A)) (cos (rad-of-angle B)))
			(* (sin (rad-of-angle A)) (sin (rad-of-angle B))))))

(axiom
	def_cos_addition_theorem_angle_substraction
	(A B)
	(= (cos (- (rad-of-angle A) (rad-of-angle B)))
		(+ (* (cos (rad-of-angle A)) (cos (rad-of-angle B)))
			(* (sin (rad-of-angle A)) (sin (rad-of-angle B))))))

(axiom
	def_sin_addition_theorem_angle_additon
	(A B)
	(= (sin (+ (rad-of-angle A) (rad-of-angle B)))
		(+ (* (cos (rad-of-angle A)) (sin (rad-of-angle B)))
			(* (sin (rad-of-angle A)) (cos (rad-of-angle B))))))

(axiom
	def_sin_addition_theorem_angle_substraction
	(A B)
	(= (sin (- (rad-of-angle A) (rad-of-angle B)))
		(- (* (sin (rad-of-angle A)) (cos (rad-of-angle B)))
			(* (cos (rad-of-angle A)) (sin (rad-of-angle B))))))

(axiom
  def_is_right
  (a b c)
  (<-> (is-right (angle a b c))
       
       ; (= 0 (cos-of-angle (angle a b c)))))
       (= 0 (inner-prod (vec b a) (vec b c)))))

(axiom
  def_is_acute
    (a b c)
    (<-> (is-acute (angle a b c))
             (< 0 (cos-of-angle (angle a b c)))))

(axiom
  def_is_obtuse
    (a b c)
    (<-> (is-obtuse (angle a b c))
             (> 0 (cos-of-angle (angle a b c)))))

(axiom
  def-is-angle
  (a)
  (is-angle a))

;; Angle => R
;;(axiom
;;  def_rad_of_angle
;;    (a)
;;    (= (rad-of-angle a)
;;         (arccos (cos-of-angle a))))


;; Angle -> Angle => Bool
(axiom
  def_same_angle
    (a b)
    (<-> (same-angle a b)
             (= (cos-of-angle a) (cos-of-angle b))))

(axiom
  def_angle_equality
  (A B C D E F)
  (<-> (= (angle A B C) (angle D E F))
       ;(same-angle (angle A B C) (angle D E F))))
       (&& (= A D)
           (= B E)
           (= C F))))

;; Vec -> Vec => Angle
(axiom
  def_angle_of_vectors
  (v0 v1)
  (= (angle-of-vectors v0 v1)
     (angle (vec->point v1) (origin) (vec->point v0))))




(axiom
 def_lt_rad_of_angle
 (a x)
 (<-> (< (rad-of-angle a) x)
      (> (cos-of-angle a) (cos x))))

(axiom
 def_lt_rad_of_angle_const_rad
 (a x)
 (<-> (< x (rad-of-angle a))
      (> (cos x) (cos-of-angle a))))

(axiom
 def_gt_rad_of_angle
 (a x)
 (<-> (> (rad-of-angle a) x)
      (< (cos-of-angle a) (cos x))))

(axiom
 def_gt_rad_of_angle_const_rad
 (a x)
 (<-> (> x (rad-of-angle a))
      (< (cos x) (cos-of-angle a))))

(axiom
 def_le_rad_of_angle
 (a x)
 (<-> (<= (rad-of-angle a) x)
      (>= (cos-of-angle a) (cos x))))

(axiom
 def_le_rad_of_angle_const_rad
 (a x)
 (<-> (<= x (rad-of-angle a))
      (>= (cos x) (cos-of-angle a))))

(axiom
 def_ge_rad_of_angle
 (a x)
 (<-> (>= (rad-of-angle a) x)
      (<= (cos-of-angle a) (cos x))))

(axiom
 def_ge_rad_of_angle_const_rad
 (a x)
 (<-> (>= x (rad-of-angle a))
      (<= (cos x) (cos-of-angle a))))

(axiom
 def_eq_rad_of_angle
 (a x)
 (<-> (= (rad-of-angle a) x)
      
      
      
	  
      (&& (= (cos-of-angle a) (cos x))
          (<= 0 (rad-of-angle a))
          (<= (rad-of-angle a) (Pi))
	      
		  
          ;(<= 0 x)
          ;(<= x (Pi)))))
		  (<= 0 (sin x)))))

(axiom
 def_cos_of_rad_of_angle
 (a)
 (= (cos (rad-of-angle a))
    (cos-of-angle a)))

(axiom
 def_sin_of_rad_of_angle
 (a)
 (= (sin (rad-of-angle a))
    (sin-of-angle a)))

(axiom
 def_tan_of_rad_of_angle
 (a)
 (= (tan (rad-of-angle a))
    (tan-of-angle a)))


;; is-interior-angle
(axiom
  def_is_interior_angle_triangle
	(a A B C)
	(<-> (is-interior-angle a (triangle A B C))
			 (|| (= a (angle A B C))
					 (= a (angle C B A))
					 (= a (angle B C A))
					 (= a (angle A C B))					 
					 (= a (angle C A B))
					 (= a (angle B A C)))))


(axiom
  def_is_interior_angle_square
	(a A B C D)
	(<-> (is-interior-angle a (square A B C D))
			 (|| (= a (angle A B C))
					 (= a (angle C B A))
					 (= a (angle B C A))
					 (= a (angle A C B))
					 (= a (angle C D A))
					 (= a (angle A D C))
					 (= a (angle D A B))
					 (= a (angle B A D)))))

;; TODO: are-interior-angles

(axiom
  def_are_interior_angles_triangle
  (as A B C)
  (<-> (are-interior-angles as (triangle A B C))
       (exists (Ang1 Ang2 Ang3)
         (&& (is-a-permutation-of as (list-of Ang1 Ang2 Ang3))
             (|| (= Ang1 (angle A B C))
                 (= Ang1 (angle C B A)))
             (|| (= Ang2 (angle B C A))
                 (= Ang2 (angle A C B)))
             (|| (= Ang3 (angle C A B))
                 (= Ang3 (angle B A C)))))))

(axiom
  def_are_interior_angles_square
  (as A B C D)
  (<-> (are-interior-angles as (square A B C D))
       (exists (Ang1 Ang2 Ang3 Ang4)
         (&& (is-a-permutation-of as (list-of Ang1 Ang2 Ang3 Ang4))
             (|| (= Ang1 (angle A B C))
                 (= Ang1 (angle C B A)))
             (|| (= Ang2 (angle B C D))
                 (= Ang2 (angle D C B)))
             (|| (= Ang3 (angle A D C))
                 (= Ang3 (angle C D A)))
             (|| (= Ang4 (angle B A D))
                 (= Ang4 (angle D A B)))))))

(axiom
  def_angle_cyclic_all_rec_nil
  (p0 p1 p2)
  (= (angle-cyclic-all-rec (cons p0 (cons p1 (cons p2 (nil)))))
     (cons (angle p0 p1 p2) (cons (angle p2 p1 p0) (nil)))))

(axiom
  def_angle_cyclic_all_rec
  (p0 p1 p2 ps)
  (= (angle-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps))))
     (cons (angle p0 p1 p2) (cons (angle p2 p1 p0) (angle-cyclic-all-rec (cons p1 (cons p2 (cons (car ps) (cdr ps)))))))))

(axiom
  def_is_interior_angle_polygon
  (a p0 p1 p2 ps)
  (<-> (is-interior-angle a (polygon (cons p0 (cons p1 (cons p2 ps)))))
       (|| (= a (angle (last ps) p0 p1))
           (= a (angle p1 p0 (last ps)))
           (= a (angle (last (butlast ps)) (last ps) p0))
           (= a (angle p0 (last ps) (last (butlast ps))))
           (member a (angle-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps))))))))

(axiom
  def_angle_of_cyclic_all_rec_nil
  (p0 p1 p2)
  (= (angle-of-cyclic-all-rec (cons p0 (cons p1 (cons p2 (nil)))))
     (cons (rad-of-angle (angle p0 p1 p2)) (nil))))

(axiom
  def_angle_of_cyclic_all_rec
  (p0 p1 p2 ps)
  (= (angle-of-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps))))
     (cons (rad-of-angle (angle p0 p1 p2)) (angle-of-cyclic-all-rec (cons p1 (cons p2 (cons (car ps) (cdr ps))))))))

(axiom
  def_angles_of_polygon
  (p0 p1 p2 ps)
  (= (angles-of-polygon (polygon (cons p0 (cons p1 (cons p2 ps)))))
     (cons (rad-of-angle (angle (last (butlast ps)) (last ps) p0)) (cons (rad-of-angle (angle (last ps) p0 p1)) (angle-of-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps))))))))

(axiom
  def_cyclic_point_nil
  (ps)
  (= (cyclic-point ps 1)
     (cons (last ps) (butlast ps))))

(axiom
  def_cyclic_point
  (ps n)
  (= (cyclic-point ps n)
     (cyclic-point (cyclic-point ps (int.- n 1)) 1)))

(axiom
  def_reverse_point_nil
    ()
    (= (reverse-point (nil))
       (nil)))

(axiom
  def_reverse_point 
    (ps)
    (= (reverse-point ps)
       (cons (last ps) (reverse-point (butlast ps)))))


(axiom
  def_is_interior_angle_of_polygon
  (a p0 p1 p2 ps)
  (<-> (is-interior-angle-of a (polygon (cons p0 (cons p1 (cons p2 ps)))))
       (|| (= a (rad-of-angle (angle (last ps) p0 p1)))
           (= a (rad-of-angle (angle (last (butlast ps)) (last ps) p0)))
           (member a (angle-of-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps))))))))

(axiom
  def_are_interior_angle_of_polygon
  (as p0 p1 p2 ps)
  (<-> (are-interior-angles-of as (polygon (cons p0 (cons p1 (cons p2 ps)))))
       (is-a-permutation-of as (cons (rad-of-angle (angle (last ps) p0 p1)) (cons (rad-of-angle (angle (last (butlast ps)) (last ps) p0)) (angle-of-cyclic-all-rec (cons p0 (cons p1 (cons p2 ps)))))))))


(axiom
  def_center_point_of_angle
  (A B C)
  (= (center-point-of-angle (angle A B C)) B))

(axiom
  def_are_interior_angles_polygon
  (as p0 p1 p2 ps)
  (<-> (are-interior-angles as (polygon (cons p0 (cons p1 (cons p2 ps)))))
         (forall (p q)
          (&&
           (-> (member p as)
               (is-interior-angle p (polygon (cons p0 (cons p1 (cons p2 ps))))))
           (-> (is-interior-angle p (polygon (cons p0 (cons p1 (cons p2 ps)))))
               (exists (r)
                 (&& (member r as)
                     (= (center-point-of-angle r) (center-point-of-angle p)))))
           (-> (&& (member p as) (member q as) (! (= p q)))
               (! (= (center-point-of-angle p) (center-point-of-angle q))))))))
              

;; is-angle-bisector :: Line -> Angle => Bool
(axiom
	def_is_angle_bisector
	(P Q a b c)
	(<-> (is-angle-bisector (line P Q) (angle a b c))
		(|| (&& (colinear a b c)
				(|| (&& (< 0 (inner-prod (vec b a) (vec b c))) 
						(= (line P Q) (line a b)))
					(&& (>= 0 (inner-prod (vec b a) (vec b c))) 
						(on b (line P Q))
						(perpendicular (line P Q) (line a c)))))
			(&& (! (colinear a b c))
				(= (line P Q) (line b (internally-dividing-point a c (/ (distance b a) (+ (distance b a) (distance b c))))))
			))))

(axiom
  def_is_angle_bisector_seg
  (P Q A)
  (<-> (is-angle-bisector (seg P Q) A)
       (is-angle-bisector (line P Q) A)))

(axiom
  def_is_angle_bisector_half-line
  (P Q A)
  (<-> (is-angle-bisector (half-line P Q) A)
       (is-angle-bisector (line P Q) A)))

(axiom
   def-exterior-angle-of
   (A B C)
   (= (exterior-angle-of (angle A B C))
      (angle A B (vec-translate B (vec C B)))))



;; is-end-point-of :: Point -> Seg => Bool
(axiom
  def_is_end_point_of
    (p q0 q1)
    (<-> (is-end-point-of p (seg q0 q1))
             (|| (= p q0) (= p q1))))

(axiom
  def_is_end_point_of_half_line
  (p P Q)
  (<-> (is-end-point-of p (half-line P Q))
       (= p P)))

(axiom
	def_vertices_of_seg
	(p0 p1)
	(= (vertices-of (seg p0 p1)) (list-of p0 p1)))

(axiom
	def_vertices_of_half_line
	(p0 p1)
	(= (vertices-of (half-line p0 p1)) (list-of p0)))

(axiom
	def_vertices_of_triangle
	(p0 p1 p2)
	(= (vertices-of (triangle p0 p1 p2)) (list-of p0 p1 p2)))

(axiom
	def_vertices_of_square
	(p0 p1 p2 p3)
	(= (vertices-of (square p0 p1 p2 p3)) (list-of p0 p1 p2 p3)))

(axiom
	def_vertices_of_polygon
	(points)
	(= (vertices-of (polygon points)) points))

; (ListOf Line) => Bool
(axiom
  def_lines_intersect_at_base_case
    (p)
    (<-> (lines-intersect-at (nil) p)
             (true)))

(axiom
  def_lines_intersect_at
    (l ls p)
    (<-> (lines-intersect-at (cons l ls) p)
             (&& (on p l) (lines-intersect-at ls p))))



(axiom
  def_lines_intersect_at_one
    (ls)
    (<-> (lines-intersect-at-one ls)
             (exists (p) (lines-intersect-at ls p))))

(axiom
  def_determine_line_by_two_points
    (p q r s)
    (<-> (determine (list-of p q) (line r s))
         (&& (on p (line r s))
             (on q (line r s))
             (! (= p q)))))

;; Shape -> Point
(axiom
    def_seg_midpoint_of
    (p q)
    (= (seg-midpoint-of (seg p q))
         (midpoint-of p q)))

;; Shape -> ListOf(Point)
(axiom
    def-end-points-of-seg
    (p q)
    (= (end-points-of (seg p q))
       (list-of p q)))
(axiom
    def-end-points-of-arc
    (c p q)
    (= (end-points-of (arc c p q))
       (list-of p q)))

;; Shape -> Shape
(axiom
    def_seg_extension_of_line
    (p q)
    (= (seg-extention-of (seg p q))
         (line p q)))

(axiom
    def_seg_extension_of
    (p q)
    (= (seg-extention-of (line p q))
         (line p q)))

;; Shape -> Shape
(axiom
  def_half_line_extension_of
  (p q)
  (= (half-line-extension-of (half-line p q))
     (line p q)))

(axiom
    def_divide_internally
    (p a b v w)
    (<-> (divide-internally p (seg a b) v w)
	 (= p (vec->point (v+ (sv* (/ w (+ v w)) (vec (origin) a))
				 (sv* (/ v (+ v w)) (vec (origin) b)))))))

(axiom
  def_divide_externally
  (p a b v w)
  (<-> (divide-externally p (seg a b) v w)
       (= p (vec->point (v+ (sv* (/ (- w) (- v w)) (vec (origin) a))
			    (sv* (/ v (- v w)) (vec (origin) b)))))))

; Line -> Seg => Bool
(axiom
  def_is_perp_bisector
  (l m)
  (<-> (is-perp-bisector l m)
       (&& (perpendicular l (seg-extention-of m))
           (on (seg-midpoint-of m) l ))))



(axiom
  def_triangle_equality
    (a b c d e f)
    (<-> (= (triangle a b c) (triangle d e f))
             (&& (= a d) (= b e) (= c f))))



;; Triangle => ListOf Seg
;;(axiom
;;  def_medians_of
;;    (x y z)
;;    (= (medians-of (triangle x y z))
;;             (list-of
;;                 (seg x (midpoint-of y z))
;;                 (seg y (midpoint-of z x))
;;                 (seg z (midpoint-of z y)))))





;; Triangle -> Point -> Seg => BOol
(axiom
  def_triangle_opposite
  (a b c p l)
  (<-> (triangle-opposite (triangle a b c) p l)
	   (|| (&& (= p a) (= l (seg b c)))
		   (&& (= p b) (= l (seg c a)))
		   (&& (= p c) (= l (seg a b))))))

(axiom
  def_triangle_opposite_angle
  (a b c A l)
  (<-> (triangle-opposite-angle (triangle a b c) A l)
       (|| (&& (= A (angle c a b)) (= l (seg b c)))
           (&& (= A (angle a b c)) (= l (seg c a)))
           (&& (= A (angle b c a)) (= l (seg a b))))))


(axiom
  def_is_right_triangle
  (a b c)
  (<-> (is-right-triangle a b c)
	   (&& (is-triangle a b c)
		   (|| (is-right (angle c a b))
			   (is-right (angle a b c))
			   (is-right (angle b c a))))))

(axiom
  def-is-righ-triangle-shape
  (a b c)
  (<-> (is-right-triangle (triangle a b c))
	   (is-right-triangle a b c)))

;; Triangle => Bool
(axiom
  def_is_acute_triangle
  (a b c)
  (<-> (is-acute-triangle  a b c)
	   (&& (is-triangle a b c)
		   (is-acute (angle c a b))
		   (is-acute (angle a b c))
		   (is-acute (angle b c a)))))

(axiom
  def_is_acute_triangle_shape
  (a b c)
  (<-> (is-acute-triangle (triangle a b c))
	   (is-acute-triangle a b c)))

(axiom
  def_is_obtuse_triangle
  (a b c)
  (<-> (is-obtuse-triangle a b c)
	   (&& (is-triangle a b c)
		   (|| (is-obtuse (angle c a b))
			   (is-obtuse (angle a b c))
			   (is-obtuse (angle b c a))))))

(axiom
  def_is_obtuse_triangle_shape
  (a b c)
  (<-> (is-obtuse-triangle (triangle a b c))
	   (is-obtuse-triangle a b c)))

(axiom
  def_is_equilateral_triangle
  (a b c)
  (<-> (is-equilateral-triangle a b c)
	   (&& (is-triangle a b c)
		   (= (distance a b) (distance b c))
		   (= (distance b c) (distance c a)))))

(axiom
  def_is_equilateral_triangle_shape
  (a b c)
  (<-> (is-equilateral-triangle (triangle a b c))
       (is-equilateral-triangle a b c)))

(axiom
  def_is_isosceles_triangle
  (a b c)
  (<-> (is-isosceles-triangle a b c)
	   (&& (is-triangle a b c)
		   (|| (= (distance a b) (distance b c))
			   (= (distance b c) (distance c a))
			   (= (distance c a) (distance a b))))))

(axiom
  def_is_isosceles_triangle_shape
  (a b c)
  (<-> (is-isosceles-triangle (triangle a b c))
       (is-isosceles-triangle a b c)))

;; Point -> Triangle => Bool
(axiom
  def_is_incenter_of
  (p a b c)
  (<-> (is-incenter-of p (triangle a b c))
       
       ;(&& (is-angle-bisector (line a p) (angle c a b))
       ;    (is-angle-bisector (line b p) (angle a b c)))))
       (let ((ab (distance a b))
             (bc (distance b c))
             (ca (distance c a)))
         (= p (vec->point (sv* (/ 1 (+ ab bc ca))
                               (v+ (sv* bc (vec (origin) a))
                                   (sv* ca (vec (origin) b))
                                   (sv* ab (vec (origin) c)))))))))

;; xi in R^2
;;
;; phi(x1, x2, ..., xn)
;; <-> phi(M(x1), M(x2), ..., M(xn))

;;
; (is-circumcenter-of P S) 
;   <-> (is-circumcenter-of (M P) (M S))
;
; (is-circumcenter-of p (triangle a b c)) 
; <-> (is-circumcenter-of (M p) (triangle (M a) (M b) (M c)))

;; Point -> Triangle => Bool
(axiom
  def_is_circumcenter_of
  (p a b c)
  (<-> (is-circumcenter-of p (triangle a b c))
       (&& (perpendicular (line a b) (line p (midpoint-of a b)))
           (perpendicular (line b c) (line p (midpoint-of b c))))))

;; Point -> Triangle => Bool
(axiom
  def_is_orthocenter_of
  (p a b c)
  (<-> (is-orthocenter-of p (triangle a b c))
       (&& (perpendicular (line a p) (line b c))
           (perpendicular (line b p) (line c a))
           (perpendicular (line c p) (line a b)))))

(axiom
 def_center_of_gravity_of_triangle_3d
 (G A B C)
 (<-> (is-center-of-gravity-of G (triangle A B C))
      (= G (vec->point (sv* (/ 1 3) (v+ (v+ (vec (origin) A) (vec (origin) B)) (vec (origin) C)))))))


;; is-diagonal-of :: Seg -> Square => Bool
(axiom
  def_is_diagonal_of
  ;(p q a b c d)
  ;(<-> (is-diagonal-of (seg p q) (square a b c d))
  ;         (|| (= (seg p q) (seg a c))
  ;                 (= (seg p q) (seg b d)))))
  (s a b c d)
  (<-> (is-diagonal-of s (square a b c d))
       (|| (= s (seg a c))
           (= s (seg b d)))))

;; Square -> Seg -> Seg => Bool
(axiom
  def_square_opposite_side
  (a b c d l m)
  (<-> (square-opposite-side (square a b c d) l m)
       (|| (&& (= l (seg a b)) (= m (seg c d)))
           (&& (= l (seg b c)) (= m (seg d a)))
           (&& (= l (seg c d)) (= m (seg a b)))
           (&& (= l (seg d a)) (= m (seg b c))))))

;; Square -> Angle -> Angle => Bool
(axiom
  def_square_opposite_angle
  (a b c d l m)
  (<-> (square-opposite-angle (square a b c d) l m)
       (|| (&& (= l (angle a b c)) (= m (angle c d a)))
           (&& (= l (angle b c d)) (= m (angle d a b))))))
                                                                    
                                                                    
(axiom
  def_is_square
  (P Q R S)
  (<-> (is-square P Q R S)
	   (&& ;(! (= P R))
		 ;(! (= Q S))
         (! (colinear P Q R))
         (! (colinear Q R S))
         (! (colinear R S P))
         (! (colinear S P Q))
		 (exists (T)
				 (intersect (seg P R) (seg Q S) T)))))

(axiom
 def_is_regular_square
 (a b c d)
 (<-> (is-regular-square a b c d)
	  (&& (is-rectangle a b c d)
		  (= (distance^2 a b) (distance^2 a d)))))

(axiom
 def_is_regular_square_shape
 (a b c d)
 (<-> (is-regular-square (square a b c d))
      (is-regular-square a b c d)))

(axiom
  def_is_rectangle
  (a b c d)
  (<-> (is-rectangle a b c d)
	   (&& (is-parallelogram a b c d)
           (perpendicular (line a b) (line b c)))))

(axiom
 def_is_rectangle_shape
 (a b c d)
 (<-> (is-rectangle (square a b c d))
      (is-rectangle a b c d)))

(axiom
  def_is_rhombus
  (a b c d)
  (<-> (is-rhombus a b c d)
	   (&& (is-square a b c d)
           (perpendicular (line a c) (line b d))
		   (= (midpoint-of a c) (midpoint-of b d)))))

(axiom
 def_is_rhombus_shape
 (a b c d)
 (<-> (is-rhombus (square a b c d))
      (is-rhombus a b c d)))

(axiom
  def_is_parallelogram
  (a b c d)
  (<-> (is-parallelogram a b c d)
	   (&& (is-square a b c d)
	       (= (vec (origin) c) (v+ (vec (origin) b) (vec a d))))))
             
(axiom
 def_is_parallelogram_shape
 (a b c d)
 (<-> (is-parallelogram (square a b c d))
      (is-parallelogram a b c d)))

(axiom
  def_is_trapezoid
  (a b c d)
  (<-> (is-trapezoid a b c d)
       (&& (is-square a b c d)
           (|| (parallel (line a b) (line c d))
               (parallel (line b c) (line d a))))))

(axiom
 def_is_trapezoid_shape
 (a b c d)
 (<-> (is-trapezoid (square a b c d))
      (is-trapezoid a b c d)))

(axiom
 def_is_polygon_3d
 (ps)
 (<-> (is-polygon ps)
      (points-coplanar ps)
  )
)

;; Point -> Shape => Bool
(axiom
  def_is_vertex_of_triangle
  (p x y z)
  (<-> (is-vertex-of p (triangle x y z))
       (|| (= p x) (= p y) (= p z))))

(axiom
  def_is_vertex_of_square
  (p x y z w)
  (<-> (is-vertex-of p (square x y z w))
       (|| (= p x) (= p y) (= p z) (= p w))))

(axiom
  def_is_vertex_of_polygon
  (p ps)
  (<-> (is-vertex-of p (polygon ps))
       (member p ps)))

(axiom
  def-are-vertices-of-triangle
  (Ps A B C)
  (<-> (are-vertices-of Ps (triangle A B C))
       (is-a-permutation-of Ps (list-of A B C))))

(axiom
  def-are-vertices-of-square
  (Ps A B C D)
  (<-> (are-vertices-of Ps (square A B C D))
       ;(is-a-permutation-of Ps (list-of A B C D))))
       
       (all (PLam p (member p (list-of A B C D))) Ps)))

(axiom
  def-are-vertices-of-polygon
  (Ps Qs)
  (<-> (are-vertices-of Ps (polygon Qs))
       (is-a-permutation-of Ps Qs)))



(axiom
    def_form_triangle
    (p q r u v w)
    (<-> (form (list-of p q r)
                         (triangle u v w))
             (|| (&& (= p u) (= q v) (= r w))
                     (&& (= p u) (= q w) (= r v))
                     (&& (= p v) (= q u) (= r w))
                     (&& (= p v) (= q w) (= r u))
                     (&& (= p w) (= q u) (= r v))
                     (&& (= p w) (= q v) (= r u)))))
             ;;TMP
             ;(&& (= p u) (= q v) (= r w))))

(axiom
    def_form_triangle_by_lines
    (l1 l2 l3 u v w)
    (<-> (form-by-shapes (list-of l1 l2 l3)
                                             (triangle u v w))
             (exists (p q r)
                             (&& (intersect l1 l2 p)
                                     (intersect l2 l3 q)
                                     (intersect l3 l1 r)
                                     (form (list-of p q r)
                                                 (triangle u v w))))))

(axiom
    def_form_triangle_by_segments
    (p1 p2 q1 q2 r1 r2 u v w)
    (<-> (form-by-shapes (list-of (seg p1 p2) (seg q1 q2) (seg r1 r2)) (triangle u v w))
             (exists (S1 S2 S3)
               (&& (is-a-permutation-of (list-of (seg p1 p2) (seg q1 q2) (seg r1 r2)) (list-of S1 S2 S3))      
                   (|| (= S1 (seg u v))
                           (= S1 (seg v u)))
                   (|| (= S2 (seg u w))
                           (= S2 (seg w u)))
                   (|| (= S3 (seg v w))
                           (= S3 (seg w v)))))))
   
(axiom
 def_triangle_centroid
 (p q r)
 (= (centroid-of (triangle p q r))
    (vec->point (sv* (/ 1 3)
		     (v+ (vec (origin) p) (v+ (vec (origin) q) (vec (origin) r)))))))
;;(axiom
;;  def_area_of_triangle
;;(p q r)
;;(let* ((a (distance p q))
;;       (b (distance q r))
;;       (c (distance r p))
;;       (s (/ (+ a (+ b c)) 2)))
;;  (= (area-of (triangle p q r))
;;     (sqrt (* s (* (- s a) (* (- s b) (- s c))))))))


(axiom
  def_is_triangle
  (p q r)
  (<-> (is-triangle p q r)
       (! (colinear p q r))))

(def-pred similar-sub :: Shape -> Shape => Bool)
(axiom
	def_similar_sub_triangle
	(a b c A B C)
	(<-> (similar-sub (triangle a b c) (triangle A B C))
		(|| (&& (same-angle (angle a b c) (angle A B C))
				(|| (same-angle (angle b c a) (angle B C A))
					(same-angle (angle b c a) (angle C A B)))))))

(axiom
	def_similar_sub_square
	(a b c d A B C D)
	(<-> (similar-sub (square a b c d) (square A B C D))
		(&& (same-angle (angle d a b) (angle D A B))
			(|| (&& (same-angle (angle a b c) (angle A B C))
					(same-angle (angle c d a) (angle C D A))
					(= (* (distance^2 a b) (distance^2 A D)) (* (distance^2 a d) (distance^2 A B))))
				(&& (same-angle (angle a b c) (angle C D A))
					(same-angle (angle c d a) (angle A B C))
					(= (* (distance^2 a b) (distance^2 A B)) (* (distance^2 a d) (distance^2 A D))))))))

(axiom
	def_similar_triangle
	(a b c A B C)
	(<-> (similar (triangle a b c) (triangle A B C))
		(|| (similar-sub (triangle a b c) (triangle A B C))
			(similar-sub (triangle a b c) (triangle B C A))
			(similar-sub (triangle a b c) (triangle C A B)))))

(axiom
	def_similar_square
	(a b c d A B C D)
	(<-> (similar (square a b c d) (square A B C D))
		(|| (similar-sub (square a b c d) (square A B C D))
			(similar-sub (square a b c d) (square B C D A))
			(similar-sub (square a b c d) (square C D A B))
			(similar-sub (square a b c d) (square D A B C)))))

(axiom
	def_ordered_similar_triangle
	(a b c A B C)
	(<-> (ordered-similar (triangle a b c) (triangle A B C))
		(&& (same-angle (angle a b c) (angle A B C))
			(same-angle (angle b c a) (angle B C A)))))

(axiom
	def_ordered_similar_square
	(a b c d A B C D)
	(<-> (ordered-similar (square a b c d) (square A B C D))
		(&& (same-angle (angle d a b) (angle D A B))
			(same-angle (angle a b c) (angle A B C))
			(same-angle (angle c d a) (angle C D A))
			(= (* (distance^2 a b) (distance^2 A D)) (* (distance^2 a d) (distance^2 A B))))))

(def-pred lists-of-points-bending-in-same-way :: (ListOf Point) -> (ListOf Point) => Bool)
(def-pred lists-of-points-with-proportional-interval :: (ListOf Point) -> (ListOf Point) => Bool)

(axiom
  def_lists_of_points_with_proportional_interval
  (p0 p1 ps q0 q1 qs)
    (<-> (lists-of-points-with-proportional-interval (cons p0 (cons p1 ps)) (cons q0 (cons q1 qs)))
        (&& (= (list-len ps) (list-len qs))
            (cyclic-all
                (Lam x (Lam y (PLam z (=
                    (* (distance^2 q0 q1) (distance^2 (fst x) (fst y)))
                    (* (distance^2 p0 p1) (distance^2 (snd x) (snd y)))
                ))))
                (zip (cons p0 (cons p1 ps)) (cons q0 (cons q1 qs)))
            )
        )))

(axiom
  def_ordered_similar_polygon
  (ps qs)
    (<-> (ordered-similar (polygon ps) (polygon qs))
        (&& (lists-of-points-bending-in-same-way ps qs)
            (lists-of-points-with-proportional-interval ps qs)
        )))

;;@ ordered-similar(shape1,shape2,r1,r2) <-> shape1 and shape2 are similar in the given order of vertices with similitude ratio r1:r2
(def-pred ordered-similar :: Shape -> Shape -> R -> R => Bool)
(def-pred lists-of-points-with-proportional-interval :: (ListOf Point) -> (ListOf Point) -> R -> R => Bool)

;;p_ip_i+1 : q_iq_i+1 = pr : qr
(axiom
  def_lists_of_points_with_proportional_interval_given_ratio
  (ps qs pr qr)
    (<-> (lists-of-points-with-proportional-interval ps qs pr qr)
        (&& (= (list-len ps) (list-len qs))
            (cyclic-all
                (Lam x (Lam y (PLam z (=
                    (* (^ qr 2) (distance^2 (fst x) (fst y)))
                    (* (^ pr 2) (distance^2 (snd x) (snd y)))
                ))))
                (zip ps qs)
            )
        )))

(axiom
  def_ordered_similar_triangle_given_ratio
  (a b c A B C r1 r2)
    (<-> (ordered-similar (triangle a b c) (triangle A B C) r1 r2)
        (&& (= (* (^ r2 2) (distance^2 a b)) (* (^ r1 2) (distance^2 A B)))
            (= (* (^ r2 2) (distance^2 b c)) (* (^ r1 2) (distance^2 B C)))
            (= (* (^ r2 2) (distance^2 c a)) (* (^ r1 2) (distance^2 C A))))))

(axiom
  def_ordered_similar_square_given_ratio
  (a b c d A B C D r1 r2)
    (<-> (ordered-similar (square a b c d) (square A B C D) r1 r2)
        (&& (= (* (^ r2 2) (distance^2 a b)) (* (^ r1 2) (distance^2 A B)))
            (= (* (^ r2 2) (distance^2 b c)) (* (^ r1 2) (distance^2 B C)))
            (= (* (^ r2 2) (distance^2 c d)) (* (^ r1 2) (distance^2 C D)))
            (= (* (^ r2 2) (distance^2 d a)) (* (^ r1 2) (distance^2 D A)))
            (= (* (^ r2 2) (distance^2 a c)) (* (^ r1 2) (distance^2 A C))))))

(axiom
  def_ordered_similar_polygon_given_ratio
  (ps qs r1 r2)
    (<-> (ordered-similar (polygon ps) (polygon qs) r1 r2)
        (&& (lists-of-points-bending-in-same-way ps qs)
            (lists-of-points-with-proportional-interval ps qs r1 r2)
        )))

(def-pred congruent-sub :: Shape -> Shape => Bool)
(axiom
	def_congruent_sub_triangle
	(a b c A B C)
	(<-> (congruent-sub (triangle a b c) (triangle A B C))
		(&& (= (distance^2 a b) (distance^2 A B))
			(|| (&& (= (distance^2 b c) (distance^2 B C))
					(= (distance^2 c a) (distance^2 C A)))
				(&& (= (distance^2 b c) (distance^2 C A))
					(= (distance^2 c a) (distance^2 B C)))))))

(axiom
	def_congruent_sub_square
	(a b c d A B C D)
	(<-> (congruent-sub (square a b c d) (square A B C D))
		(&& (same-angle (angle d a b) (angle D A B))
			(|| (&& (same-angle (angle a b c) (angle A B C))
					(same-angle (angle c d a) (angle C D A))
					(= (distance^2 a b) (distance^2 A B))
					(= (distance^2 a d) (distance^2 A D)))
				(&& (same-angle (angle a b c) (angle C D A))
					(same-angle (angle c d a) (angle A B C))
					(= (distance^2 a b) (distance^2 A D))
					(= (distance^2 a d) (distance^2 A B)))))))

(axiom 
  def_congruent_arc
  (arc1 arc2)
  (<-> (congruent (arc-shape arc1) (arc-shape arc2))
       (&& (= (radius-of arc1) (radius-of arc2))
           (= (arc-central-angle arc1) (arc-central-angle arc2)))))

(axiom 
  def_congruent_circular_sector
  (sec1 sec2)
  (<-> (congruent (circular-sector-shape sec1) (circular-sector-shape sec2))
       (&& (= (radius-of sec1) (radius-of sec2))
           (= (arc-central-angle sec1) (arc-central-angle sec2)))))

(axiom
  def_congruent_circle
  (C1 C2)
  (<-> (congruent (circle-shape C1) (circle-shape C2))
      (= (radius-of C1) (radius-of C2))))

(axiom
  def_congruent_disk
  (C1 C2)
  (<-> (congruent (disk-shape C1) (disk-shape C2))
      (= (radius-of C1) (radius-of C2))))

(axiom
  def_congruent_sub_polygon
  (Ps Qs)
  (<-> (congruent-sub (polygon Ps) (polygon Qs))
       (||
         (&&
           (= (angles-of-polygon (polygon Ps)) (angles-of-polygon (polygon Qs)))
           (= (lengths-of-sides-of (polygon Ps)) (lengths-of-sides-of (polygon Qs))))
         (&&
           (= (angles-of-polygon (polygon Ps)) (angles-of-polygon (polygon (reverse-point Qs))))
           (= (lengths-of-sides-of (polygon Ps)) (lengths-of-sides-of (polygon (reverse-point Qs))))
           ))))

(axiom
	def_congruent_triangle
	(a b c A B C)
	(<-> (congruent (triangle a b c) (triangle A B C))
		(|| (congruent-sub (triangle a b c) (triangle A B C))
			(congruent-sub (triangle a b c) (triangle B C A))
			(congruent-sub (triangle a b c) (triangle C A B)))))

(axiom
	def_congruent_square
	(a b c d A B C D)
	(<-> (congruent (square a b c d) (square A B C D))
		(|| (congruent-sub (square a b c d) (square A B C D))
			(congruent-sub (square a b c d) (square B C D A))
			(congruent-sub (square a b c d) (square C D A B))
			(congruent-sub (square a b c d) (square D A B C)))))

(axiom
  def_congruent_polygon_check_nil
  (Ps Qs)
  (<-> (congruent-polygon-check (polygon Ps) (polygon Qs) 1)
       (congruent-sub (polygon Ps) (polygon (cyclic-point Qs 1)))))

(axiom
  def_congruent_polygon_check
  (Ps Qs n)
  (<-> (congruent-polygon-check (polygon Ps) (polygon Qs) n)
       (||
        (congruent-sub (polygon Ps) (polygon (cyclic-point Qs n)))
        (congruent-polygon-check (polygon Ps) (polygon Qs) (int.- n 1)))))

(axiom
  def_congruent_polygon
  (Ps Qs)
  (<-> (congruent (polygon Ps) (polygon Qs))
       (congruent-polygon-check (polygon Ps) (polygon Qs) (list-len Ps))))
          
(axiom
	def_ordered_congruent_triangle
	(a b c A B C)
	(<-> (ordered-congruent (triangle a b c) (triangle A B C))
		(&& (= (distance^2 a b) (distance^2 A B))
			(= (distance^2 b c) (distance^2 B C))
			(= (distance^2 c a) (distance^2 C A)))))

(axiom
	def_ordered_congruent_square
	(a b c d A B C D)
	(<-> (ordered-congruent (square a b c d) (square A B C D))
		(&& (= (distance^2 a b) (distance^2 A B))
			(= (distance^2 b c) (distance^2 B C))
			(= (distance^2 c d) (distance^2 C D))
			(= (distance^2 d a) (distance^2 D A))
			(= (distance^2 a c) (distance^2 A C))
			)))

(def-pred lists-of-points-with-equal-interval :: (ListOf Point) -> (ListOf Point) => Bool)

(axiom
  def_lists_of_points_with_equal_interval
  (ps qs)
    (<-> (lists-of-points-with-equal-interval ps qs)
        (&& (= (list-len ps) (list-len qs))
            (cyclic-all
                (Lam x (Lam y (PLam z (= (distance^2 (fst x) (fst y)) (distance^2 (snd x) (snd y))))))
                (zip ps qs)
            )
        )))

(axiom
  def_ordered_congruent_polygon
  (ps qs)
    (<-> (ordered-congruent (polygon ps) (polygon qs))
        (&& (lists-of-points-bending-in-same-way ps qs)
            (lists-of-points-with-equal-interval ps qs)
        )))

(axiom
	def_is_regular_polygon
	(p0 p1 p2 ps)
	(<-> (is-regular-polygon (polygon (cons p0 (cons p1 (cons p2 ps)))))
			(&& (points-coplanar (cons p0 (cons p1 (cons p2 ps))))
				(points-with-equal-interval (cons p0 (cons p1 (cons p2 ps))))
				(points-bending-by-equal-angle (cons p0 (cons p1 (cons p2 ps))))
				(points-bending-to-same-side (cons p0 (cons p1 (cons p2 ps))))
				(all (PLam p (on p (inner-part-of (divided-region-including (line p0 p1) p2)))) ps)
			)))

(axiom
	def_is_convex_shape_triangle_TORIAEZU
	(A B C)
	(<-> (is-convex-shape (triangle A B C))
			(true)))

(axiom
	def_is_convex_shape_square_TORIAEZU
	(A B C D)
	(<-> (is-convex-shape (square A B C D))
			(true)))

(axiom
	def_is_convex_shape_polygon_TORIAEZU
	(vertices)
	(<-> (is-convex-shape (polygon vertices))
			(true)))

(def-pred is-convex-shape-rec :: Shape => Bool)
(axiom
	def_is_convex_shape_rec_polygon0
	()
	(<-> (is-convex-shape-rec (polygon (nil))) (true)))
(axiom
	def_is_convex_shape_rec_polygon1
	(p0)
	(<-> (is-convex-shape-rec (polygon (cons p0 (nil)))) (true)))
(axiom
	def_is_convex_shape_rec_polygon2
	(p0 p1)
	(<-> (is-convex-shape-rec (polygon (cons p0 (cons p1 (nil))))) (true)))
(axiom
	def_is_convex_shape_rec_polygon3
	(p0 p1 p2)
	(<-> (is-convex-shape-rec (polygon (cons p2(cons p0 (cons p1 (nil)))))) (true)))
(axiom
	def_is_convex_shape_polygon_rec
	(p0 p1 p2 ps)
	(<-> (is-convex-shape (polygon (cons p0 (cons p1 (cons p2 ps)))))
			(&& (all (PLam p (on p (inner-part-of (divided-region-including (line p0 p1) p2)))) ps)
				(is-convex-shape-rec (polygon (cons p1 (cons p2 ps))))
			)))



(axiom
	def_is_convex_shape_polygon
	(vertices)
	(<-> (is-convex-shape (polygon vertices))
			(&& (points-bending-to-same-side vertices)
				(is-convex-shape-rec (polygon vertices))
			)))

;; arc :: Point -> Point -> Point => Shape ;(arc center initial_point end_point)
(axiom
	def_center_of_arc_by_three_points
	(c p q)
	(= (center-of (arc c p q)) c))
(axiom
	def_center_of_major_arc_by_three_points
	(c p q)
	(= (center-of (major-arc (arc c p q))) c))
(axiom
	def_center_of_minor_arc_by_three_points
	(c p q)
	(= (center-of (minor-arc (arc c p q))) c))

(axiom
	def_arc_by_three_points_ini_point
	(c p q)
	(= (arc-ini-point (arc c p q)) p))
(axiom
	def_major_arc_by_three_points_ini_point
	(c p q)
	(= (arc-ini-point (major-arc (arc c p q))) (arc-ini-point (arc c p q))))
(axiom
	def_minor_arc_by_three_points_ini_point
	(c p q)
	(= (arc-ini-point (minor-arc (arc c p q))) (arc-ini-point (arc c p q))))

(axiom
	def_arc_by_three_points_end_point
	(c p q)
	(= (arc-end-point (arc c p q)) q))
(axiom
	def_major_arc_by_three_points_end_point
	(c p q)
	(= (arc-end-point (major-arc (arc c p q))) (arc-end-point (arc c p q))))
(axiom
	def_minor_arc_by_three_points_end_point
	(c p q)
	(= (arc-end-point (minor-arc (arc c p q))) (arc-end-point (arc c p q))))

(axiom
	def_major_arc_by_three_arc_central_angle
	(c p q)
	(= (arc-central-angle (major-arc (arc c p q)))
		(- (* 2 (Pi)) (rad-of-angle (angle-of-vectors (vec c p) (vec c q))))))
(axiom
	def_minor_arc_by_three_arc_central_angle
	(c p q)
	(= (arc-central-angle (minor-arc (arc c p q)))
		(rad-of-angle (angle-of-vectors (vec c p) (vec c q)))))
(axiom
	def_arc_by_three_arc_central_angle
	(c p q)
	(= (arc-central-angle (arc c p q)) (arc-central-angle (minor-arc (arc c p q)))))

(axiom
	def_major_arc_by_three_points_equality
	(c1 p1 q1 c2 p2 q2)
	(<-> (= (major-arc (arc c1 p1 q1)) (major-arc (arc c2 p2 q2)))
		(&& (= c1 c2) (= p1 p2) (= q1 q2))))
(axiom
	def_minor_arc_by_three_points_equality
	(c1 p1 q1 c2 p2 q2)
	(<-> (= (minor-arc (arc c1 p1 q1)) (minor-arc (arc c2 p2 q2)))
		(&& (= c1 c2) (= p1 p2) (= q1 q2))))
(axiom
	def_arc_by_three_points_equality1
	(c1 p1 q1 shape)
	(<-> (= shape (arc c1 p1 q1)) (= (minor-arc (arc c1 p1 q1)) shape)))
(axiom
	def_arc_by_three_points_equality2
	(c1 p1 q1 shape)
	(<-> (= (arc c1 p1 q1) shape) (= shape (minor-arc (arc c1 p1 q1)))))
(axiom
	def_major_minor_arc_by_three_points_equality
	(c1 p1 q1 c2 p2 q2)
	(<-> (= (major-arc (arc c1 p1 q1)) (minor-arc (arc c2 p2 q2))) (false)))
(axiom
	def_minor_major_arc_by_three_points_equality
	(c1 p1 q1 c2 p2 q2)
	(<-> (= (minor-arc (arc c1 p1 q1)) (major-arc (arc c2 p2 q2))) (= (major-arc (arc c1 p1 q1)) (minor-arc (arc c2 p2 q2)))))

(axiom
	def_radius_of_arc_by_three_points
	(c p q)
	(= (radius-of (arc c p q)) (radius-of (arc-shape (arc c p q)))))
(axiom
	def_radius_of_major_arc_by_three_points
	(c p q)
	(= (radius-of (major-arc (arc c p q))) (radius-of (arc-shape (major-arc (arc c p q))))))
(axiom
	def_radius_of_minor_arc_by_three_points
	(c p q)
	(= (radius-of (minor-arc (arc c p q))) (radius-of (arc-shape (minor-arc (arc c p q))))))

(axiom
	def_length_of_arc_by_three_points
	(c p q)
	(= (length-of (arc c p q)) (length-of (arc-shape (arc c p q)))))
(axiom
	def_length_of_major_arc_by_three_points
	(c p q)
	(= (length-of (major-arc (arc c p q))) (length-of (arc-shape (major-arc (arc c p q))))))
(axiom
	def_length_of_minor_arc_by_three_points
	(c p q)
	(= (length-of (minor-arc (arc c p q))) (length-of (arc-shape (minor-arc (arc c p q))))))

(axiom
	def_area_of_arc_by_three_points
	(c p q)
	(= (area-of (arc c p q)) (area-of (arc-shape (arc c p q)))))
(axiom
	def_area_of_major_arc_by_three_points
	(c p q)
	(= (area-of (major-arc (arc c p q))) (area-of (arc-shape (major-arc (arc c p q))))))
(axiom
	def_area_of_minor_arc_by_three_points
	(c p q)
	(= (area-of (minor-arc (arc c p q))) (area-of (arc-shape (minor-arc (arc c p q))))))

;; attributes and predicates of arc independent from representation
(axiom
	def_radius_of_arc_shape
	(arc)
	(= (radius-of (arc-shape arc))
		(distance (center-of arc) (arc-ini-point arc))))

(axiom
	def_length_of_arc_shape
	(arc)
	(= (length-of (arc-shape arc))
		(* (radius-of arc) (arc-central-angle arc))))

(axiom
	def_area_of_arc_shape
	(arc)
	(= (area-of (arc-shape arc))
		(* (^ (radius-of arc) 2) (/ (arc-central-angle arc) 2))))

;; Point -> Arc => Bool
(axiom
  def_is_arc_node
	(p A)
	(<-> (is-arc-node p A)
			 (|| (= p (arc-ini-point A))
				   (= p (arc-end-point A)))))

; Arc => Seg
(axiom
  def_chord_of_arc
  (x)
  (= (chord-of-arc x)
     (seg (arc-ini-point x) (arc-end-point x))))

;; Arc => R
(axiom
  def_arc_inscribed_angle
  (x)
  (= (arc-inscribed-angle x)
     (/ (arc-central-angle x) 2)))

(axiom
  def_is_circular_sector_node
	(p A)
	(<-> (is-circular-sector-node p A)
			 (|| (= p (circular-sector-ini-point A))
				   (= p (circular-sector-end-point A)))))

(axiom
  def_chord_of_circular_sector
  (x)
  (= (chord-of-circular-sector x)
     (seg (circular-sector-ini-point x) (circular-sector-end-point x))))

(axiom
  def_circular_sector_inscribed_angle
  (x)
  (= (circular-sector-inscribed-angle x)
     (/ (circular-sector-central-angle x) 2)))

(axiom
  def_sides_of_circular_sector
  (s)
  (= (sides-of (circular-sector-shape s))
     (list-of (arc-of s) (seg (center-of s) (circular-sector-ini-point s)) (seg (center-of s) (circular-sector-end-point s)))))


;;-----------------------------------------------------
;; Set operations on geometric objects as point sets
;;-----------------------------------------------------
(axiom
 def_is_empty
 (shape)
 (<-> (is-empty shape)
		(forall (p) (! (on p shape)))))

(axiom
  def-empty-set
  ()
  (= (empty-set)
     (shape-of-cpfun (PLam x (false)))))

(axiom
 def_complement
 (shape)
 (= (complement shape)
		(shape-of-cpfun (PLam p (! (on p shape))))))

(axiom
 def_shape-
 (A B)
 (= (shape- A B)
		(intersection A (complement B))))

(axiom
  def_set_as_shape
  (cfun)
  (= (set-as-shape (set-by-def cfun))
     (shape-of-cpfun (PLam p (PLamApp cfun p)))))

(axiom
  def_shape_as_set
  (shape)
  (= (shape-as-set shape)
     (set-by-def (PLam p (on p shape)))))


;;------------------------------------------------------------------------------
;; test if a point is on a geometric object
;;------------------------------------------------------------------------------
(def-fun shape-common-operation :: Shape => Shape) 
(axiom
	def_point_on_common_shape
	(p shape)
	(<-> (on p (shape-common-operation shape))
		(PLamApp (char-fun-of shape) p)))

(axiom
	def_point_on_inner_part_of
	(p shape)
	(<-> (on p (inner-part-of shape))
		(on p (shape-common-operation (inner-part-of shape)))))

(axiom
	def_point_on_with_boundary
	(p shape)
	(<-> (on p (with-boundary shape))
		(on p (shape-common-operation (with-boundary shape)))))

(axiom
	def_point_on_boundary_of
	(p shape)
	(<-> (on p (boundary-of shape))
		(on p (shape-common-operation (boundary-of shape)))))

(axiom
	def_point_on_segment
	(p a b)
	(<-> (on p (seg a b))
		(on p (shape-common-operation (seg a b)))))

(axiom
  def_point_on_line
  (p a b)
  (<-> (on p (line a b))
       (colinear p a b)))

(axiom
	def_point_on_half_line
	(P Q R)
	(<-> (on P (half-line Q R))
		(on P (shape-common-operation (half-line Q R)))))

(axiom
	def_point_on_triangle
	(p P Q R)
	(<-> (on p (triangle P Q R))
		(on p (shape-common-operation (triangle P Q R)))))

(axiom
	def_point_on_square
	(p P Q R S)
	(<-> (on p (square P Q R S))
		(on p (shape-common-operation (square P Q R S)))))

(axiom
	def_point_on_polygon
	(p vertices)
	(<-> (on p (polygon vertices))
		(on p (shape-common-operation (polygon vertices)))))

(axiom
	def_point_on_circle
	(p s)
	(<-> (on p (circle-shape s))
		(on p (shape-common-operation (circle-shape s)))))

(axiom
	def_point_on_disk
	(p s)
	(<-> (on p (disk-shape s))
		(on p (shape-common-operation (disk-shape s)))))

(axiom
	def_point_on_arc_shape
	(p s)
	(<-> (on p (arc-shape s))
		(on p (shape-common-operation (arc-shape s)))))

(axiom
	def_point_on_arc_by_three_points
	(p c a b)
	(<-> (on p (arc c a b))
		(on p (arc-shape (arc c a b)))))
(axiom
	def_point_on_major_arc_by_three_points
	(p c a b)
	(<-> (on p (major-arc (arc c a b)))
		(on p (arc-shape (major-arc (arc c a b))))))
(axiom
	def_point_on_minor_arc_by_three_points
	(p c a b)
	(<-> (on p (minor-arc (arc c a b)))
		(on p (arc-shape (minor-arc (arc c a b))))))

(axiom
	def_point_on_circular_sector
	(p s)
	(<-> (on p (circular-sector-shape s))
		(on p (shape-common-operation (circular-sector-shape s)))))

(axiom
	def_on_divided_by_line_region_including
	(P p q point)
	(<-> (on P (divided-region-including (line p q) point))
		(on P (shape-common-operation (divided-region-including (line p q) point)))))

(axiom
	def_on_shape
	(point cfun)
	(<-> (on  point (shape-of-cpfun cfun))
		(PLamApp cfun point)))

;;point-inside-of
(axiom
	def_point_inside_of_common_shape
	(p shape)
	(<-> (point-inside-of p (shape-common-operation shape))
		(on p (inner-part-of shape))))

(axiom
	def_point_inside_of_triangle
	(p P Q R)
	(<-> (point-inside-of p (triangle P Q R))
		(point-inside-of p (shape-common-operation (triangle P Q R)))))

(axiom
	def_point_inside_of_square
	(p A B C D)
	(<-> (point-inside-of p (square A B C D))
		(point-inside-of p (shape-common-operation (square A B C D)))))

(axiom
	def_point_inside_of_polygon
	(p vertices)
	(<-> (point-inside-of p (polygon vertices))
		(point-inside-of p (shape-common-operation (polygon vertices)))))

(axiom
	def_point_inside_of_divided_by_line_region_including
	(P p q point)
	(<-> (point-inside-of P (divided-region-including (line p q) point))
		(point-inside-of P (shape-common-operation (divided-region-including (line p q) point)))))

(axiom
	def_point_inside_of_circle
	(p s)
	(<-> (point-inside-of p (circle-shape s))
		(point-inside-of p (shape-common-operation (circle-shape s)))))

(axiom
	def_point_inside_of_disk
	(p s)
	(<-> (point-inside-of p (disk-shape s))
		(point-inside-of p (shape-common-operation (disk-shape s)))))

(axiom
	def_point_inside_of_arc
	(p s)
	(<-> (point-inside-of p (arc-shape s))
		(point-inside-of p (shape-common-operation (arc-shape s)))))

(axiom
	def_point_inside_of_arc_by_three_points
	(p c a b)
	(<-> (point-inside-of p (arc c a b))
		(point-inside-of p (arc-shape (arc c a b)))))
(axiom
	def_point_inside_of_major_arc_by_three_points
	(p c a b)
	(<-> (point-inside-of p (major-arc (arc c a b)))
		(point-inside-of p (arc-shape (major-arc (arc c a b))))))
(axiom
	def_point_inside_of_minor_arc_by_three_points
	(p c a b)
	(<-> (point-inside-of p (minor-arc (arc c a b)))
		(point-inside-of p (arc-shape (minor-arc (arc c a b))))))

(axiom
	def_point_inside_of_circular_sector
	(p s)
	(<-> (point-inside-of p (circular-sector-shape s))
		(point-inside-of p (shape-common-operation (circular-sector-shape s)))))

(axiom
  def_point_on_intersection
  (P S0 S1)
  (<-> (on P (intersection S0 S1))
       (&& (on P S0)
           (on P S1))))

(axiom
  def_point_on_intersection_list
  (P Ss)
  (<-> (on P (intersection Ss))
       (all (PLam s (on P s)) Ss)))

(axiom
  def_point_on_union
  (P S0 S1)
  (<-> (on P (union S0 S1))
       (|| (on P S0)
           (on P S1))))

(axiom
  def_point_on_union_list
  (P Ss)
  (<-> (on P (union Ss))
       (some (PLam s (on P s)) Ss)))


;;------------------------------------------------------------------------------
;; Equalities between geometric objects
;;------------------------------------------------------------------------------

(axiom
  def_seg_equality
  (p q r s)
  (<-> (= (seg p q) (seg r s))
       (&& (! (= p q))
           (! (= r s))
           (|| (&& (= p r) (= q s))
               (&& (= p s) (= q r))))))

(axiom
  def_line_equality
  (p q r s)
  (<-> (= (line p q) (line r s))
       (&& (! (= p q))
           (! (= r s))
           (colinear p q r)
           (colinear p q s))))

(axiom
  def_half_line_equality
  (p q r s)
  (<-> (= (half-line p q) (half-line r s))
       (&& (= p r)
           (! (= p q))
           (! (= r s))
           (colinear p q r)
           (colinear p q s))))

;(axiom
;  def_triangle_equality
;  (P0 Q0 R0 P1 Q1 R1)
;  (<-> (= (triangle P0 Q0 R0) (triangle P1 Q1 R1))
;       (&& (= P0 P1)
;           (= Q0 Q1)
;           (= R0 R1))))

(axiom
  def_square_equality
  (P0 Q0 R0 S0 P1 Q1 R1 S1)
  (<-> (= (square P0 Q0 R0 S0) (square P1 Q1 R1 S1))
       
       (&& (= P0 P1)
           (= Q0 Q1)
           (= R0 R1)
           (= S0 S1))))

(axiom
  def_shape_enclosed_by_eq_something
  (boundaries S)
  (<-> (= (shape-enclosed-by boundaries) S)
       (= (shape-of-cpfun (char-fun-of (shape-enclosed-by boundaries))) S)))

(axiom
  def_polygon_equality
  (vertices1 vertices2)
  (<-> (= (polygon vertices1) (polygon vertices2))
       (= vertices1 vertices2)))
  

;;------------------------------------------------------------------------------

(axiom
    def_area_of_square
    (p q r s)
    (= (area-of (square p q r s))
         (+ (area-of (triangle p q r))
                (area-of (triangle p r s)))))

(axiom
  def_area_of_polygon_base_case
  (p0 p1 p2)
  (= (area-of (polygon (list-of p0 p1 p2)))
     (area-of (triangle p0 p1 p2))
  )
)

(axiom
  def_area_of_polygon
  (p0 p1 p2 p3 ps)
  (= (area-of (polygon (cons p0 (cons p1 (cons p2(cons p3  ps))))))
     (+ (area-of (triangle p0 p1 p2)) (area-of (polygon (cons p0 (cons p2(cons p3 ps))))))
  )
)

;;------------------------------------------------------------------------------

;;------------------------------------------------------------------------------
;; intersect
;;------------------------------------------------------------------------------
(axiom
  def_intersect_obj_segment
  (obj p q r)
  (<-> (intersect obj (seg p q) r)
       (&& (on r (seg p q))
           (on r obj))))

(axiom
  def_intersect_obj_line
  (obj p q r)
  (<-> (intersect obj (line p q) r)
       (&& (on r obj)
           (on r (line p q)))))

(axiom
  def_intersect_obj_half_line
  (obj p q r)
  (<-> (intersect obj (half-line p q) r)
       (&& (on r obj)
           (on r (half-line p q)))))

(axiom
	def_intersect/2_line_line
	(p1 p2 q1 q2)
	(<-> (intersect (line p1 p2) (line q1 q2))
		(&& (coplanar p1 p2 q1 q2)
			(! (parallel (line p1 p2) (line q1 q2)))
		)))


;;------------------------------------------------------------------------------
;; perpendicular
;;------------------------------------------------------------------------------

(axiom
  def_perpendicular_line_vs_line
  (p q r s)
  (<-> (perpendicular (line p q) (line r s))
       (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_seg_vs_seg
    (p q r s)
    (<-> (perpendicular (seg p q) (seg r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
  def_perpendicular_line_vs_seg
  (p q r s)
  (<-> (perpendicular (line p q) (seg r s))
       (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
  def_perpendicular_seg_vs_line
  (p q r s)
  (<-> (perpendicular (seg p q) (line r s))
       (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_half_line_vs_half_line
    (p q r s)
    (<-> (perpendicular (half-line p q) (half-line r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_half_line_vs_line
    (p q r s)
    (<-> (perpendicular (half-line p q) (line r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_line_vs_half_line
    (p q r s)
    (<-> (perpendicular (line p q) (half-line r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_half_line_vs_seg
    (p q r s)
    (<-> (perpendicular (half-line p q) (seg r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

(axiom
    def_perpendicular_seg_vs_half_line
    (p q r s)
    (<-> (perpendicular (seg p q) (half-line r s))
         (= 0 (inner-prod (vec p q) (vec r s)))))

;; 2016-10-10: 
;(axiom
;   def_perpendicular_seg_vs_x
;   (p q X)
;   (<-> (perpendicular (seg p q) X)
;        (exists (P Q)
;          (&& (! (= P Q))
;              (perpendicular (seg p q) (line P Q))
;              (|| (= X (seg P Q))
;                  (= X (line P Q))
;                  (= X (half-line P Q)))))))
;
;(axiom
;   def_perpendicular_line_vs_x
;   (p q X)
;   (<-> (perpendicular (line p q) X)
;        (perpendicular (seg p q) X)))
;
;(axiom
;   def_perpendicular_half_line_vs_x
;   (p q X)
;   (<-> (perpendicular (half-line p q) X)
;        (perpendicular (seg p q) X)))
;
;(axiom
;  def_perpendicular_x_vs_line
;  (p q X)
;  (<-> (perpendicular X (line p q))
;       (perpendicular (line p q) X)))
;
;(axiom
;  def_perpendicular_x_vs_seg
;  (p q X)
;  (<-> (perpendicular X (seg p q))
;       (perpendicular (seg p q) X)))
;
;(axiom
;  def_perpendicular_x_vs_half_line
;  (p q X)
;  (<-> (perpendicular X (half-line p q))
;       (perpendicular (half-line p q) X)))

;;------------------------------------------------------------------------------

(axiom
    def_length_of_segment
    (P Q)
    (= (length-of (seg P Q))
         (distance P Q)))

(axiom
    def_congruent_of_segment
    (p q r s)
    (<-> (congruent (seg p q) (seg r s))
         (= (length-of (seg p q)) (length-of (seg r s)))))


(axiom
   def-perimeter-of-triangle
   (P Q R)
   (= (length-of (triangle P Q R))
      (+ (distance P Q)
         (distance Q R)
         (distance R P))))

(axiom
   def-perimeter-of-square
   (P Q R S)
   (= (length-of (square P Q R S))
      (+ (distance P Q)
         (distance Q R)
         (distance R S)
         (distance S P))))

(axiom
   def-perimeter-of-polygon
   (Ps)
   (= (length-of (polygon Ps))
      (sum (zip-with (Lam p1 (Lam p2 (distance p1 p2)))
                     Ps
                     (cons (last Ps) Ps)))))

(axiom
   def-perimeter-of-circle
   (circle)
   (= (length-of (circle-shape circle))
      (* 2 (Pi) (radius-of circle))))

(axiom
   def-perimeter-of-disk
   (disk)
   (= (length-of (disk-shape disk))
      (* 2 (Pi) (radius-of disk))))

(axiom
   def-perimeter-of-circular-sector
   (sector)
   (= (length-of (circular-sector-shape sector))
      (+ (* 2 (radius-of sector)) (* (circular-sector-central-angle sector) (radius-of sector)))))

(axiom
    def_midpoint_of
    (P1 P2)
    (= (midpoint-of P1 P2)
       (vec->point (sv* (/ 1 2) (v+ (vec (origin) P1) (vec (origin) P2))))))

(axiom
    def_internally_dividing_point
    (P1 P2 r)
    (= (internally-dividing-point P1 P2 r)
       (vec->point (v+ (sv* (- 1 r) (vec (origin) P1)) (sv* r (vec (origin) P2))))))

(axiom
  def_point_symmetry
  (P1 P2 C)
  (<-> (point-symmetry P1 P2 C)
       (= C (midpoint-of P1 P2))))


(axiom
  def_point_symmetry_shapes_triangle_order
  (point A1 B1 C1 A2 B2 C2)
  (<-> (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle A2 B2 C2) point)
       (&&
        (point-symmetry A1 A2 point)
        (point-symmetry B1 B2 point)
        (point-symmetry C1 C2 point))))

(axiom
  def_point_symmetry_shapes_square_order
  (point A1 B1 C1 D1 A2 B2 C2 D2)
  (<-> (point-symmetry-shapes-order (square A1 B1 C1 D1) (square A2 B2 C2 D2) point)
       (&&
        (point-symmetry A1 A2 point)
        (point-symmetry B1 B2 point)
        (point-symmetry C1 C2 point)
        (point-symmetry D1 D2 point))))

(axiom
  def_point_symmetry_shapes_triangle
  (point A1 B1 C1 A2 B2 C2)
  (<-> (point-symmetry-shapes (triangle A1 B1 C1) (triangle A2 B2 C2) point)
       (||
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle A2 B2 C2) point)
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle A2 C2 B2) point)
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle B2 A2 C2) point)
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle B2 C2 A2) point)
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle C2 A2 B2) point)
        (point-symmetry-shapes-order (triangle A1 B1 C1) (triangle C2 B2 A2) point))))

(axiom
  def_point_symmetry_shapes_square
  (point A1 B1 C1 D1 A2 B2 C2 D2)
  (<-> (point-symmetry-shapes (square A1 B1 C1 D1) (square A2 B2 C2 D2) point)
       (||
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square A2 B2 C2 D2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square B2 C2 D2 A2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square C2 D2 A2 B2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square D2 A2 B2 C2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square D2 C2 B2 A2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square C2 B2 A2 D2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square B2 A2 D2 C2) point)
        (point-symmetry-shapes-order (square A1 B1 C1 D1) (square A2 D2 C2 B2) point))))



(axiom
	def_line_symmetry
	(P1 P2 l)
	(<-> (line-symmetry P1 P2 l)
		(&& (on (midpoint-of P1 P2) l)
			(perpendicular (line P1 P2) l))))

(axiom
	def_line_symmetry_shapes_line_and_line
	(p0 q0 p1 q1 p2 q2)
		(<-> (line-symmetry-shapes (line p0 q0) (line p1 q1) (line p2 q2))
				(exists (P Q)(&&
					(line-symmetry p0 P (line p2 q2))
					(line-symmetry q0 Q (line p2 q2))
					(on P (line p1 q1))
					(on Q (line p1 q1))
				))))

;(axiom
;  def_line_symmetry_shapes
;  (G1 G2 l)
;  (<-> (line-symmetry-shapes G1 G2 l)
;       (&& (forall (P)
;                   (-> (on P G1)
;                       (exists (Q)
;                               (&& (on Q G2)
;                                   (line-symmetry P Q l)))))
;           (forall (P)
;                   (-> (on P G2)
;                       (exists (Q)
;                               (&& (on Q G1)
;                                   (line-symmetry P Q l))))))))

;;------------------------------------------------------------------------------
;; sides of polygons
;;------------------------------------------------------------------------------
(axiom
  def-is-a-side-of-a-triangle
  (A B C s)
  (<-> (is-a-side-of s (triangle A B C))
       (member s (list-of (seg A B) (seg B C) (seg C A)))))

(axiom
  def-are-the-sides-of-a-triangle
  (A B C sides)
  (<-> (are-the-sides-of sides (triangle A B C))
       (is-a-permutation-of
            sides
            (list-of (seg A B) (seg B C) (seg C A)))))

(axiom
  def-is-a-side-of-a-square
  (A B C D s)
  (<-> (is-a-side-of s (square A B C D))
       (member s (list-of (seg A B) (seg B C) (seg C D) (seg D A)))))

(axiom
  def-are-the-sides-of-a-square
  (A B C D sides)
  (<-> (are-the-sides-of sides (square A B C D))
       (is-a-permutation-of
            sides
            (list-of (seg A B) (seg B C) (seg C D) (seg D A)))))

(axiom
  def-is-a-side-of-a-polygon
  (Ps s)
  (<-> (is-a-side-of s (polygon Ps))
       (member s (zip-with (Lam x (Lam y (seg x y)))
                           (cons (last Ps) Ps)
                           Ps))))

(axiom
  def-are-the-sides-of-a-polygon
  (Ps sides)
  (<-> (are-the-sides-of sides (polygon Ps))
       (is-a-permutation-of
         sides
         (zip-with (Lam x (Lam y (seg x y)))
                   (cons (last Ps) Ps)
                   Ps))))

(axiom
   def-sides-of-triangle
   (A B C)
   (= (sides-of (triangle A B C))
      (list-of (seg A B) (seg B C) (seg C A))))

(axiom
  def-sides-of-square
  (A B C D)
  (= (sides-of (square A B C D))
     (list-of (seg A B) (seg B C) (seg C D) (seg D A))))

(axiom
  def-sides-of-polygon
  (Ps)
  (= (sides-of (polygon Ps))
     (zip-with (Lam x (Lam y (seg x y)))
               (cons (last Ps) Ps)
               Ps)))

(axiom
  def-lengths-of-sides-of-butlast-polygon-nil
    (p0 p1 p2)
    (= (lengths-of-sides-of-butlast (polygon (list-of p0 p1 p2)))
       (list-of (distance p0 p1) (distance p1 p2))))

(axiom
  def-lengths-of-sides-of-butlast-polygon
    (Ps)
    (= (lengths-of-sides-of-butlast (polygon Ps))
       (cons (distance (car Ps) (car (cdr Ps))) (lengths-of-sides-of (polygon (cdr Ps))))))

(axiom
  def-lengths-of-sides-of-polygon
    (Ps)
    (= (lengths-of-sides-of (polygon Ps))
       (cons (distance (car Ps) (last Ps)) (lengths-of-sides-of-butlast (polygon Ps)))))

;;------------------------------------------------------------------------------
;; interior angles of polygons
;;------------------------------------------------------------------------------
(axiom
  def-is-interior-angle-of-a-triangle
  (a A B C)
  (<-> (is-interior-angle-of a (triangle A B C))
       (|| (= a (rad-of-angle (angle A B C)))
           (= a (rad-of-angle (angle B C A)))
           (= a (rad-of-angle (angle C A B))))))

(axiom
  def-are-interior-angles-of-a-triangle
  (as A B C)
  (<-> (are-interior-angles-of as (triangle A B C))
       (is-a-permutation-of
         as
         (list-of (rad-of-angle (angle A B C))
                  (rad-of-angle (angle B C A))
                  (rad-of-angle (angle C A B))))))


(axiom
  def-is-interior-angle-of-a-square
  (a A B C D)
  (<-> (is-interior-angle-of a (square A B C D))
       (|| (= a (rad-of-angle (angle A B C)))
           (= a (rad-of-angle (angle B C D)))
           (= a (rad-of-angle (angle C D A)))
           (= a (rad-of-angle (angle D A B))))))

(axiom
  def-are-interior-angles-of-a-square
  (as A B C D)
  (<-> (are-interior-angles-of as (square A B C D))
       (is-a-permutation-of
         as
         (list-of (rad-of-angle (angle A B C))
                  (rad-of-angle (angle B C D))
                  (rad-of-angle (angle C D A))
                  (rad-of-angle (angle D A B))))))

;;------------------------------------------------------------------------------
;; angle/distance between two lines/planes
;;------------------------------------------------------------------------------
;; lines-intersect-angle :: Shape -> Shape -> R => Bool
(axiom
  def-lines-intersect-angle-line-line
  (P Q R S a)
  (<-> (lines-intersect-angle (line P Q) (line R S) a)
       (&& (intersect (line P Q) (line R S))
					 (<= 0 (cos a))
           (= (^ (inner-prod (vec P Q) (vec R S)) 2)
                  (* (distance^2 P Q)
                     (distance^2 R S)
                     (^ (cos a) 2))))))

(axiom
  def-lines-intersect-angle-line-seg
  (P Q R S a)
  (<-> (lines-intersect-angle (line P Q) (seg R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-seg-line
  (P Q R S a)
  (<-> (lines-intersect-angle (seg P Q) (line R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-seg-seg
  (P Q R S a)
  (<-> (lines-intersect-angle (seg P Q) (seg R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-half-line-half-line
  (P Q R S a)
  (<-> (lines-intersect-angle (half-line P Q) (half-line R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-seg-half-line
  (P Q R S a)
  (<-> (lines-intersect-angle (seg P Q) (half-line R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-line-half-line
  (P Q R S a)
  (<-> (lines-intersect-angle (line P Q) (half-line R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-half-line-seg
  (P Q R S a)
  (<-> (lines-intersect-angle (half-line P Q) (seg R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def-lines-intersect-angle-half-line-line
  (P Q R S a)
  (<-> (lines-intersect-angle (half-line P Q) (line R S) a)
       (lines-intersect-angle (line P Q) (line R S) a)))

(axiom
  def_shape_shape_distance_line_line
  (p1 p2 q1 q2)
  (= (shape-shape-distance (line p1 p2) (line q1 q2))
       (line-line-distance (line p1 p2) (line q1 q2))))

(axiom
  def_shape_shape_square_distance_line_line
  (p1 p2 q1 q2)
  (= (shape-shape-distance^2 (line p1 p2) (line q1 q2))
       (line-line-distance^2 (line p1 p2) (line q1 q2))))

(axiom
  def_point_shape_distance_seg
  (p q1 q2)
  (= (point-shape-distance p (seg q1 q2))
       (if (on (foot-of-perpendicular-line-from-to p (line q1 q2)) (seg q1 q2))
           (point-shape-distance p (line q1 q2))
           (min (distance p q1) (distance p q2))
       )))

(axiom
  def_point_shape_square_distance_seg
  (p q1 q2)
  (= (point-shape-distance^2 p (seg q1 q2))
       (if (on (foot-of-perpendicular-line-from-to p (line q1 q2)) (seg q1 q2))
           (point-shape-distance^2 p (line q1 q2))
           (min (distance^2 p q1) (distance^2 p q2))
       )))


;;------------------------------------------------------------------------------
;; Similar, Congruent lines
;;------------------------------------------------------------------------------

(axiom
    def-line-line-similar
        (p q r s)
            (similar (line p q) (line r s)))

(axiom
    def-seg-seg-similar
        (p q r s)
            (similar (seg p q) (seg r s)))

(axiom
    def-half-line-half-line-similar
        (p q r s)
            (similar (half-line p q) (half-line r s)))

(axiom
    def-line-line-congruent
        (p q r s)
            (congruent (line p q) (line r s)))

(axiom
    def-half-line-half-line-congruent
        (p q r s)
            (congruent (half-line p q) (half-line r s)))

;;------------------------------------------------------------------------------
;; Base of triangle
;;------------------------------------------------------------------------------
(axiom
  def-base-of-isosceles-triangle
  (base P Q R)
  (<-> (is-base-of base (triangle P Q R))
	   (|| (&& (= base (seg P Q))
			   (= (distance^2 P R) (distance^2 Q R)))
		   (&& (= base (seg Q R))
			   (= (distance^2 Q P) (distance^2 R P)))
		   (&& (= base (seg R P))
			   (= (distance^2 R Q) (distance^2 P Q))))))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
 def-is-opposite-wrt-line
 (P Q R S)
 (<-> (is-opposite-of-wrt P Q (line R S))
      (intersect (seg P Q) (line R S))))

(axiom
 def-is-opposite-wrt-seg
 (P Q R S)
 (<-> (is-opposite-of-wrt P Q (seg R S))
      (intersect (seg P Q) (line R S))))

;;------------------------------------------------------------------------------
;; foot-of-perpendicular-line-from-to :: Point -> Line => Point
;;------------------------------------------------------------------------------
(axiom
  def-foot-of-perpendicular-line-from-to-line
  (P A B)
  (= (foot-of-perpendicular-line-from-to P (line A B))
     (let ((t (/ (inner-prod (vec A B) (vec P B))
                 (distance^2 A B))))
       (vec->point (v+ (sv* t (vec (origin) A)) (sv* (- 1 t) (vec (origin) B)))))))

(axiom
  def-foot-of-perpendicular-line-from-to-half-line
  (P A B)
  (= (foot-of-perpendicular-line-from-to P (half-line A B))
     (foot-of-perpendicular-line-from-to P (line A B))))

(axiom
  def-foot-of-perpendicular-line-from-to-seg
  (P A B)
  (= (foot-of-perpendicular-line-from-to P (seg A B))
     (foot-of-perpendicular-line-from-to P (line A B))))

;;------------------------------------------------------------------------------
;; (def-fun inner-part-of :: Shape => Shape)
;; (def-fun with-boundary :: Shape => Shape)
;; (def-fun boundary-of :: Shape => Shape)
;;------------------------------------------------------------------------------
(def-fun convex-polygon-common-operation :: Shape => Shape) 
(axiom
	def_char_fun_of_shape_of_cpfun
	(cpfun)
	(= (char-fun-of (shape-of-cpfun cpfun)) cpfun))

(axiom
	def_char_fun_of_union
	(s1 s2)
	(= (char-fun-of (union s1 s2))
		(PLam P (|| (PLamApp (char-fun-of s1) P) (PLamApp (char-fun-of s2) P)))))

(axiom
	def_char_fun_of_union_list
	(shapelist)
	(= (char-fun-of (union shapelist))
		(PLam P (some (PLam shape (PLamApp (char-fun-of shape) P)) shapelist))))

(axiom
	def_char_fun_of_intersection
	(s1 s2)
	(= (char-fun-of (intersection s1 s2))
		(PLam P (&& (PLamApp (char-fun-of s1) P) (PLamApp (char-fun-of s2) P)))))

(axiom
	def_char_fun_of_intersection_list
	(shapelist)
	(= (char-fun-of (intersection shapelist))
		(PLam P (all (PLam shape (PLamApp (char-fun-of shape) P)) shapelist))))

(axiom
	def_char_fun_of_line
	(a b)
	(= (char-fun-of (line a b))
		(PLam p (colinear p a b))))

;;inner-part-of
(axiom
	def_char_fun_of_inside_of_half_line
	(a b)
	(= (char-fun-of (inner-part-of (half-line a b)))
		(PLam p (&&
			(colinear p a b)
			(< 0 (inner-prod (vec a b) (vec a p)))
		))))

(axiom
	def_char_fun_of_inside_of_segment
	(a b)
	(= (char-fun-of (inner-part-of (seg a b)))
		(PLam p (&&
			(colinear p a b)
			(< 0 (inner-prod (vec a b) (vec a p)))
			(< 0 (inner-prod (vec b a) (vec b p)))
		))))

(axiom
	def_char_fun_of_inside_of_polygon_common
	(polygon)
	(= (char-fun-of (inner-part-of (convex-polygon-common-operation polygon)))
		(PLam p (&&
			(coplanar p (car (vertices-of polygon)) (cadr (vertices-of polygon)) (caddr (vertices-of polygon)))
			(cyclic-all
				(Lam x (Lam y (PLam z (on p (inner-part-of (divided-region-including (line x y) z))))))
				(vertices-of polygon)
			)
		))))

(axiom
	def_char_fun_of_inside_of_polygon
	(vertices)
	(= (char-fun-of (inner-part-of (polygon vertices)))
		(char-fun-of (inner-part-of (convex-polygon-common-operation (polygon vertices))))))

(axiom
	def_char_fun_of_inside_of_triangle
	(A B C)
	(= (char-fun-of (inner-part-of (triangle A B C))) 
		(char-fun-of (inner-part-of (polygon (list-of A B C))))))

(axiom
	def_char_fun_of_inside_of_square
	(A B C D)
	(= (char-fun-of (inner-part-of (square A B C D))) 
		(char-fun-of (inner-part-of (polygon (list-of A B C D))))))

(axiom
	def_char_fun_of_inside_of_circle
	(circle)
	(= (char-fun-of (inner-part-of (circle-shape circle))) 
		(PLam p (&&
			(< (distance^2 (center-of circle) p) (^ (radius-of circle) 2))
			(on p (extend-to-plane circle))
		))))
(axiom
	def_char_fun_of_inside_of_disk
	(disk)
	(= (char-fun-of (inner-part-of (disk-shape disk))) 
		(char-fun-of (inner-part-of (circle-shape disk)))))

(axiom
	def_char_fun_of_inside_of_arc
	(arc)
	(= (char-fun-of (inner-part-of (arc-shape arc)))
		(let*
			(
				(i (car (local-system-of arc)))
				(j (cadr (local-system-of arc)))
				(c (center-of arc))
				(p (arc-ini-point arc))
				(q (arc-end-point arc))
			)
			(PLam P (&&
				(on P (extend-to-plane arc))
				(! (= P c))
				(= (radius^2 (vec c P)) (radius^2 (vec c p)))
				(|| (&& (<= 0 (inner-prod j (vec c q)))
						(< 0 (inner-prod j (vec c P)))
						(< (inner-prod i (vec c q)) (inner-prod i (vec c P))))
					(&& (< (inner-prod j (vec c q)) 0)
						(|| (< 0 (inner-prod j (vec c P)))
							(&& (<= (inner-prod j (vec c P)) 0)
								(< (inner-prod i (vec c P)) (inner-prod i (vec c q)))))))
			))
		)))

(axiom
	def_char_fun_of_inside_of_circular_sector
	(sector)
	(= (char-fun-of (inner-part-of (circular-sector-shape sector)))
		(let*
			(
				(i (car (local-system-of sector)))
				(j (cadr (local-system-of sector)))
				(c (center-of sector))
				(p (circular-sector-ini-point sector))
				(q (circular-sector-end-point sector))
			)
			(PLam P (&&
				(on P (extend-to-plane sector))
				(! (= P c))
				(< (radius^2 (vec c P)) (radius^2 (vec c p)))
				(|| (&& (<= 0 (inner-prod j (vec c q)))
						(< 0 (inner-prod j (vec c P)))
                        ;; 2015-03-26: matuzaki
                        ;; to avoid zero division when P = c
						;; (< (inner-prod i (normalize (vec c q))) (inner-prod i (normalize (vec c P)))))
						(< (* (inner-prod i (vec c q)) (radius (vec c P)))
                           (* (inner-prod i (vec c P)) (radius (vec c q)))))
					(&& (< (inner-prod j (vec c q)) 0)
						(|| (< 0 (inner-prod j (vec c P)))
							(&& (<= (inner-prod j (vec c P)) 0)
                                ;; 2015-03-26: matuzaki
                                ;; to avoid zero division when P = c
								;; (< (inner-prod i (normalize (vec c P))) (inner-prod i (normalize (vec c q))))))))
								(< (* (inner-prod i (vec c P)) (radius (vec c q)))
                                   (* (inner-prod i (vec c q)) (radius (vec c P))))))))
			))
		)))

;;with-boundary
(axiom
	def_char_fun_of_half_line_with_boundary
	(a b)
	(= (char-fun-of (with-boundary (half-line a b)))
		(PLam p (&&
			(colinear p a b)
			(<= 0 (inner-prod (vec a b) (vec a p)))
		))))

(axiom
	def_char_fun_of_segment_with_boundary
	(a b)
	(= (char-fun-of (with-boundary (seg a b)))
		(PLam p (&&
			(colinear p a b)
			(<= 0 (inner-prod (vec a b) (vec a p)))
			(<= 0 (inner-prod (vec b a) (vec b p)))
		))))

(axiom
	def_char_fun_of_polygon_with_boundary_common
	(polygon)
	(= (char-fun-of (with-boundary (convex-polygon-common-operation polygon)))
		(PLam p (&&
			(coplanar p (car (vertices-of polygon)) (cadr (vertices-of polygon)) (caddr (vertices-of polygon)))
			(cyclic-all
				(Lam x (Lam y (PLam z (on p (with-boundary (divided-region-including (line x y) z))))))
				(vertices-of polygon)
			)
		))))

(axiom
	def_char_fun_of_polygon_with_boundary
	(vertices)
	(= (char-fun-of (with-boundary (polygon vertices)))
		(char-fun-of (with-boundary (convex-polygon-common-operation (polygon vertices))))))

(axiom
	def_char_fun_of_triangle_with_boundary
	(A B C)
	(= (char-fun-of (with-boundary (triangle A B C))) 
		(char-fun-of (with-boundary (polygon (list-of A B C))))))

(axiom
	def_char_fun_of_square_with_boundary
	(A B C D)
	(= (char-fun-of (with-boundary (square A B C D))) 
		(char-fun-of (with-boundary (polygon (list-of A B C D))))))

(axiom
	def_char_fun_of_circle_with_boundary
	(circle)
	(= (char-fun-of (with-boundary (circle-shape circle))) 
		(PLam p (&&
			(<= (distance^2 (center-of circle) p) (^ (radius-of circle) 2))
			(on p (extend-to-plane circle))
		))))

(axiom
	def_char_fun_of_disk_with_boundary
	(disk)
	(= (char-fun-of (with-boundary (disk-shape disk))) 
		(char-fun-of (with-boundary (circle-shape disk)))))

(axiom
	def_char_fun_of_arc_with_boundary
	(arc)
	(= (char-fun-of (with-boundary (arc-shape arc)))
		(let*
			(
				(i (car (local-system-of arc)))
				(j (cadr (local-system-of arc)))
				(c (center-of arc))
				(p (arc-ini-point arc))
				(q (arc-end-point arc))
			)
			(PLam P (&&
				(on P (extend-to-plane arc))
				(= (radius^2 (vec c P)) (radius^2 (vec c p)))
				(|| (&& (= 0 (radius^2 (vec c p))))
					(&& (<= 0 (inner-prod j (vec c q)))
						(<= 0 (inner-prod j (vec c P)))
						(<= (inner-prod i (vec c q)) (inner-prod i (vec c P))))
					(&& (< (inner-prod j (vec c q)) 0)
						(|| (<= 0 (inner-prod j (vec c P)))
							(&& (< (inner-prod j (vec c P)) 0)
								(<= (inner-prod i (vec c P)) (inner-prod i (vec c q)))))))
			))
		)))

(axiom
	def_char_fun_of_circular_sector_with_boundary
	(sector)
	(= (char-fun-of (with-boundary (circular-sector-shape sector)))
		(let*
			(
				(i (car (local-system-of sector)))
				(j (cadr (local-system-of sector)))
				(c (center-of sector))
				(p (circular-sector-ini-point sector))
				(q (circular-sector-end-point sector))
			)
			(PLam P (||
				(= P c)
				(&& (! (= P c))
					(on P (extend-to-plane sector))
					(<= (radius^2 (vec c P)) (radius^2 (vec c p)))
					(|| (&& (<= 0 (inner-prod j (vec c q)))
							(<= 0 (inner-prod j (vec c P)))
                            ;; 2015-03-26: matuzaki
                            ;; to avoid zero division when P = c
							;(<= (inner-prod i (normalize (vec c q))) (inner-prod i (normalize (vec c P)))))
							(<= (* (inner-prod i (vec c q)) (radius (vec c P)))
                                (* (inner-prod i (vec c P)) (radius (vec c q)))))
						(&& (< (inner-prod j (vec c q)) 0)
							(|| (<= 0 (inner-prod j (vec c P)))
								(&& (< (inner-prod j (vec c P)) 0)
                                    ;; 2015-03-26: matuzaki
                                    ;; to avoid zero division when P = c
									;(<= (inner-prod i (normalize (vec c P))) (inner-prod i (normalize (vec c q)))))))))
									(<= (* (inner-prod i (vec c P)) (radius (vec c q)))
                                        (* (inner-prod i (vec c q)) (radius (vec c P)))))))))
			))
		)))

;;boundary-of
(axiom
	def_char_fun_of_boundary_of_half_line
	(Q R)
	(= (char-fun-of (boundary-of (half-line Q R)))
		(PLam p (= p Q))))

(axiom
	def_char_fun_of_boundary_of_segment
	(a b)
	(= (char-fun-of (boundary-of (seg a b)))
		(PLam p (||
			(= p a)
			(= p b)
		))))

(axiom
	def_char_fun_of_boundary_of_polygon_common
	(polygon)
	(= (char-fun-of (boundary-of (convex-polygon-common-operation polygon)))
		(PLam p (&&
			(on p (with-boundary (convex-polygon-common-operation polygon)))
			(some (PLam s (on p (with-boundary (seg-extention-of s)))) (sides-of polygon))
		))))

(axiom
	def_char_fun_of_boundary_of_polygon
	(vertices)
	(= (char-fun-of (boundary-of (polygon vertices)))
		(char-fun-of (boundary-of (convex-polygon-common-operation (polygon vertices))))))

(axiom
	def_char_fun_of_boundary_of_triangle
	(A B C)
	(= (char-fun-of (boundary-of (triangle A B C))) 
		(char-fun-of (boundary-of (polygon (list-of A B C))))))

(axiom
	def_char_fun_of_boundary_of_square
	(A B C D)
	(= (char-fun-of (boundary-of (square A B C D))) 
		(char-fun-of (boundary-of (polygon (list-of A B C D))))))

(axiom
	def_char_fun_of_boundary_of_circle
	(circle)
	(= (char-fun-of (boundary-of (circle-shape circle))) 
		(PLam p (&&
			(= (distance^2 (center-of circle) p) (^ (radius-of circle) 2))
			(on p (extend-to-plane circle))
		))))

(axiom
	def_char_fun_of_boundary_of_disk
	(disk)
	(= (char-fun-of (boundary-of (disk-shape disk))) 
		(char-fun-of (boundary-of (circle-shape disk)))))

(axiom
	def_char_fun_of_boundary_of_arc
	(arc)
	(= (char-fun-of (boundary-of (arc-shape arc)))
		(PLam P (|| (= P (arc-ini-point arc)) (= P (arc-end-point arc))))))

(axiom
	def_char_fun_of_boundary_of_circular_sector
	(sector)
	(= (char-fun-of (boundary-of (circular-sector-shape sector)))
		(PLam P (some (PLam S (on P S)) (sides-of sector)))))

;;default
(axiom
	def_char_fun_of_half_line
	(Q R)
	(= (char-fun-of (half-line Q R))
		(char-fun-of (with-boundary (half-line Q R)))))

(axiom
	def_char_fun_of_segment
	(a b)
	(= (char-fun-of (seg a b))
		(char-fun-of (with-boundary (seg a b)))))

(axiom
	def_char_fun_of_triangle
	(A B C)
	(= (char-fun-of (triangle A B C))
		(char-fun-of (with-boundary (triangle A B C)))))

(axiom
	def_char_fun_of_square
	(A B C D)
	(= (char-fun-of (square A B C D))
		(char-fun-of (with-boundary (square A B C D)))))

(axiom
	def_char_fun_of_polygon
	(vertices)
	(= (char-fun-of (polygon vertices))
		(char-fun-of (with-boundary (polygon vertices)))))

(axiom
	def_char_fun_of_circle
	(circle)
	(= (char-fun-of (circle-shape circle))
		(char-fun-of (boundary-of (circle-shape circle)))))

(axiom
	def_char_fun_of_disk
	(disk)
	(= (char-fun-of (disk-shape disk))
		(char-fun-of (with-boundary (disk-shape disk)))))

(axiom
	def_char_fun_of_arc
	(arc)
	(= (char-fun-of (arc-shape arc))
		(char-fun-of (with-boundary (arc-shape arc)))))

(axiom
	def_char_fun_of_circular_sector
	(sector)
	(= (char-fun-of (circular-sector-shape sector))
		(char-fun-of (with-boundary (circular-sector-shape sector)))))

;;for polygon
(axiom
	def_opposite_vertice_of_polygon_common
	(side polygon)
	(= (opposite-vertice-of side (convex-polygon-common-operation polygon))
		(car (remove-list (vertices-of side) (vertices-of polygon)))))

(axiom
	def_opposite_vertice_of_triangle
	(side A B C)
	(= (opposite-vertice-of side (triangle A B C))
		(opposite-vertice-of side (convex-polygon-common-operation (triangle A B C)))))
(axiom
	def_opposite_vertice_of_square
	(side A B C D)
	(= (opposite-vertice-of side (square A B C D))
		(opposite-vertice-of side (convex-polygon-common-operation (square A B C D)))))
(axiom
	def_opposite_vertice_of_polygon
	(side vertices)
	(= (opposite-vertice-of side (polygon vertices))
		(opposite-vertice-of side (convex-polygon-common-operation (polygon vertices)))))

;; diagonal of polygon
(axiom
   def_is_diagonal_of_polygon
   (P Q vertices)
   (<-> (is-diagonal-of (seg P Q) (polygon vertices))
        (|| (member (pair P Q) (all-pairs vertices))
            (member (pair Q P) (all-pairs vertices)))))

(axiom
	def_inside_of_divided_by_line_region_including
	(p q point)
	(= (char-fun-of (inner-part-of (divided-region-including (line p q) point)))
		(let ((H (foot-of-perpendicular-line-from-to point (line p q))))
			(PLam P (< 0 (inner-prod (vec H P) (vec H point)))))))

(axiom
	def_divided_by_line_region_including_with_boundary
	(p q point)
	(= (char-fun-of (with-boundary (divided-region-including (line p q) point)))
		(let ((H (foot-of-perpendicular-line-from-to point (line p q))))
			(PLam P (<= 0 (inner-prod (vec H P) (vec H point)))))))

(axiom
	def_divided_by_line_region_including
	(p q point)
	(= (char-fun-of (divided-region-including (line p q) point))
		(char-fun-of (with-boundary (divided-region-including (line p q) point)))))



;;------------------------------------------------------------------------------
;; shape-inside-of, shape-outside-of
;; --> implementation by point-inside-of, point-outside-of
;;------------------------------------------------------------------------------
(axiom
 def-shape-inside-of
 (S)
 (= (shape-inside-of S)
    (shape-of-cpfun (PLam p (point-inside-of p S)))))

(axiom
 def-shape-outside-of
 (S)
 (= (shape-outside-of S)
    (shape-of-cpfun (PLam p (point-outside-of p S)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; area enclosed by curves
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-fun shape-enclosed-by-cpfun :: (ListOf (Point -> Bool)) => Shape) 
(def-fun shape-enclosed-by-within :: (ListOf (Point -> Bool)) -> (Point -> Bool) => Shape) 

(axiom
  def-shape-enclosed-by-2-shape-enclosed-by-cpfun
  (shapes)
  (= (shape-enclosed-by shapes)
     (shape-enclosed-by-cpfun (map (Lam s (PLam p (on p s))) shapes))))

;; 2015-03-31:
;; (intersection shape1 shape2) -> (set-of-cpfun (PLam p (&& (on p s1) (on p s2))))
(axiom
  def-intersection-enc-enc
  (boundaries1 boundaries2)
  (= (intersection (shape-enclosed-by-cpfun boundaries1)
                   (shape-enclosed-by-cpfun boundaries2))
     (shape-enclosed-by-within
       boundaries1
       (char-fun-of (shape-enclosed-by-cpfun boundaries2)))))

(axiom
  def-intersection-encwithin-and-other
  (boundaries shape1 shape2)
  (= (intersection (shape-enclosed-by-within boundaries shape1) shape2)
     (shape-enclosed-by-within
       boundaries
       (PLam P (&& (PLamApp shape1 P)
                   (on P shape2))))))

(axiom
  def-intersection-other-and-encwithin
  (boundaries shape1 shape2)
  (= (intersection shape1 (shape-enclosed-by-within boundaries shape2))
     (intersection (shape-enclosed-by-within boundaries shape2) shape1)))

(axiom
  def-intersection-enc-and-other
  (boundaries shape)
  (= (intersection (shape-enclosed-by-cpfun boundaries) shape)
     (shape-enclosed-by-within boundaries (char-fun-of shape))))

(axiom
  def-intersection-other-and-enc
  (boundaries shape)
  (= (intersection shape (shape-enclosed-by-cpfun boundaries))
     (intersection (shape-enclosed-by-cpfun boundaries) shape)))

(axiom
    def_on_shape_enclosed_by_cpfun
    (point boundaries)
    (<-> (on point (shape-enclosed-by-cpfun boundaries))
         (PLamApp (char-fun-of (shape-enclosed-by-cpfun boundaries)) point)))

(axiom
    def_on_shape_enclosed_by_within
    (point boundaries region)
    (<-> (on point (shape-enclosed-by-within boundaries region))
         (&& (on point (shape-enclosed-by-cpfun boundaries))
             (PLamApp region point))))

;(axiom
;  def_shape_enclosed_by_cpfun_eq_something
;  (boundaries S)
;  (<-> (= (shape-enclosed-by-cpfun boundaries) S)
;       (= (shape-of-cpfun (char-fun-of (shape-enclosed-by-cpfun boundaries))) S)))


;;------------------------------------------------------------------------------
;; rewrite intersection 
;;------------------------------------------------------------------------------
(axiom
 def-intersection-list
 (S1 S2 S3)
 (= (intersection (intersection S1 S2) S3)
    (intersection S1 (intersection S2 S3))))

(axiom
  def-intersection-n-to-intersection-list-cons
  (hd tl)
  (= (intersection (cons hd tl))
     (intersection hd (intersection tl))))

(axiom
  def-intersection-n-to-intersection-list-nil
  ()
  (= (intersection (nil))
     (shape-of-cpfun (PLam _ (true)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; typing triggers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-typing-trigger
   (half-line-type l)
   (P Q)
   (&& (= l (half-line P Q))
       (! (= P Q))))

(def-typing-trigger
    (segment-type S)
    (P Q)
    (&& (= S (seg P Q))
            (! (= P Q))))

(def-typing-trigger
   (angle-type a)
   (P Q R)
   (&& (= a (angle P Q R))
       (! (= P Q))
       (! (= R Q))))

(def-typing-trigger
  (triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-triangle P Q R)))

(def-typing-trigger
  (equilateral-triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-equilateral-triangle P Q R)))

(def-typing-trigger
  (right-triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-right-triangle P Q R)))

(def-typing-trigger
  (acute-triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-acute-triangle P Q R)))

(def-typing-trigger
  (obtuse-triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-obtuse-triangle P Q R)))

(def-typing-trigger
  (isosceles-triangle-type T)
  (P Q R)
  (&& (= T (triangle P Q R))
      (is-isosceles-triangle P Q R)))

(def-typing-trigger
  (square-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-square P Q R S)))

(def-typing-trigger
  (rectangle-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-rectangle P Q R S)))

(def-typing-trigger
  (regular-square-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-rectangle P Q R S)
      (is-rhombus P Q R S)))

(def-typing-trigger
  (regular-pentagon-type s)
  (P Q R S T)
  (&& (= s (polygon (list-of P Q R S T)))
      (is-regular-polygon (polygon (list-of P Q R S T)))))

(def-typing-trigger
  (regular-hexagon-type s)
  (P Q R S T U)
  (&& (= s (polygon (list-of P Q R S T U)))
      (is-regular-polygon (polygon (list-of P Q R S T U)))))

(def-typing-trigger
  (rhombus-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-rhombus P Q R S)))

(def-typing-trigger
  (trapezoid-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-trapezoid P Q R S)))

(def-typing-trigger
  (parallelogram-type s)
  (P Q R S)
  (&& (= s (square P Q R S))
      (is-parallelogram P Q R S)))


(axiom
  def_seg_connects_points
  (P0 Q0 P1 Q1)
  (<-> (connect (seg P0 Q0) (list-of P1 Q1))
       ;(&& (= P0 P1)
       ;   (= Q0 Q1))))
       (|| (&& (= P0 P1)
               (= Q0 Q1))
           (&& (= P0 Q1)
               (= Q0 P1)))))

;;------------------------------------------------------------------------------
;; two sides of a rectangle
;;------------------------------------------------------------------------------
(axiom
  def-two-sides-of-rectangle
  (P Q R S)
  (= (two-sides-of-rectangle (square P Q R S))
     (pair (seg P Q) (seg Q R))))

;;------------------------------------------------------------------------------
;; parallelism
;;------------------------------------------------------------------------------
(axiom
 def_parallel_line_vs_line
 (p q r s)
 (<-> (parallel (line p q) (line r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_seg_vs_seg
 (p q r s)
 (<-> (parallel (seg p q) (seg r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_seg_vs_line
 (p q r s)
 (<-> (parallel (seg p q) (line r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_line_vs_seg
 (p q r s)
 (<-> (parallel (line p q) (seg r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_line_vs_cfun
 (p q L)
 (<-> (parallel (line p q) L)
      (exists (P Q)
         (&& (! (= P Q))
             (parallel (line p q) (line P Q))
             (|| (= L (line P Q))
                 (= L (half-line P Q))
                 (= L (seg P Q)))))))
(axiom
 def_parallel_seg_vs_cfun
 (p q L)
 (<-> (parallel (seg p q) L)
      (parallel (line p q) L)))

(axiom
  def_parallel_half_line_vs_cfun
  (p q L)
  (<-> (parallel (half-line p q) L)
       (parallel (line p q) L)))

(axiom
 def_parallel_cfun_vs_line
 (p q L)
 (<-> (parallel L (line p q))
      (parallel (line p q) L)))

(axiom
 def_parallel_cfun_vs_seg
 (p q L)
 (<-> (parallel L (seg p q))
      (parallel (line p q) L)))

(axiom
 def_parallel_cfun_vs_half_line
 (p q L)
 (<-> (parallel L (half-line p q))
      (parallel (line p q) L)))

;; 2016-09-04:
;; seg != line, seg != half-line, line != half-line
(axiom
  def_seg_is_not_a_line
  (A B C D)
  (<-> (= (line A B) (seg C D))
       (false)))

(axiom
  def_seg_is_not_a_half_line
  (A B C D)
  (<-> (= (half-line A B) (seg C D))
       (false)))

(axiom
  def_line_is_not_a_half_line
  (A B C D)
  (<-> (= (line A B) (half-line C D))
       (false)))

(axiom
 def_parallel_line_vs_half_line
 (p q r s)
 (<-> (parallel (line p q) (half-line r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_half_line_vs_line
 (p q r s)
 (<-> (parallel (half-line p q) (line r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_half_line_vs_half_line
 (p q r s)
 (<-> (parallel (half-line p q) (half-line r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_half_line_vs_seg
 (p q r s)
 (<-> (parallel (half-line p q) (seg r s))
      (vec-parallel (vec p q) (vec r s))))

(axiom
 def_parallel_seg_vs_half_line
 (p q r s)
 (<-> (parallel (seg p q) (half-line r s))
      (vec-parallel (vec p q) (vec r s))))

;;------------------------------------------------------------------------------
;; tangent/2
;;------------------------------------------------------------------------------
(axiom
   def-tangent-arity2
   (C1 C2)
   (<-> (tangent C1 C2)
        (exists (P) (tangent C1 C2 P))))


;;------------------------------------------------------------------------------
;; Matrix operations
;;------------------------------------------------------------------------------
(axiom
  def-matrix-pow-0
  (m)
  (= (m^ m 0) (identity-matrix)))

(axiom
  def-matrix-pow-1
  (m)
  (= (m^ m 1) m))

(axiom
  def-matrix-pow-2
  (m)
  (= (m^ m 2) (m* m m)))

(axiom
  def-matrix-pow-3
  (m)
  (= (m^ m 3) (m* m (m* m m))))

(axiom
  def-matrix-pow-4
  (m)
  (= (m^ m 4) (m* m (m* m (m* m m)))))

(axiom
  def-matrix-pow-5
  (m)
  (= (m^ m 5) (m* m (m* m (m* m (m* m m))))))

(axiom
  def-matrix-pow-6
  (m)
  (= (m^ m 6) (m* m (m* m (m* m (m* m (m* m m)))))))

(axiom
 def-matrix-sum
 (ms)
 (= (m-sum ms)
    (foldr1 (Lam m1 (Lam m2 (m+ m1 m2))) ms)))

(axiom
 def-matrix-prod
 (ms)
 (= (m-prod ms)
    (foldr1 (Lam m1 (Lam m2 (m* m1 m2))) ms)))

(axiom
   def-is-inverse-matrix-of
   (m1 m2)
   (<-> (is-inverse-of m1 m2)
        (= (m* m1 m2) (identity-matrix))))


(axiom
   def-is-matrix
   (m)
   (is-matrix m))
;;------------------------------------------------------------------------------
;; Boundary of geometric objects
;;------------------------------------------------------------------------------
(axiom
 def-boundary-of-triangle
 (P Q R)
 (= (boundary-of (triangle P Q R))
    (union (list-of (seg P Q) (seg Q R) (seg R P)))))

(axiom
 def-boundary-of-square
 (P Q R S)
 (= (boundary-of (square P Q R S))
    (union (list-of (seg P Q) (seg Q R) (seg R S) (seg S P)))))

(def-fun boundary-of-polygon-main :: (ListOf Point) => Shape)

(axiom 
  def-boundary-of-polygon-main-basecase
  (p1 p2)
  (= (boundary-of-polygon-main (list-of p1 p2))
     (seg p1 p2)))

(axiom 
  def-boundary-of-polygon-main
  (p1 p2 p3 Ps)
  (= (boundary-of-polygon-main (cons p1 (cons p2 (cons p3 Ps))))
     (union (seg p1 p2) (boundary-of-polygon-main (cons p2 (cons p3 Ps))))))

(axiom
  def-boundary-of-polygon
  (Ps)
  (= (boundary-of (polygon Ps))
     (boundary-of-polygon-main (append Ps (list-of (car Ps))))))




;;------------------------------------------------------------------------------
;; coordinate in 1-D space
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(axiom
  def-coordinate-of
  (P)
  (= (coordinate-of P) P))


;;------------------------------------------------------------------------------
;; translation
;;------------------------------------------------------------------------------
(axiom
  def-translation-of-half-line
  (P Q v)
  (= (translate (half-line P Q) v)
     (half-line (vec-translate P v) (vec-translate Q v))))

(axiom
  def-translation-of-line
  (P Q v)
  (= (translate (line P Q) v)
     (line (vec-translate P v) (vec-translate Q v))))

(axiom
  def-translation-of-seg
  (P Q v)
  (= (translate (seg P Q) v)
     (seg (vec-translate P v) (vec-translate Q v))))

(axiom
  def-translation-of-triangle
  (P Q R v)
  (= (translate (triangle P Q R) v)
     (triangle (vec-translate P v) (vec-translate Q v) (vec-translate R v))))

(axiom
  def-translation-of-square  (P Q R S v)
  (= (translate (square P Q R S) v)
     (square (vec-translate P v) (vec-translate Q v) (vec-translate R v) (vec-translate S v))))

(axiom
  def-translation-of-polygon
  (Ps v)
  (= (translate (polygon Ps) v)
     (polygon (map (Lam p (vec-translate p v)) Ps))))

;;@----------------------------------------------------------
;;@ Axis of coordinates
;;@----------------------------------------------------------
(axiom
  def-direction-of
  (v)
  (= (direction-of (axis-along v))
     v))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
   def-eq-intersection
   (A B C)
   (<-> (= (intersection A B) C)
        (= (char-fun-of (intersection A B)) (char-fun-of C))))

(axiom
  def-end-point-of-something
  (P A)
  (<-> (is-end-point-of P A)
       (|| (exists (Q R)
                   (&& (= A (seg Q R))
                       (is-end-point-of P (seg Q R))))
           (exists (Q R)
                   (&& (= A (half-line Q R))
                       (is-end-point-of P (half-line Q R)))))))

