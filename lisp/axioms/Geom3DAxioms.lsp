(namespace 3d)

(import "axioms/Geom3DTypes.lsp")

;;@------------------------------------------------------------------------------
;;@ Overloaded concepts in 2D/3D geometry
;;@------------------------------------------------------------------------------
(include "axioms/geom-common-axioms.lsp")

;;@------------------------------------------------------------------------------
;;@ utlities
;;@------------------------------------------------------------------------------
(def-fun plane-shape :: Plane => Plane) 
(def-fun plane-figure :: Shape => Shape) 
(def-fun convex-polyhedron :: Shape => Shape) 
(def-fun solid-cone :: Shape => Shape) 
(def-fun conical-surface-shape :: Shape => Shape) 
(def-fun solid-shape :: Shape => Shape) 


(axiom
  def_cpfun_to_cfun_3d
  (pf)
  (= (shape-of-cpfun pf)
     (set-of-cfun (Lam x (Lam y (PLam z (PLamApp pf (point x y z))))))))


;;@------------------------------------------------------------------------------
;;@ Coordinates
;;@------------------------------------------------------------------------------
(axiom
  fun_x_coord_3d
  (x y z)
  (= (x-coord (point x y z)) x))

(axiom
  fun_y_coord_3d
  (x y z)
  (= (y-coord (point x y z)) y))

(axiom
  fun_z_coord_3d
  (x y z)
  (= (z-coord (point x y z)) z))

(axiom
  def-coordinate-list-of-3d
  (x y z)
  (= (coordinate-list-of (point x y z))
     (list-of x y z)))

(axiom
  fun_vec_x_coord_3d
  (x y z)
  (= (vec-x-coord (vec3d x y z)) x))

(axiom
  fun_vec_y_coord_3d
  (x y z)
  (= (vec-y-coord (vec3d x y z)) y))

(axiom
  fun_vec_z_coord_3d
  (x y z)
  (= (vec-z-coord (vec3d x y z)) z))

(axiom
   def-component-list-of-3d
   (x y z)
   (= (component-list-of (vec3d x y z))
      (list-of x y z)))

(axiom
  def_origin_3d
  ()
  (= (origin) (point 0 0 0)))

(axiom
  def_x_axis_3d
	()
	(= (x-axis) (line (origin) (point 1 0 0))))

(axiom
  def_y_axis_3d
	()
	(= (y-axis) (line (origin) (point 0 1 0))))

(axiom
  def_z_axis_3d
	()
	(= (z-axis) (line (origin) (point 0 0 1))))


;;@------------------------------------------------------------------------------
;;@ Vectors
;;@------------------------------------------------------------------------------
;; (axiom
;;   def_vector_by_elements_3d
;; 	(x y z)
;; 	(= (vec3d x y z)
;; 	   (point x y z)))

(axiom
  def_zero_vector_3d
	()
	(= (zero-vector)
		 (vec3d 0 0 0 )))

; Vec -> Vec => Bool
(axiom
  def_vec_parallel_3d
  (v w)
  (<-> (vec-parallel v w)
       (= (zero-vector) (outer-prod v w))))

(axiom
  def_vec
  (px py pz qx qy qz)
  (= (vec (point px py pz) (point qx qy qz))
     (vec3d (- qx px)
              (- qy py)
              (- qz pz))))

(axiom
 def_vector_to_point_3d
 (vx vy vz)
 (= (vec->point (vec3d vx vy vz))
    (point vx vy vz)
  )
)

(axiom
  eq_point
  (px py pz qx qy qz)
  (<-> (= (point px py pz) (point qx qy qz))
       (&& (= px qx)
          (= py qy)
          (= pz qz))))

(axiom
  eq_vector
  (px py pz qx qy qz)
  (<-> (= (vec3d px py pz) (vec3d qx qy qz))
       (&& (= px qx)
	   (= py qy)
	   (= pz qz))))


(axiom
  def_vec_sum
  (px py pz qx qy qz)
  (= (v+ (vec3d px py pz) (vec3d qx qy qz))
     (vec3d (+ px qx)
              (+ py qy)
              (+ pz qz))))

(axiom
  def_vec_diff
  (px py pz qx qy qz)
  (= (v- (vec3d px py pz) (vec3d qx qy qz))
     (vec3d (- px qx)
              (- py qy)
              (- pz qz))))

(axiom
  def_scalar_vec_prod
  (a px py pz)
  (= (sv* a (vec3d px py pz))
     (vec3d (* a px)
            (* a py)
            (* a pz))))

(axiom
  def_inner_prod_3d
  (px py pz qx qy qz)
  (= (inner-prod (vec3d px py pz) (vec3d qx qy qz))
     (+ (* px qx) (+ (* py qy) (* pz qz)))))

(axiom
 def_outer_prod_3d
 (px py pz qx qy qz)
 (= (outer-prod (vec3d px py pz) (vec3d qx qy qz))
    (vec3d (- (* py qz) (* pz qy))
           (- (* pz qx) (* px qz))
           (- (* px qy) (* py qx)))))

(axiom
  def_radius_3d_point
  (px py pz)
  (= (radius (vec3d px py pz))
     (sqrt (+ (^ px 2) (+ (^ py 2) (^ pz 2))))))
     
(axiom
  def_square_radius_3d_point
  (px py pz)
  (= (radius^2 (vec3d px py pz))
     (+ (^ px 2) (+ (^ py 2) (^ pz 2)))))

;;@------------------------------------------------------------------------------
;;@ 3x3 Matrices
;;@------------------------------------------------------------------------------
(axiom
	def_matrix_by_columns
	(a b c d e f g h i)
	(= (matrix-by-columns (vec3d a b c) (vec3d d e f) (vec3d g h i))
		(matrix
			a d g
			b e h
			c f i
		)
	))

(axiom
 def_matrix_addtion_3x3
 (a b c d e f g h i A B C D E F G H I)
 (= (m+ (matrix a b c d e f g h i)
        (matrix A B C D E F G H I))
    (matrix (+ a A) (+ b B) (+ c C) (+ d D) (+ e E) (+ f F) (+ g G) (+ h H) (+ i I))))

(axiom
 def_matrix_minus_3x3
 (a b c d e f g h i A B C D E F G H I)
 (= (m- (matrix a b c d e f g h i)
        (matrix A B C D E F G H I))
    (matrix (- a A) (- b B) (- c C) (- d D) (- e E) (- f F) (- g G) (- h H) (- i I))))

(axiom
 def_matrix_negative_3x3
 (a b c d e f g h i)
 (= (m- (matrix a b c d e f g h i))
		(matrix (- a) (- b) (- c) (- d) (- e) (- f) (- g) (- h) (- i))))

;;@ [a b c] [A B C]   [aA+bD+cG aB+bE+cH aC+bF+cI]
;;@ [d e f] [D E F] = [dA+eD+fG dB+eE+fH dC+eF+fI]
;;@ [g h i] [G H I]   [gA+hD+iG gB+hE+iH gC+hF+iI]
(axiom
 def_matrix_times_3x3
 (a b c d e f g h i A B C D E F G H I)
 (= (m* (matrix a b c d e f g h i)
        (matrix A B C D E F G H I))
    (matrix (+ (+ (* a A) (* b D)) (* c G)) (+ (+ (* a B) (* b E)) (* c H)) (+ (+ (* a C) (* b F)) (* c I))
            (+ (+ (* d A) (* e D)) (* f G)) (+ (+ (* d B) (* e E)) (* f H)) (+ (+ (* d C) (* e F)) (* f I))
            (+ (+ (* g A) (* h D)) (* i G)) (+ (+ (* g B) (* h E)) (* i H)) (+ (+ (* g C) (* h F)) (* i I))
    )))

(axiom
 def_matrix_scalar_mult_3x3
 (s a b c d e f g h i)
 (= (sm* s (matrix a b c d e f g h i))
    (matrix (* s a) (* s b) (* s c) (* s d) (* s e) (* s f) (* s g) (* s h) (* s i))))

(axiom
 def_matrix_vec_mult_3x3
 (a b c d e f g h i x y z)
 (= (mv* (matrix a b c d e f g h i) (vec3d x y z))
    (vec3d (+ (+ (* a x) (* b y)) (* c z))
           (+ (+ (* d x) (* e y)) (* f z))
           (+ (+ (* g x) (* h y)) (* i z))
    )))

(axiom
  def_identity_matrix_3x3
  ()
  (= (identity-matrix)
     (matrix 1 0 0
             0 1 0
             0 0 1)))

(axiom
  def_zero_matrix_3x3
  ()
  (= (zero-matrix)
     (matrix 0 0 0 0 0 0 0 0 0)))

(axiom
	def_det
	(a b c d e f g h i)
	(= (det (matrix a b c d e f g h i))
		(sum (list-of
			(* (* a e) i) (* (* b f) g) (* (* c d) h)
			(- (* (* c e) g)) (- (* (* b d) i)) (- (* (* a f) h))
		))
	))

(axiom
	def_is_non_singular
	(a b c d e f g h i)
	(<-> (is-non-singular (matrix a b c d e f g h i))
		(! (= 0 (det (matrix a b c d e f g h i))))))

;(axiom
;  def_inverse_of
;  (a b c d e f g h i)
;  (= (inverse-of (matrix a b c d e f g h i))
;     ))

(axiom
  def_is_inverse_of
  (M N)
  (<-> (is-inverse-of M N)
       (= (m* M N) (identity-matrix))))

(axiom
  def_matrix_equality
  (a b c d e f g h i A B C D E F G H I)
  (<-> (= (matrix a b c d e f g h i) (matrix A B C D E F G H I))
       (&& (= a A) (= b B) (= c C)
           (= d D) (= e E) (= f F)
           (= g G) (= h H) (= i I)
       )))

(axiom
	def_transposed_matrix
	(a b c d e f g h i)
	(= (transposed-matrix (matrix a b c d e f g h i))
	(matrix
		a d g
		b e h
		c f i
	)))

(axiom
 def_orthogonal_matrix
 (M)
 (<-> (is-orthogonal-matrix M)
      (= (identity-matrix)
	 (m* M (transposed-matrix M)))))


;;@------------------------------------------------------------------------------
;;@ Operations & relations on geomtric figures
;;@------------------------------------------------------------------------------
(axiom
	def_translate_general_3d
	(v m s1 s2)
	(<-> (translate s1 v m s2)
		(= s2 (shape-of-cpfun (PLam p (PLamApp (char-fun-of s1) (vec-translate p (sv* (/ m (radius v)) v))))))))

(axiom
  def_mat_shape*_line
	(M p q)
	(= (mat-shape* M (line p q))
	   (line (vec->point (mv* M (vec (origin) p))) (vec->point (mv* M (vec (origin) q))))))

(axiom
	def_mat_shape*_general
	(M S)
	(= (mat-shape* M S)
	   (shape-of-cpfun (PLam p (exists (q) (&& 
						(on q S)
						(= p (vec->point (mv* M (vec (origin) q))))
						))))))

(axiom
	def_congruent_3d
	(shape1 shape2)
	(<-> (congruent shape1 shape2)
		(exists (a b c d e f g h i s t r u) (&&
			(is-inverse-of (matrix a b c d e f g h i) (transposed-matrix (matrix a b c d e f g h i)))
			(translate (mat-shape* (matrix a b c d e f g h i) shape1) (vec3d s t r) u shape2)
		))))

(axiom
	def_similar_3d
	(shape1 shape2)
	(<-> (similar shape1 shape2)
		(exists (a b c d e f g h i s t r u) (&&
            
			;(is-non-singular (matrix a b c d e f g h i))
			(is-inverse-of (matrix a b c d e f g h i) (transposed-matrix (matrix a b c d e f g h i)))
			(translate (mat-shape* (matrix a b c d e f g h i) shape1) (vec3d s t r) u shape2)
		))))


;;@------------------------------------------------------------------------------
;;@ Lines
;;@------------------------------------------------------------------------------
;; parametric form: (x y z) = t * (a b c) + (p q r)
; line3d :: R -> R -> R -> R -> R -> R => Shape)
(def-typing-trigger
  (line-type l)
  
  ;(a b c p q r)
  ;(&& (= l (line3d a b c p q r))
  ;    (! (&& (= a 0)
  ;           (= b 0)
  ;           (= c 0)))))
  (P Q)
  (&& (= l (line P Q))
      (! (= P Q))))

(axiom
	def_line3d
	(a b c p q r)
	(= (line3d a b c p q r)
		(line (point p q r) (vec->point (v+ (vec (origin) (point a b c)) (vec (origin) (point p q r)))))))

(def-typing-trigger
  (line3d-type L)
  (a b c d e f)
  (&& (= L (line3d a b c d e f))
      (! (&& (= a 0)
             (= b 0)
             (= c 0)))))

(axiom
  def_line3d_eq
  (s1 t1 u1 p1 q1 r1
   s2 t2 u2 p2 q2 r2)
  (<-> (= (line3d s1 t1 u1 p1 q1 r1)
          (line3d s2 t2 u2 p2 q2 r2))
       (&& (= (vec3d 0 0 0) (outer-prod (vec3d s1 t1 u1)
					(vec3d s2 t2 u2)))
	   (= (vec3d 0 0 0) (outer-prod (vec3d s1 t1 u1)
					(v- (vec3d p1 q1 r1)
					    (vec3d p2 q2 r2)))))))
(axiom
  def_line3d_eq_obj
  (s t u p q r obj)
  (<-> (= (line3d s t u p q r) obj)
       (forall (P)
               (<-> (on P (line3d s t u p q r))
                    (on P obj)))))
(axiom
  def_obj_eq_line3d
  (s t u p q r obj)
  (<-> (= obj (line3d s t u p q r))
       (forall (P)
               (<-> (on P (line3d s t u p q r))
                    (on P obj)))))

(axiom
	def_are_skew_lines
	(P Q R S)
	(<-> (are-skew-lines (line P Q) (line R S))
		(is-tetrahedron P Q R S)))


;;@------------------------------------------------------------------------------
;;@ Planes
;;@------------------------------------------------------------------------------
;; => Plane
(axiom
  def_xy_plane
	()
	(= (xy-plane)
		 (plane1 (origin) (point 1 0 0) (point 0 1 0))))

;; => Plane
(axiom
  def_yz_plane
	()
	(= (yz-plane)
		 (plane1 (origin) (point 0 1 0) (point 0 0 1))))

(axiom
  def_zx_plane
	()
	(= (zx-plane)
		 (plane1 (origin) (point 1 0 0) (point 0 0 1))))

;; parametric form of a 3D-plane: sx + ty + uz = v
; plane-type :: Shape => Bool)
(def-typing-trigger
  (plane-type P)
  (s t u v)
  (&& (= P (plane s t u v))
      (! (&& (= 0 s)
             (= 0 t)
             (= 0 u)))))
       ;(negate (drs () (= 0 (+ (^ s 2) (+ (^ t 2) (^ u 2))))))))

(def-typing-trigger
  (plane1-type p)
  (P Q R)
  (&& (= p (plane1 P Q R))
      (is-plane P Q R)))

(def-typing-trigger
  (plane2-type p)
  (P V)
  (&& (= p (plane2 P V))
      (! (= V (zero-vector)))))

(axiom
	def_is_plane_by_three_points
	(P Q R)
	(<-> (is-plane P Q R)
		(!(colinear P Q R))
	)
)

(axiom
	def_is_plane_by_point_normal
	(P V)
	(<-> (is-plane P V)
		(!(= V (zero-vector)))
	)
)

;(axiom
;	def_parametric_form_to_plane_by_three_points
;	(s t u v)
;	(= (plane1 (plane s t u v))
;		(if (= s 0) 
;			(if (= t 0)
;				(plane1 (point 0 0 (/ v u)) (point 1 0 (/ v u)) (point 0 1 (/ v u)))
;				(if (= u 0)
;					(plane1 (point 0 (/ v t) 0) (point 1 (/ v t) 0) (point 0 (/ v t) 1))
;					(plane1 (point 0 (/ v t) 0) (point 0 0 (/ v u)) (point 1 0 (/ v u)))))
;			(if (= t 0)
;				(if (= u 0)
;					(plane1 (point (/ v s) 0 0) (point (/ v s) 1 0) (point (/ v s) 0 1))
;					(plane1 (point 0 0 (/ v u)) (point (/ v s) 0 0) (point (/ v s) 1 0)))
;				(if (= u 0)
;					(plane1 (point (/ v s) 0 0) (point 0 (/ v t) 0) (point 0 (/ v t) 1))
;					(plane1 (point (/ v s) 0 0) (point 0 (/ v t) 0) (point 0 0 (/ v u)))))
;		)))

(axiom
	def_plane_by_three_points_to_parametric_form
	(P Q R)
	(= (plane (plane1 P Q R))
		(plane (plane2 (plane1 P Q R)))))

(axiom
	def_plane_by_three_points_to_point_normal
	(P Q R)
	(= (plane2 (plane1 P Q R))
		(plane2 P (outer-prod (vec P Q) (vec P R)))))

(axiom
	def_plane_by_point_normal_to_parametric_form
	(P V)
	(= (plane (plane2 P V))
		(perpendicular-plane-including P (line P (vec-translate P V)))))

(axiom
	def_plane_equality1
	(A U B V)
	(<-> (= (plane2 A U) (plane2 B V))
		(&& (vec-parallel U V)
			(= 0 (inner-prod U (vec A B))))))

(axiom
	def_plane_equality2
	(a b c d s t u v)
	(<-> (= (plane a b c d) (plane s t u v))
		(&& (vec-parallel (vec3d a b c) (vec3d s t u))
			(= (zero-vector) (v- (sv* d (vec3d s t u)) (sv* v (vec3d a b c)))))))

(axiom
	def_plane_equality3
	(A B C plane)
	(<-> (= (plane1 A B C) plane)
		(= (plane2 (plane1 A B C)) plane)))

;(axiom
;	def_plane_equality4
;	(s t u v p)
;	(<-> (= (plane s t u v) p)
;		(= (plane s t u v) (plane p))))
(axiom
	def_plane_equality4_1
	(s t u v P Q R)
	(<-> (= (plane s t u v) (plane1 P Q R))
         (= (plane s t u v) (plane (plane1 P Q R)))))
(axiom
	def_plane_equality4_2
	(s t u v P n)
	(<-> (= (plane s t u v) (plane2 P n))
         (= (plane s t u v) (plane (plane2 P n)))))
(axiom
	def_plane_equality4_3
	(s t u v P Q R)
	(<-> (= (plane s t u v) (plane2 (plane1 P Q R)))
         (= (plane s t u v) (plane (plane1 P Q R)))))

(axiom
	def_plane_equality5
	(P V q)
	(<-> (= (plane2 P V) q)
		(= q (plane2 P V))))

(axiom
	def_determine_plane_by_three_points
	(p q r s t u v)
	(<-> (determine (list-of p q r)
			(plane s t u v))
	     (let ((n (outer-prod (vec p q) (vec p r))))
	       (&& (is-triangle p q r)
		   (= s (vec-x-coord n))
		   (= t (vec-y-coord n))
		   (= u (vec-z-coord n))
		   (= v (inner-prod (vec (origin) p) n))))))

(axiom
	def_is_normal_vector_of_plane_shape
	(v plane)
	(<-> (is-normal-vector-of v (plane-shape plane))
		(&& (! (= v (zero-vector)))
		    (perpendicular (line (origin) (point (vec-x-coord v) (vec-y-coord v) (vec-z-coord v))) (plane-shape plane)))))

(axiom
	def_is_normal_vector_of_plane
	(v a b c d)
	(<-> (is-normal-vector-of v (plane a b c d))
	     (is-normal-vector-of v (plane-shape (plane a b c d)))))
(axiom
	def_is_normal_vector_of_plane1
	(v P Q R)
	(<-> (is-normal-vector-of v (plane1 P Q R))
	     (is-normal-vector-of v (plane-shape (plane1 P Q R)))))
(axiom
	def_is_normal_vector_of_plane2
	(v P V)
	(<-> (is-normal-vector-of v (plane2 P V))
		(is-normal-vector-of v (plane-shape (plane2 P V)))))

(axiom
	def_normal_vector_of_general_call
	(p)
	(= (normal-vector-of (plane-shape p))
		(normal-vector-of p)))


(axiom
	def_normal_vector_of_parametric_form_plane
	(s t u v)
	(= (normal-vector-of (plane s t u v))
		(vec3d s t u)))

(axiom
	def_normal_vector_of_plane_by_three_points
	(P Q R)
	(= (normal-vector-of (plane1 P Q R))
		(outer-prod (vec P Q) (vec P R))))

(axiom
	def_normal_vector_of_plane_by_point_normal
	(P V)
	(= (normal-vector-of (plane2 P V)) V))

(axiom
	def_normal_vector_to_plane
	(s t u v point)
	(= (normal-vector-to (plane s t u v) point)
	   (sv* (/ (+ (inner-prod (vec3d (x-coord point) (y-coord point) (z-coord point)) (vec3d s t u)) (- v)) (radius^2 (vec3d s t u))) (vec3d s t u)))
	)

(axiom
	def_normal_vector_to_plane_shape
	(plane point)
	(= (normal-vector-to (plane-shape plane) point)
		(let ((n (normal-vector-of plane)))
			(sv* (/ 1 (radius^2 n)) (sv* (inner-prod n (vec (a-point-on plane) point)) n)))))

(axiom
	def_normal_vector_to_plane1
	(P Q R point)
	(= (normal-vector-to (plane1 P Q R) point)
		(normal-vector-to (plane-shape (plane1 P Q R)) point)))

(axiom
	def_normal_vector_to_plane2
	(P V point)
	(= (normal-vector-to (plane2 P V) point)
		(normal-vector-to (plane-shape (plane2 P V)) point)))

(axiom
	def_a_point_on_parametric_form_plane
	(s t u v)
	(= (a-point-on (plane s t u v))
	   (vec->point (sv* (./ v (radius^2 (vec3d s t u))) (vec3d s t u)))))

(axiom
	def_a_point_on_plane_by_three_points
	(P Q R)
	;(= (a-point-on (plane1 P Q R)) P))
	(= (a-point-on (plane1 P Q R))
       (a-point-on (plane (plane1 P Q R)))))

(axiom
	def_a_point_on_plane_by_point_normal
	(P V)
	;(= (a-point-on (plane2 P V)) P))
	(= (a-point-on (plane2 P V))
       (a-point-on (plane (plane2 P V)))))

(axiom
	def_perpendicular_plane_including
	(P Q R)
	(= (perpendicular-plane-including R (line P Q))
	   (let ((n (vec P Q)))
	     (plane (vec-x-coord n) (vec-y-coord n) (vec-z-coord n) (inner-prod (vec (origin) R) n))
	     )
	)
)

(axiom
	def_extend_triangle_to_plane
	(A B C)
	(= (extend-to-plane (triangle A B C))
		(plane1 A B C)))

(axiom
	def_extend_square_to_plane
	(A B C D)
	(= (extend-to-plane (square A B C D))
		(plane1 A B C)))

(axiom
	def_extend_polygon_to_plane
	(A B C ps)
	(= (extend-to-plane (polygon (cons A (cons B (cons C ps)))))
		(plane1 A B C)))

(axiom
	def_extend_circle_to_plane
	(c r n)
	(= (extend-to-plane (circle c r n))
		(plane2 c n)))

(axiom
	def_extend_disk_to_plane
	(c r n)
	(= (extend-to-plane (disk c r n))
		(plane2 c n)))

(axiom
	def_extend_arc_to_plane
	(c p a n)
	(= (extend-to-plane (arc c p a n))
		(plane2 c n)))

(axiom
	def_extend_arc_by_three_points_to_plane
	(c p q)
	(= (extend-to-plane (arc c p q))
		(plane1 c p q)))
(axiom
	def_extend_major_arc_by_three_points_to_plane
	(c p q)
	(= (extend-to-plane (major-arc (arc c p q))) (extend-to-plane (arc c p q))))
(axiom
	def_extend_minor_arc_by_three_points_to_plane
	(c p q)
	(= (extend-to-plane (minor-arc (arc c p q))) (extend-to-plane (arc c p q))))

(axiom
	def_extend_circular_sector_to_plane
	(c p a n)
	(= (extend-to-plane (circular-sector c p a n))
		(plane2 c n)))

(axiom
	def_foot_of_perpendicular_line_from_to
	(point plane)
	(= (foot-of-perpendicular-line-from-to point plane)
	   (vec->point (v- (vec (origin) point) (normal-vector-to plane point)))))


(axiom
  def_plane_symmetry_point
  (P Q H)
	(<-> (plane-symmetry P Q H)
		 (&& (on (midpoint-of P Q) H)
			 (perpendicular (line P Q) H))))


;;@------------------------------------------------------------------------------
;;@ Angle between lines and planes
;;@------------------------------------------------------------------------------
(axiom
	def_cos_of_angle_line_plane
	(a b P)
	(= (cos-of-angle (formed-angle-of (line a b) (plane-shape P)))
		(sin-of-angle (angle-of-vectors (vec a b) (normal-vector-of P)))
	))

(axiom
	def_cos_of_angle_planes
	(P1 P2)
	(= (cos-of-angle (formed-angle-of (plane-shape P1) (plane-shape P2)))
		(max
			(cos-of-angle (angle-of-vectors (normal-vector-of P1) (normal-vector-of P2)))
			(cos-of-angle (angle-of-vectors (sv* -1 (normal-vector-of P1)) (normal-vector-of P2)))
		)))

(axiom
	def_cos_of_angle_plane
	(S s t u v)
	(= (cos-of-angle (formed-angle-of S (plane s t u v)))
		(cos-of-angle (formed-angle-of S (plane-shape (plane s t u v))))))
(axiom
	def_cos_of_angle_plane1
	(S P Q R)
	(= (cos-of-angle (formed-angle-of S (plane1 P Q R)))
		(cos-of-angle (formed-angle-of S (plane-shape (plane1 P Q R))))))
(axiom
	def_cos_of_angle_plane2
	(S P V)
	(= (cos-of-angle (formed-angle-of S (plane2 P V)))
		(cos-of-angle (formed-angle-of S (plane-shape (plane2 P V))))))
(axiom
	def_cos_of_angle_symmetry
	(S P)
	(= (cos-of-angle (formed-angle-of S (plane-shape P)))
		(cos-of-angle (formed-angle-of (plane-shape P) S))))


;;@------------------------------------------------------------------------------
;;@ Parallelism between planes and their subsets
;;@------------------------------------------------------------------------------
(axiom
	def_plane_parallel_implement
	(p q)
	(<-> (parallel (plane-shape p) (plane-shape q))
		(vec-parallel (normal-vector-of (plane-shape p)) (normal-vector-of (plane-shape q)))))

(axiom
	def_plane_parallel1
	(A B C q)
	(<-> (parallel (plane1 A B C) q)
		(parallel (plane-shape (plane1 A B C)) q)))

(axiom
	def_plane_parallel2
	(P V q)
	(<-> (parallel (plane2 P V) q)
		(parallel (plane-shape (plane2 P V)) q)))

(axiom
	def_plane_parallel3
	(s t u v q)
	(<-> (parallel (plane s t u v) q)
		(parallel (plane-shape (plane s t u v)) q)))

(axiom
	def_plane_parallel4
	(p q)
	(<-> (parallel (plane-shape p) q)
		(parallel q (plane-shape p))))

(axiom
	def_triangle_parallel
	(P Q R p)
	(<-> (parallel (triangle P Q R) p)
		(parallel (plane-shape (extend-to-plane (triangle P Q R))) p)))

(axiom
	def_square_parallel
	(P Q R S p)
	(<-> (parallel (square P Q R S) p)
		(parallel (plane-shape (extend-to-plane (square P Q R S))) p)))

(axiom
	def_disk_parallel
	(c r n p)
	(<-> (parallel (disk c r n) p)
		(parallel (plane-shape (extend-to-plane (disk c r n))) p)))


;;@------------------------------------------------------------------------------
;;@ 3D Geometric objects
;;@------------------------------------------------------------------------------
; tetrahedron-type :: Shape => Bool)
(def-typing-trigger
  (tetrahedron-type T)
  (A B C D)
  (&& (= T (tetrahedron A B C D))
      (is-tetrahedron A B C D)))

; sphere-type :: Shape => Bool)
(def-typing-trigger
  (sphere-type S)
  (x y z r)
  (&& (= S (sphere (point x y z) r))
      (< 0 r)))

(def-typing-trigger
  (cuboid-type T)
  (A B C D E F G H)
  (&& (= T (cuboid A B C D E F G H))
      (is-rectangular-parallelopiped A B C D E F G H)))

(def-typing-trigger
  (cube-type T)
  (A B C D E F G H)
  (&& (= T (cube A B C D E F G H))
      (is-cube A B C D E F G H)))

(axiom
  def_is_square_pyramid
  (o a b c d)
  (<-> (is-square-pyramid o a b c d)
       (&& (is-triangle o a b)
          (is-triangle o b c)
          (is-triangle o c d)
          (is-triangle o d a)
          (is-square a b c d))))

(def-typing-trigger
  (square-pyramid-type T)
  (O A B C D)
  (&& (= T (square-pyramid O A B C D))
      (is-square-pyramid O A B C D)))

(def-typing-trigger
  (octahedron-type T)
  (A B C D E F)
  (&& (= T (octahedron A B C D E F))
      (is-octahedron A B C D E F)))

;; ayashii
;(axiom
;  def_is_square
;  (a b c d)
;  (<-> (is-square a b c d)
;       (&& (is-triangle a b c)
;          (is-triangle a c d)
;          (is-triangle a b d)
;          (is-triangle b c d))))

(axiom
  def_unit_sphere
	()
	(= (unit-sphere)
		 (sphere (origin) 1)))

(axiom
  def_is_sphere
  (S)
  (<-> (is-sphere S)
       (exists (p r)
               (&& (< 0 r)
                  (= S (sphere p r))))))

(axiom
  def_is_diameter_of_sphere
	(p q c r)
	(<-> (is-diameter-of (seg p q) (sphere c r))
			 (&& (on p (sphere c r))
					 (on q (sphere c r))
					 (on c (seg p q)))))
(axiom
  def_is_diameter_of_disk
  (c r n A B)
  (<-> (is-diameter-of (seg A B) (disk c r n))
       (&& (on A (circle c r n))
           (on B (circle c r n))
           (= c (midpoint-of A B)))))

(axiom
  def_is_tetrahedron
  (A B C D)
  (<-> (is-tetrahedron A B C D)
       (&& (is-triangle A B C)
          (!(on D (extend-to-plane (triangle A B C)))))))

(axiom
  def_tetrahedron_equality
  (A1 B1 C1 D1
   A2 B2 C2 D2)
  (<-> (= (tetrahedron A1 B1 C1 D1)
          (tetrahedron A2 B2 C2 D2))
       
       (&& (= A1 A2)
           (= B1 B2)
           (= C1 C2)
           (= D1 D2))))

(axiom
  def_is_regular_tetrahedron
  (A B C D)
  (<-> (is-regular-tetrahedron A B C D)
       (&& (is-tetrahedron A B C D)
          (= (distance^2 A B) (distance^2 A C))
          (= (distance^2 A B) (distance^2 A D))
          (= (distance^2 A B) (distance^2 B C))
          (= (distance^2 A B) (distance^2 C D))
          (= (distance^2 A B) (distance^2 D B)))))

(axiom
  def_is_regular_tetrahedron/1
  (A B C D)
  (<-> (is-regular-tetrahedron (tetrahedron A B C D))
       (is-regular-tetrahedron A B C D)))

(axiom
  def_triangle_pyramid_is_regular_tetrahedron
  (A B C D)
  (<-> (is-regular-tetrahedron (pyramid (triangle A B C) D))
       (is-regular-tetrahedron A B C D)))

(axiom
  def_triangle_pyramid_is_regular_tetrahedron2
  (A B C D)
  (<-> (is-regular-tetrahedron (pyramid (polygon (list-of A B C)) D))
       (is-regular-tetrahedron A B C D)))

(axiom
 def_is_parallelopiped
 (A B C D E F G H)
 (<-> (is-parallelopiped A B C D
                         E F G H)
      (&& (is-tetrahedron A B D E)
          (= (vec C B) (vec A D))
          (= (vec H D) (vec A E))
          (= (vec F E) (vec A B))
          (= (vec G C) (vec A E))
      )))

(axiom
 def_is_rectangular_parallelopiped
 (A B C D E F G H)
 (<-> (is-rectangular-parallelopiped A B C D
                                      E F G H)
      (&& (is-parallelopiped A B C D E F G H)
          (perpendicular (line A B) (line A D))
          (perpendicular (line A D) (line A E))
          (perpendicular (line A E) (line A B))
      )))

(axiom
 def_is_cuboid
 (A B C D E F G H)
 (<-> (is-cuboid A B C D E F G H) (is-rectangular-parallelopiped A B C D E F G H)))

(axiom
 def_is_cube
 (A B C D E F G H)
 (<-> (is-cube A B C D
               E F G H)
      (&& (is-cuboid A B C D E F G H)
          (= (distance^2 A B) (distance^2 A D))
          (= (distance^2 A B) (distance^2 A E))
      )))

(axiom
  def_is_octahedron
  (P A B C D Q)
  (<-> (is-octahedron P A B C D Q)
       
       (&& (is-tetrahedron P A B D)
           (is-tetrahedron P B C D)
           (is-tetrahedron Q A B D)
           (is-tetrahedron Q B C D)
           (intersect (seg A C) (extend-to-plane (triangle P B D)))
           (intersect (seg P Q) (extend-to-plane (triangle B C D))))))

(axiom
  def_is_regular_octahedron
  (P A B C D Q)
  (<-> (is-regular-octahedron P A B C D Q)
       (&& (is-octahedron P A B C D Q)
           (is-equilateral-triangle P A B)
           (is-equilateral-triangle P B C)
           (is-equilateral-triangle P C D)
           (is-equilateral-triangle P D A)
           (is-equilateral-triangle Q A B)
           (is-equilateral-triangle Q C D))))

(axiom
  def_is_regular_octahedron/1
  (P A B C D Q)
  (<-> (is-regular-octahedron (octahedron P A B C D Q))
       (is-regular-octahedron P A B C D Q)))

(axiom
  def_center_of_sphere
  (C r)
  (= (center-of (sphere C r))
     C))

(axiom
  def_radius_of_sphere
  (C r)
  (= (radius-of (sphere C r))
     r))


;;kudou

(def-typing-trigger
  (cone-type C)
  ( c r n P )
  (&& (= C (cone (disk c r n) P))
;      (vec-parallel n (vec c P))
      (! (= 0 (inner-prod (vec c P) n)))
  )
)

(def-typing-trigger
  (right-cone-type C)
  ( c r n P )
  ;(&& (!(on C (disk c r n)))
  ;    (vec-parallel n (vec c P))
  (&& (= C (right-cone (disk c r n) P))
      (vec-parallel n (vec c P))
  )
)

(def-typing-trigger
  (cylinder-type C)
  (c1 r1 n1 c2 r2 n2)
  (&& (= C (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
      (vec-parallel n1 (vec c1 c2))
      (= r1 r2)
      (!(= 0 (distance c1 c2)))
  )
)

(axiom
 def_is_pyramid_3d
 (ps p)
 (<-> (is-pyramid (polygon ps) p)
      (is-tetrahedron p (car ps) (car (cdr ps)) (car (cdr (cdr ps))) )
  )
)

(def-typing-trigger
  (pyramid-type P)
  (ps p)
  (&& (= P (pyramid (polygon ps) p))
      (is-pyramid (polygon ps) p)
  )
)


(def-typing-trigger
  (prism-type P)
  (ps h)
  (&& (= P (prism (polygon ps) h))
      (is-polygon ps)
      (! (= h (zero-vector)))))


;;@------------------------------------------------------------------------------
;;@ 2D-objects in 3D-space
;;@------------------------------------------------------------------------------
(axiom
  def_area_of_triangle3d
  (p q r)
  (= (area-of (triangle p q r))
     (* (/ 1 2) (radius (outer-prod (vec p q) (vec p r))))))


(def-typing-trigger
  (circle-type C)
  (x y z r nx ny nz)
  (&& (= C (circle (point x y z) r (vec3d nx ny nz)))
      (< 0 r)
      (! (= (vec3d nx ny nz) (zero-vector)))))
(axiom
  def_center_of_circle_3d
  (c r n)
  (= (center-of (circle c r n))
     c))

(axiom
  def_radius_of_circle_3d
  (c r n)
  (= (radius-of (circle c r n))
     r))

(axiom
  def_normal_vector_of_circle_3d
  (c r n)
  (= (normal-vector-of (circle c r n))
     n))

(axiom
  def_circle_equality
  (c1 r1 n1 c2 r2 n2)
  (<-> (= (circle c1 r1 n1) (circle c2 r2 n2))
       (&& (= c1 c2)
           (= r1 r2)
           (vec-parallel n1 n2))))

(def-typing-trigger
  (disk-type D)
  (x y z r nx ny nz)
  (&& (= D (disk (point x y z) r (vec3d nx ny nz)))
      (< 0 r)
      (! (= (vec3d nx ny nz) (zero-vector)))))

(axiom
  def_center_of_disk_3d
  (c r n)
  (= (center-of (disk c r n))
     c))

(axiom
  def_radius_of_disk_3d
  (c r n)
  (= (radius-of (disk c r n))
     r))

(axiom
  def_disk_equality
  (c1 r1 n1 c2 r2 n2)
  (<-> (= (disk c1 r1 n1) (disk c2 r2 n2))
       (&& (= c1 c2)
           (= r1 r2)
           (vec-parallel n1 n2))))

(axiom
  def_area_of_disk_3d
  (c r n)
  (= (area-of (disk c r n))
     (* (Pi) (^ r 2))))

(axiom
  def_normal_vec_of_disk_3d
  (c r n)
  (= (normal-vector-of (disk c r n))
     n))

(axiom
	def_line_inside_of_plane
	(p q P)
	(<-> (inside-of (line p q) (plane-shape P))
		(&& (on p P)
			(on q P)
		)))

(def-typing-trigger
  (arc-type A)
  (c p a n)
  (&& (= A (arc c p a n))
      (! (= (vec c p) (zero-vector)))
      (! (= n (zero-vector)))
      (&& (<= 0 a) (< a (* 2 (Pi))))
      (= 0 (inner-prod (vec c p) n))))

(axiom
  def_center_of_arc_3d
  (c p a n)
  (= (center-of (arc c p a n)) c))

(axiom
  def_arc_ini_point_3d
  (c p a n)
  (= (arc-ini-point (arc c p a n)) p))

(axiom
	def_arc_end_point_3d
	(c p a n1)
	(= (arc-end-point (arc c p a n1))
		(let*
			(
				(i (normalize (vec c p)))
				(n (normalize n1))
				(j (outer-prod n i))
				(M (matrix-by-columns i j n))
				(T (matrix (cos a) (- (sin a)) 0 (sin a) (cos a) 0 0 0 1))
				(P (vec->point (mv* M (mv* T (mv* (transposed-matrix M) (vec c p))))))
			)
			(point (+ (x-coord c) (x-coord P)) (+ (y-coord c) (y-coord P)) (+ (z-coord c) (z-coord P)))
		)))

(axiom
  def_arc_central_angle_3d
  (c p a n)
  (= (arc-central-angle (arc c p a n)) a))

(axiom
  def_arc_normal_vector_of
  (c p a n)
  (= (normal-vector-of (arc c p a n)) n))

(axiom
  def_arc_by_three_points_normal_vector_of
  (c p q)
  (= (normal-vector-of (arc c p q))
      (outer-prod (vec c p) (vec c q))))

(axiom
  def_major_arc_by_three_points_normal_vector_of
  (c p q)
  (= (normal-vector-of (major-arc (arc c p q))) (normal-vector-of (arc c p q))))

(axiom
  def_minor_arc_by_three_points_normal_vector_of
  (c p q)
  (= (normal-vector-of (minor-arc (arc c p q))) (normal-vector-of (arc c p q))))

(axiom
  def_radius_of_arc_3d
  (c p a n)
  (= (radius-of (arc c p a n)) (radius-of (arc-shape (arc c p a n)))))

(axiom
	def_length_of_arc_3d
	(c p a n)
	(= (length-of (arc c p a n)) (length-of (arc-shape (arc c p a n)))))

(axiom
	def_area_of_arc_3d
	(c p a n)
	(= (area-of (arc c p a n)) (area-of (arc-shape (arc c p a n)))))

(axiom
	def_arc_equality_3d
	(c1 p1 a1 n1 c2 p2 a2 n2)
	(<-> (= (arc c1 p1 a1 n1) (arc c2 p2 a2 n2))
		(&&
			(= c1 c2)
			(= p1 p2)
			(= a1 a2)
			(vec-parallel n1 n2)
		)))

(axiom
  def_local_system_of_arc_3d
  (c p a n)
  (= (local-system-of (arc c p a n))
     (let*
       (
         (i (normalize (vec c (arc-ini-point (arc c p a n)))))
         (k (normalize n))
         (j (outer-prod k i))
       )
       (list-of i j k))))

(axiom
  def_local_system_of_minor_arc_by_three_points_3d
  (c p q)
  (= (local-system-of (minor-arc (arc c p q)))
     (let*
       (
         (i (normalize (vec c p)))
         (j (normalize (v+ (vec c q) (sv* (- (inner-prod (vec c q) i)) i))))
         (k (outer-prod i j))
       )
       (list-of i j k))))

(axiom
  def_local_system_of_major_arc_by_three_points_3d
  (c p q)
  (= (local-system-of (major-arc (arc c p q)))
     (let*
       (
         (i (normalize (vec c p)))
         (j (normalize (sv* -1 (v+ (vec c q) (sv* (- (inner-prod (vec c q) i)) i)))))
         (k (outer-prod i j))
       )
       (list-of i j k))))

(axiom
  def_local_system_of_arc_by_three_points_3d
  (c p q)
  (= (local-system-of (arc c p q))
     (local-system-of (minor-arc (arc c p q)))))

(def-typing-trigger
  (circular-sector-type A)
  (c p a n)
  (&& (= A (circular-sector c p a n))
      (! (= (vec c p) (zero-vector)))
      (! (= n (zero-vector)))
      (&& (<= 0 a) (< a (* 2 (Pi))))
      (= 0 (inner-prod (vec c p) n))))

(axiom
  def_center_of_circular_sector_3d
  (c p a n)
  (= (center-of (circular-sector c p a n)) c))

(axiom
  def_circular_sector_ini_point_3d
  (c p a n)
  (= (circular-sector-ini-point (circular-sector c p a n)) p))

(axiom
	def_circular_sector_end_point_3d
	(c p a n1)
	(= (circular-sector-end-point (circular-sector c p a n1))
		(arc-end-point (arc c p a n1))))

(axiom
  def_circular_sector_central_angle_3d
  (c p a n)
  (= (circular-sector-central-angle (circular-sector c p a n)) a))

(axiom
  def_circular_sector_normal_vector_of
  (c p a n)
  (= (normal-vector-of (circular-sector c p a n)) n))

(axiom
  def_radius_of_circular_sector_3d
  (c p a n)
  (= (radius-of (circular-sector c p a n)) (distance c p)))

(axiom
	def_area_of_circular_sector_3d
	(c p a n)
	(= (area-of (circular-sector c p a n))
		(area-of (arc c p a n))))

(axiom
	def_circular_sector_equality_3d
	(c1 p1 a1 n1 c2 p2 a2 n2)
	(<-> (= (circular-sector c1 p1 a1 n1) (circular-sector c2 p2 a2 n2))
		(&&
			(= c1 c2)
			(= p1 p2)
			(= a1 a2)
			(vec-parallel n1 n2)
		)))

(axiom
 def_arc_of_circular_sector_3d
 (c p a n)
 (= (arc-of (circular-sector c p a n))
    (arc c p a n)))

(axiom
  def_sides_of_circular_sector_3d
  (c p a n)
  (= (sides-of (circular-sector c p a n))
     (sides-of (circular-sector-shape (circular-sector c p a n)))))

(axiom
  def_local_system_of_circular_sector_3d
  (c p a n)
  (= (local-system-of (circular-sector c p a n))
     (local-system-of (arc c p a n))))



(axiom
	def_coplanar_3d
	(p0 p1 p2 p3)
	(<-> (coplanar p0 p1 p2 p3)
		(vec-perpendicular (outer-prod (vec p0 p1) (vec p0 p2)) (vec p0 p3))))

(axiom
	def_points_coplanar_3d_base_case0
	()
	(<-> (points-coplanar (nil)) (true)))
(axiom
	def_points_coplanar_3d_base_case1
	(p0)
	(<-> (points-coplanar (list-of p0)) (true)))
(axiom
	def_points_coplanar_3d_base_case2
	(p0 p1)
	(<-> (points-coplanar (list-of p0 p1)) (true)))
(axiom
	def_points_coplanar_3d_base_case3
	(p0 p1 p2)
	(<-> (points-coplanar (list-of p0 p1 p2)) (true)))

(axiom
	def_points_coplanar_3d
	(p0 p1 p2 p3 ps)
	(<-> (points-coplanar (cons p0 (cons p1 (cons p2(cons p3  ps)))))
		(&& (coplanar p0 p1 p2 p3)
			(points-coplanar (cons p0 (cons p1 (cons p2 ps))))
		)))

(axiom
	def_points_bending_to_same_side_3d
	(p0 p1 ps)
	(<-> (points-bending-to-same-side (cons p0 (cons p1 ps)))
		(&& (points-coplanar (cons p0 (cons p1 ps)))
			(cyclic-all
				(Lam x (Lam y (PLam z (< 0 (inner-prod (outer-prod (vec p0 (last ps)) (vec p0 p1)) (outer-prod (vec y x) (vec y z)))))))
				(cons p0 (cons p1 ps))
			)
		)))

(def-typing-trigger
  (polygon-type P)
  (ps)
  (&& (= P (polygon ps))
      (is-polygon ps)))

(axiom
	def_plane_figure_inside_of_plane
	(S P)
	(<-> (inside-of (plane-figure S) (plane-shape P))
		(= (extend-to-plane S) P)))

(axiom
	def_shape_inside_of_plane
	(S s t u v)
	(<-> (inside-of S (plane s t u v))
		(inside-of S (plane-shape (plane s t u v)))))
(axiom
	def_shape_inside_of_plane1
	(S P Q R)
	(<-> (inside-of S (plane1 P Q R))
		(inside-of S (plane-shape (plane1 P Q R)))))
(axiom
	def_shape_inside_of_plane2
	(S P V)
	(<-> (inside-of S (plane2 P V))
		(inside-of S (plane-shape (plane2 P V)))))
(axiom
	def_triangle_inside_of_plane
	(p q r P)
	(<-> (inside-of (triangle p q r) (plane-shape P))
		(inside-of (plane-figure (triangle p q r)) (plane-shape P))))
(axiom
	def_square_inside_of_plane
	(p q r s P)
	(<-> (inside-of (square p q r s) (plane-shape P))
		(inside-of (plane-figure (square p q r s)) (plane-shape P))))
(axiom
	def_circle_inside_of_plane
	(c r n P)
	(<-> (inside-of (circle c r n) (plane-shape P))
		(inside-of (plane-figure (circle c r n)) (plane-shape P))))
(axiom
	def_disk_inside_of_plane
	(c r n P)
	(<-> (inside-of (disk c r n) (plane-shape P))
		(inside-of (plane-figure (disk c r n)) (plane-shape P))))


;;@------------------------------------------------------------------------------
;;@ Distance
;;@------------------------------------------------------------------------------
(axiom
  def_distance_square_3d
  (px py pz qx qy qz)
  (= (distance^2 (point px py pz) (point qx qy qz))
     (+ (^ (- px qx) 2)
        (+ (^ (- py qy) 2)
           (^ (- pz qz) 2)))))

(axiom
  def_distance_3d
  (px py pz qx qy qz)
  (= (distance (point px py pz) (point qx qy qz))
     (sqrt (+ (^ (- px qx) 2)
              (+ (^ (- py qy) 2)
                 (^ (- pz qz) 2))))))

;; point-shape-distance
(axiom
 def_point_shape_distance_line
 (P A B)
 (= (point-shape-distance P (line A B))
		(/ (radius (outer-prod (vec A B) (vec A P)))
			 (distance A B))))

(axiom
	def_point_shape_distance_plane
	(x y z s t u v)
	(= (point-shape-distance (point x y z) (plane s t u v))
		(/ (abs (+ (+ (+ (* s x) (* t y)) (* u z)) v))
			 (radius (vec3d s t u)))))

(axiom
	def_point_shape_distance_plane1
	(P A B C)
	(= (point-shape-distance P (plane1 A B C))
		(radius (normal-vector-to (plane1 A B C) P))))

(axiom
	def_point_shape_distance_plane2
	(P A n)
	(= (point-shape-distance P (plane2 A n))
		(radius (normal-vector-to (plane2 A n) P))))

(axiom
 def_point_shape_square_distance_line_3d
 (P A B)
 (= (point-shape-distance^2 P (line A B))
		(/ (radius^2 (outer-prod (vec A B) (vec A P)))
			 (distance^2 A B))))

(axiom
	def_point_shape_square_distance_plane
	(x y z s t u v)
	(= (point-shape-distance^2 (point x y z) (plane s t u v))
		(/ (^ (+ (+ (+ (* s x) (* t y)) (* u z)) v) 2)
			 (radius^2 (vec3d s t u)))))

(axiom
	def_point_shape_square_distance_plane1
	(P A B C)
	(= (point-shape-distance^2 P (plane1 A B C))
		(radius^2 (normal-vector-to (plane1 A B C) P))))

(axiom
	def_point_shape_square_distance_plane2
	(P A n)
	(= (point-shape-distance^2 P (plane2 A n))
		(radius^2 (normal-vector-to (plane2 A n) P))))

(axiom
	def_distance_between_parallel_planes
	(P Q)
	(= (distance-between-parallel-planes (plane-shape P) (plane-shape Q))
		(radius (normal-vector-to Q (a-point-on P)))))

(axiom
	def_square_distance_between_parallel_planes
	(P Q)
	(= (distance^2-between-parallel-planes (plane-shape P) (plane-shape Q))
		(radius^2 (normal-vector-to Q (a-point-on P)))))

(axiom
	def_distance_between_parallel_planes_plane
	(P s t u v)
	(= (distance-between-parallel-planes P (plane s t u v))
		(distance-between-parallel-planes P (plane-shape (plane s t u v)))))
(axiom
	def_distance_between_parallel_planes_plane1
	(P p q r)
	(= (distance-between-parallel-planes P (plane1 p q r))
		(distance-between-parallel-planes P (plane-shape (plane1 p q r)))))
(axiom
	def_distance_between_parallel_planes_plane2
	(P p v)
	(= (distance-between-parallel-planes P (plane2 p v))
		(distance-between-parallel-planes P (plane-shape (plane2 p v)))))
(axiom
	def_distance_between_parallel_planes_symmetry
	(P Q)
	(= (distance-between-parallel-planes P (plane-shape Q))
		(distance-between-parallel-planes (plane-shape Q) P)))
(axiom
	def_square_distance_between_parallel_planes_plane
	(P s t u v)
	(= (distance^2-between-parallel-planes P (plane s t u v))
		(distance^2-between-parallel-planes P (plane-shape (plane s t u v)))))
(axiom
	def_square_distance_between_parallel_planes_plane1
	(P p q r)
	(= (distance^2-between-parallel-planes P (plane1 p q r))
		(distance^2-between-parallel-planes P (plane-shape (plane1 p q r)))))
(axiom
	def_square_distance_between_parallel_planes_plane2
	(P p v)
	(= (distance^2-between-parallel-planes P (plane2 p v))
		(distance^2-between-parallel-planes P (plane-shape (plane2 p v)))))
(axiom
	def_square_distance_between_parallel_planes_symmetry
	(P Q)
	(= (distance^2-between-parallel-planes P (plane-shape Q))
		(distance^2-between-parallel-planes (plane-shape Q) P)))

(axiom
	def_line_line_distance_3d
	(p1 p2 q1 q2)
	(= (line-line-distance (line p1 p2) (line q1 q2))
		(if (parallel (line p1 p2) (line q1 q2))
			(point-shape-distance p1 (line q1 q2))
			(point-shape-distance p1 (plane1 q1 q2 (vec-translate q1 (vec p1 p2))))
		)))

(axiom
	def_line_line_square_distance_3d
	(p1 p2 q1 q2)
	(= (line-line-distance^2 (line p1 p2) (line q1 q2))
		(if (parallel (line p1 p2) (line q1 q2))
			(point-shape-distance^2 p1 (line q1 q2))
			(point-shape-distance^2 p1 (plane1 q1 q2 (vec-translate q1 (vec p1 p2))))
		)))

(axiom
	def_line_plane_distance
	(p1 p2 plane)
	(= (shape-shape-distance (line p1 p2) (plane-shape plane))
		(if (intersect (line p1 p2) (plane-shape plane))
			0
			(point-shape-distance p1 plane)
		)
	))

(axiom
	def_line_plane_square_distance
	(p1 p2 plane)
	(= (shape-shape-distance^2 (line p1 p2) (plane-shape plane))
		(if (intersect (line p1 p2) (plane-shape plane))
			0
			(point-shape-distance^2 p1 plane)
		)
	))

(axiom
	def_plane_plane_distance
	(plane1 plane2)
	(= (shape-shape-distance (plane-shape plane1) (plane-shape plane2))
		(if (parallel (plane-shape plane1) (plane-shape plane2))
			(distance-between-parallel-planes (plane-shape plane1) (plane-shape plane2))
			0
		)
	))

(axiom
	def_plane_plane_square_distance
	(plane1 plane2)
	(= (shape-shape-distance^2 (plane-shape plane1) (plane-shape plane2))
		(if (parallel (plane-shape plane1) (plane-shape plane2))
			(distance^2-between-parallel-planes (plane-shape plane1) (plane-shape plane2))
			0
		)
	))

(axiom
	def_shape_plane_distance
	(shape s t u v)
	(= (shape-shape-distance shape (plane s t u v)) (shape-shape-distance shape (plane-shape (plane s t u v)))))
(axiom
	def_shape_plane1_distance
	(shape p q r)
	(= (shape-shape-distance shape (plane1 p q r)) (shape-shape-distance shape (plane-shape (plane1 p q r)))))
(axiom
	def_shape_plane2_distance
	(shape p v)
	(= (shape-shape-distance shape (plane2 p v)) (shape-shape-distance shape (plane-shape (plane2 p v)))))
(axiom
	def_plane_shape_distance
	(shape s t u v)
	(= (shape-shape-distance (plane s t u v) shape) (shape-shape-distance shape (plane-shape (plane s t u v)))))
(axiom
	def_plane1_shape_distance
	(shape p q r)
	(= (shape-shape-distance (plane1 p q r) shape) (shape-shape-distance shape (plane-shape (plane1 p q r)))))
(axiom
	def_plane2_shape_distance
	(shape p v)
	(= (shape-shape-distance (plane2 p v) shape) (shape-shape-distance shape (plane-shape (plane2 p v)))))
(axiom
	def_shape_plane_square_distance
	(shape s t u v)
	(= (shape-shape-distance^2 shape (plane s t u v)) (shape-shape-distance^2 shape (plane-shape (plane s t u v)))))
(axiom
	def_shape_plane1_square_distance
	(shape p q r)
	(= (shape-shape-distance^2 shape (plane1 p q r)) (shape-shape-distance^2 shape (plane-shape (plane1 p q r)))))
(axiom
	def_shape_plane2_square_distance
	(shape p v)
	(= (shape-shape-distance^2 shape (plane2 p v)) (shape-shape-distance^2 shape (plane-shape (plane2 p v)))))
(axiom
	def_plane_shape_square_distance
	(shape s t u v)
	(= (shape-shape-distance^2 (plane s t u v) shape) (shape-shape-distance^2 shape (plane-shape (plane s t u v)))))
(axiom
	def_plane1_shape_square_distance
	(shape p q r)
	(= (shape-shape-distance^2 (plane1 p q r) shape) (shape-shape-distance^2 shape (plane-shape (plane1 p q r)))))
(axiom
	def_plane2_shape_square_distance
	(shape p v)
	(= (shape-shape-distance^2 (plane2 p v) shape) (shape-shape-distance^2 shape (plane-shape (plane2 p v)))))

;;@------------------------------------------------------------------------------
;;@ Relations between geometric objects
;;@------------------------------------------------------------------------------
(axiom
  def_tangent_line_and_sphere
  (p q c r P)
  (<-> (tangent (line p q)
               (sphere c r)
               P)
      (&& (on P (line p q))
           (perpendicular (line c P) (line p q))
           (= (distance^2 P c) (^ r 2)))))

(axiom
  def_tangent_sphere_and_line
  (c r p q P)
  (<-> (tangent (sphere c r) (line p q) P)
			 (tangent (line p q) (sphere c r) P)
       ))

(axiom
  def_tangent_seg_and_sphere
  (c r p q P)
  (<-> (tangent (seg p q) (sphere c r) P)
       (&& (tangent (line p q) (sphere c r) P)
           (on P (seg p q)))))

(axiom
  def_tangent_sphere_and_seg
  (c r p q P)
  (<-> (tangent (sphere c r) (seg p q) P)
       (tangent (seg p q) (sphere c r) P)))


(axiom
  def_tangent_plane_and_sphere
  (s t u v c r P)
  (<-> (tangent (plane s t u v)
               (sphere c r)
               P)
      (&& (on P (plane s t u v))
				 (= (distance^2 P c) (^ r 2))
				 (perpendicular (line c P) (plane s t u v))
			)))

(axiom
  def_tangent_sphere_and_plane
  (c r s t u v P)
  (<-> (tangent (sphere c r) (plane s t u v) P)
			 (tangent (plane s t u v) (sphere c r) P)
       ))


(axiom
  def_tangent_sphere_and_sphere
  (c r C R P)
  (<-> (tangent (sphere c r) (sphere C R) P)
       (&& (on P (sphere c r))
           (on P (sphere C R))
           (colinear C c P))))

(axiom
	def_tangent_line_and_circle
	(p q c r n P)
	(<-> (tangent (line p q) (circle c r n) P)
		(&& (on P (line p q))
			(on P (circle c r n))
			(perpendicular (line c P) (line p q))
		)))

(axiom
	def_tangent_circle_and_line
	(p q c r n P)
	(<-> (tangent (circle c r n) (line p q) P)
		(tangent (line p q) (circle c r n) P)))

(axiom
	def_perpendicular_line_vs_plane_shape
	(p q plane)
	(<-> (perpendicular (line p q) (plane-shape plane))
		(vec-parallel (vec p q) (normal-vector-of plane))))

(axiom
	def_perpendicular_line_vs_plane1
	(p q P Q R)
	(<-> (perpendicular (line p q) (plane1 P Q R))
		(&& (vec-perpendicular (vec p q) (vec P Q))
			(vec-perpendicular (vec p q) (vec P R)))))

(axiom
	def_perpendicular_plane_shape_vs_line
	(p q plane)
	(<-> (perpendicular (plane-shape plane) (line p q))
		(perpendicular (line p q) (plane-shape plane))))
(axiom
	def_perpendicular_plane1_vs_line
	(p q P Q R)
	(<-> (perpendicular (plane1 P Q R) (line p q))
		(perpendicular (line p q) (plane1 P Q R))))

(axiom
	def_perpendicular_line_vs_plane
	(p q a b c d)
	(<-> (perpendicular (line p q) (plane a b c d))
		(perpendicular (line p q) (plane-shape (plane a b c d)))))
(axiom
	def_perpendicular_line_vs_plane2
	(p q P V)
	(<-> (perpendicular (line p q) (plane2 P V))
		(perpendicular (line p q) (plane-shape (plane2 P V)))))
(axiom
	def_perpendicular_plane_vs_line
	(p q a b c d)
	(<-> (perpendicular (plane a b c d) (line p q))
		(perpendicular (line p q) (plane-shape (plane a b c d)))))
(axiom
	def_perpendicular_plane2_vs_line
	(p q P V)
	(<-> (perpendicular (plane2 P V) (line p q))
		(perpendicular (line p q) (plane-shape (plane2 P V)))))

(axiom
 def_perpendicular_line3d_vs_plane
 (a b c p q r s t u v)
 (<-> (perpendicular (line3d a b c p q r) (plane s t u v))
      (= (vec3d 0 0 0) (outer-prod (vec3d a b c) (vec3d s t u)))))

(axiom
 def_perpendicular_plane_vs_line3d
 (a b c p q r s t u v)
 (<-> (perpendicular (plane s t u v) (line3d a b c p q r))
      (perpendicular (line3d a b c p q r) (plane s t u v))))

(axiom
	def_intersect/2_line_plane_shape
	(p1 p2 plane)
	(<-> (intersect (line p1 p2) (plane-shape plane))
		(|| (inside-of (line p1 p2) (plane-shape plane))
			(! (vec-perpendicular (vec p1 p2) (normal-vector-of (plane-shape plane)))
		))))

(axiom
	def_intersect/2_line_plane
	(p1 p2 s t u v)
	(<-> (intersect (line p1 p2) (plane s t u v)) (intersect (line p1 p2) (plane-shape (plane s t u v)))))
(axiom
	def_intersect/2_line_plane1
	(p1 p2 p q r)
	(<-> (intersect (line p1 p2) (plane1 p q r)) (intersect (line p1 p2) (plane-shape (plane1 p q r)))))
(axiom
	def_intersect/2_line_plane2
	(p1 p2 p v)
	(<-> (intersect (line p1 p2) (plane2 p v)) (intersect (line p1 p2) (plane-shape (plane2 p v)))))
(axiom
	def_intersect/2_plane_line
	(p1 p2 s t u v)
	(<-> (intersect (plane s t u v) (line p1 p2)) (intersect (line p1 p2) (plane-shape (plane s t u v)))))
(axiom
	def_intersect/2_plane1_line
	(p1 p2 p q r)
	(<-> (intersect (plane1 p q r) (line p1 p2)) (intersect (line p1 p2) (plane-shape (plane1 p q r)))))
(axiom
	def_intersect/2_plane2_line
	(p1 p2 p v)
	(<-> (intersect (plane2 p v) (line p1 p2)) (intersect (line p1 p2) (plane-shape (plane2 p v)))))

;; intersect/2 -> intersect/3
(axiom
  def_intersect/2_to_/3_3d
  (S T)
  (<-> (intersect S T)
       (exists (P) (intersect S T P))))

;; default
(axiom
  def_intersect_obj_vs_obj_3d
  (A B P)
  (<-> (intersect A B P)
       (&& (on P A)
          (on P B))))


;;@------------------------------------------------------------------------------
;;@ inscribed-in/circumscribed-about
;;@------------------------------------------------------------------------------
(axiom
	def_circle_is_inscribed_in_triangle_3d
	(c r n A B C)
	(<-> (is-inscribed-in (circle c r n) (triangle A B C))
		(&& (is-incenter-of c (triangle A B C))
			(= (^ r 2) (point-shape-distance^2 c (line A B)))
			(vec-parallel n (normal-vector-of (plane1 A B C)))
		)))

(axiom
	def_circle_is_inscribed_in_square_3d
	(c r n A B C D)
	(<-> (is-inscribed-in (circle c r n) (square A B C D))
		(is-inscribed-in (circle c r n) (polygon (list-of A B C D)))))

(axiom
	def_circle_is_inscribed_in_polygon_3d
	(c r n ps)
	(<-> (is-inscribed-in (circle c r n) (polygon ps))
		(&& (= (extend-to-plane (circle c r n)) (extend-to-plane (polygon ps)))
			(cyclic-all (Lam p0 (Lam p1 (PLam p2 (= (^ r 2) (point-shape-distance^2 c (line p1 p2)))))) ps))))

(axiom
	def_sphere_is_inscribed_in_polyhedron
	(c r P)
	(<-> (is-inscribed-in (sphere c r) (convex-polyhedron P))
		(all (PLam face (= (^ r 2) (point-shape-distance^2 c (extend-to-plane face)))) (faces-of P))))

(axiom
	def_sphere_is_inscribed_in_cylinder
	(c r C1 R1 N1 C2 R2 N2)
	(<-> (is-inscribed-in (sphere c r) (cylinder (disk C1 R1 N1) (disk C2 R2 N2)))
		(&&
			(= r R1)
			(= c (midpoint-of C1 C2))
			(= (distance^2 C1 C2) (* 4 (^ r 2)))
		)))

(axiom
	def_sphere_is_inscribed_in_right_cone
	(c r C R N P)
	(<-> (is-inscribed-in (sphere c r) (right-cone (disk C R N) P))
	(&&
		(= (distance C P) (* r (+ 1 (sqrt (+ 1 (/ (distance^2 C P) (^ R 2))))))) 
		(on c (seg C P))
		(= (distance^2 c C) (^ r 2))
	)))

(axiom
	def_sphere_is_inscribed_in_tetrahedron
	(c r A B C D)
	(<-> (is-inscribed-in (sphere c r) (tetrahedron A B C D))
		(is-inscribed-in (sphere c r) (convex-polyhedron (tetrahedron A B C D)))))
(axiom
	def_sphere_is_inscribed_in_cube
	(c r A B C D E F G H)
	(<-> (is-inscribed-in (sphere c r) (cube A B C D E F G H))
		(is-inscribed-in (sphere c r) (convex-polyhedron (cube A B C D E F G H)))))
(axiom
	def_sphere_is_inscribed_in_suquare_pyramid
	(c r O A B C D)
	(<-> (is-inscribed-in (sphere c r) (square-pyramid O A B C D))
		(is-inscribed-in (sphere c r) (convex-polyhedron (square-pyramid O A B C D)))))

(axiom
    def_sphere_is_inscribed_in_prism
    (c r A H)
    (<-> (is-inscribed-in (sphere c r) (prism A H))
         (is-inscribed-in (sphere c r) (convex-polyhedron (prism A H)))))

(axiom
  def_sphere_is_inscribed_in_right_conical_surface
  (c r n V C R)
  (<-> (is-inscribed-in (sphere C R) (right-conical-surface (circle c r n) V))
       (let ((h (height-of (right-cone (disk c r n) V))))
         (exists (t)
                 (&&
                     (< (* h t) (+ (^ h 2) (^ r 2)))
                     (= C (vec-translate V (sv* (/ t (radius (vec V c))) (vec V C))))
                     (= (* (^ r 2) (^ t 2)) (* (^ R 2) (+ (^ h 2) (^ r 2)))))))))

(axiom
	def_triangle_is_inscribed_in_circle_3d
	(c r n A B C)
	(<-> (is-inscribed-in (triangle A B C) (circle c r n))
		(&& (is-circumcenter-of c (triangle A B C))
			(= (^ r 2) (distance^2 c A))
			(vec-parallel n (normal-vector-of (plane1 A B C)))
		)))

(axiom
	def_square_is_inscribed_in_circle_3d
	(c r n A B C D)
	(<-> (is-inscribed-in (square A B C D) (circle c r n))
		(is-inscribed-in (polygon (list-of A B C D)) (circle c r n))))

(axiom
	def_is_inscribed_polygon_circle_3d
	(c r n A B C ps)
	(<-> (is-inscribed-in (polygon (cons A (cons B (cons C ps)))) (circle c r n))
		(&& (is-inscribed-in (triangle A B C) (circle c r n))
			(all (PLam p (on p (circle c r n))) ps))))

(axiom
	def_polyhedron_is_inscribed_in_sphere
	(c r P)
	(<-> (is-inscribed-in (convex-polyhedron P) (sphere c r))
		(all (PLam vertex (on vertex (sphere c r))) (vertices-of P))))

(axiom
	def_cylinder_is_inscribed_in_sphere
	(c r C1 R1 N1 C2 R2 N2)
	(<-> (is-inscribed-in (cylinder (disk C1 R1 N1) (disk C2 R2 N2)) (sphere c r))
		(&&
			(= c (midpoint-of C1 C2))
			(= (^ r 2) (+ (/ (distance^2 C1 C2) 4) (^ R1 2)))
		)))

(axiom
	def_right_cone_is_inscribed_in_sphere
	(c r C R N P)
	(<-> (is-inscribed-in (right-cone (disk C R N) P) (sphere c r))
	(&&
		(on P (sphere c r))
		(forall (x y z) (-> (on (point x y z) (circle C R N)) (on (point x y z) (sphere c r))))
	)))

(axiom
	def_tetrahedron_is_inscribed_in_sphere
	(c r A B C D)
	(<-> (is-inscribed-in (tetrahedron A B C D) (sphere c r))
		(is-inscribed-in (convex-polyhedron (tetrahedron A B C D)) (sphere c r))))
(axiom
	def_cube_is_inscribed_in_sphere
	(c r A B C D E F G H)
	(<-> (is-inscribed-in (cube A B C D E F G H) (sphere c r))
		(is-inscribed-in (convex-polyhedron (cube A B C D E F G H)) (sphere c r))))
(axiom
	def_square_pyramid_is_inscribed_in_sphere
	(c r O A B C D)
	(<-> (is-inscribed-in (square-pyramid O A B C D) (sphere c r))
		(is-inscribed-in (convex-polyhedron (square-pyramid O A B C D)) (sphere c r))))

(axiom
    def_prism_is_inscribed_in_sphere
    (c r A H)
    (<-> (is-inscribed-in (prism A H) (sphere c r))
         (is-inscribed-in (convex-polyhedron (prism A H)) (sphere c r))))

;;@------------------------------------------------------------------------------
;;@ Height, area, volume of 3D geometric objects
;;@------------------------------------------------------------------------------
(axiom
	def_height_of_tetrahedron
	(A B C D)
	(= (height-of (tetrahedron A B C D))
		(distance (foot-of-perpendicular-line-from-to D (plane1 A B C)) D)
	)
)

(axiom
	def_height_of_cuboid
	(A B C D E F G H)
	(= (height-of (cuboid A B C D E F G H))
		(distance A E)
	)
)

(axiom
	def_height_of_cube
	(A B C D E F G H)
	(= (height-of (cube A B C D E F G H))
		(distance A E)
	)
)

(axiom
	def_height_of_square_pyramid
	(O A B C D)
	(= (height-of (square-pyramid O A B C D))
		(distance (foot-of-perpendicular-line-from-to O (plane1 A B C)) O)
	)
)

(axiom
  def_height_of_cone
  (c r n P)
  (= (height-of (cone (disk c r n) P))
     (distance (foot-of-perpendicular-line-from-to P (plane2 c n)) P)
  )
)

(axiom
  def_height_of_right_cone
  (c r n P)
  (= (height-of (right-cone (disk c r n) P))
     (distance c P)
  )
)

(axiom
  def_height_of_conical_surface
  (c r n P)
  (= (height-of (conical-surface (circle c r n) P)) (height-of (cone (disk c r n) P))))

(axiom
  def_height_of_right_conical_surface
  (c r n P)
  (= (height-of (right-conical-surface (circle c r n) P)) (height-of (right-cone (disk c r n) P))))

(axiom
  def_height_of_cylinder
  (c1 r1 n1 c2 r2 n2)
  (= (height-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
    (distance c1 c2)
  )
)

(axiom
  def_height_of_cylindrical_surface
  (c1 r1 n1 c2 r2 n2)
  (= (height-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))
    (distance c1 c2)
  )
)

(axiom
  def_height_of_prism
  (A H)
  (= (height-of (prism A H))
     (radius H)))

(axiom
   def_height_of_pyramid
   (P1 P2 P3 Ps V)
   (= (height-of (pyramid (polygon (cons P1 (cons P2 (cons P3 Ps)))) V))
      (distance (foot-of-perpendicular-line-from-to V (plane1 P1 P2 P3)) V)))

(axiom
   def_height_of_plane
   (s t u v)
   (= (height-of (plane s t u v))
      (point-shape-distance (origin) (plane s t u v))))

(axiom
	def_area_of_right_conical_surface
	(c r n P)
	(= (area-of (right-conical-surface (circle c r n) P))
		(let*
			(
				(S (right-cone (disk c r n) P))
				(h (height-of S))
				(L (sqrt (+ (^ r 2) (^ h 2))))
			)
			(* (Pi) (* L r))
		)))

(axiom
	def_area_of_cylindrical_surface
	(c1 r1 n1 c2 r2 n2)
	(= (area-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))
		(* (* 2 (* (Pi) r1)) (height-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))))

(axiom
	def_volume_of_sphere
	(c r)
	(= (volume-of (sphere c r))
		(*(* (/ 4 3) (Pi)) (^ r 3))))

(axiom
	def_volume_of_tetrahedron
	(A B C D)
	(= (volume-of (tetrahedron A B C D))
		(* (/ 1 6) (abs (inner-prod (vec A D)
			(outer-prod (vec A B) (vec A C)))))))

(axiom
	def_volume_of_cuboid
	(A B C D E F G H)
	(= (volume-of (cuboid A B C D E F G H))
		(sqrt (*(* (distance^2 A B) (distance^2 A D)) (distance^2 A E)))))

(axiom
	def_volume_of_cube
	(A B C D E F G H)
	(= (volume-of (cube A B C D E F G H))
		(^ (distance A B) 3)))

(axiom
	def_volume_of_square_pyramid
	(O A B C D)
	(= (volume-of (square-pyramid O A B C D))
		(/ (* (height-of (square-pyramid O A B C D)) (area-of (base-of (square-pyramid O A B C D)))) 3)))

(axiom
  def_volume_of_cone
  (c r n P)
  (= (volume-of (cone (disk c r n) P))
     (/ (* (height-of (cone (disk c r n) P)) (area-of (base-of (cone (disk c r n) P)))) 3)))

(axiom
  def_volume_of_right_cone
  (c r n P)
  (= (volume-of (right-cone (disk c r n) P))
     (/ (* (height-of (right-cone (disk c r n) P)) (area-of (base-of (right-cone (disk c r n) P)))) 3)))

(axiom
  def_volume_of_cylinder
  (c1 r1 n1 c2 r2 n2)
  (= (volume-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
     (* (height-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2))) (area-of (disk c1 r1 n1)))
  )
)

(axiom
   def_volume_of_prism
   (A H)
   (= (volume-of (prism A H))
      (* (height-of (prism A H)) (area-of A))))

(axiom
   def_volume_of_pyramid
   (B V)
   (= (volume-of (pyramid B V))
      (* (/ 1 3) (height-of (pyramid B V)) (area-of B))))

(axiom
  def_side_of_cylinder
  (c1 r1 n1 c2 r2 n2)
  (= (side-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
     (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))

(axiom
  def_side_of_circular_cone
  (c r n v)
  (= (side-of (cone (disk c r n) v))
     (conical-surface (circle c r n) v)))

(axiom
  def_side_of_right_circular_cone
  (c r n v)
  (= (side-of (right-cone (disk c r n) v))
     (right-conical-surface (circle c r n) v)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Volume enclosed by (algebraic) surfaces
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-fun volume-enclosed-by :: (ListOf (Point -> Bool)) -> (Unit -> Bool) => R)
(def-fun volume-enclosed-by-within :: (ListOf (Point -> Bool)) -> (Point -> Bool) -> (Unit -> Bool) => R)

(axiom
 def_volume_of_enclosed_shape
 (shapes)
 (= (volume-of (shape-enclosed-by-cpfun shapes))
    (volume-enclosed-by shapes (PLam _ (true)))))

;;-------------------------------------------
;; 2015-03-31:
;(axiom
; def_volume_of_enclosed_shape_with_restriction
; (shapes r)
; (= (volume-of (intersection (shape-enclosed-by-cpfun shapes) (set-of-cfun r)))
;    (volume-enclosed-by-within shapes r)))
(axiom
 def_volume_of_enclosed_shape_with_restriction
 (boundaries shape)
 (= (volume-of (shape-enclosed-by-within boundaries shape))
    (volume-enclosed-by-within boundaries shape (PLam _ (true)))))

(axiom
 def_volume_of_enclosed_shape_with_restriction2
 (shapes r)
 (= (volume-of (intersection (set-of-cfun r) (shape-enclosed-by-cpfun shapes)))
    (volume-of (intersection (shape-enclosed-by-cpfun shapes) (set-of-cfun r)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; volume of intersections and unions of shapes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def_volume_of_intersection_binary
  (shape1 shape2)
  (= (volume-of (intersection shape1 shape2))
     (volume-of (shape-of-cpfun (char-fun-of (intersection shape1 shape2))))))

(axiom
  def_volume_of_intersection_list
  (list)
  (= (volume-of (intersection list))
     (volume-of (shape-of-cpfun (char-fun-of (intersection list))))))

(axiom
  def_volume_of_union_binary
  (shape1 shape2)
  (= (volume-of (union shape1 shape2))
     (volume-of (shape-of-cpfun (char-fun-of (union shape1 shape2))))))

(axiom
  def_volume_of_union_list
  (list)
  (= (volume-of (union list))
     (volume-of (shape-of-cpfun (char-fun-of (union list))))))


;;@------------------------------------------------------------------------------
;;@ vetex, edges, and faces of polygons
;;@------------------------------------------------------------------------------
(axiom
	def_face_of
	(f S)
	(<-> (is-face-of f S)
		(member f (faces-of S))))

(axiom
	def_vertices_of_tetrahedron
	(A B C D)
	(= (vertices-of (tetrahedron A B C D)) (list-of A B C D)))

(axiom
	def_vertices_of_cuboid
	(A B C D E F G H)
	(= (vertices-of (cuboid A B C D E F G H)) (list-of A B C D E F G H)))

(axiom
	def_vertices_of_cube
	(A B C D E F G H)
	(= (vertices-of (cube A B C D E F G H)) (list-of A B C D E F G H)))

(axiom
	def_vertices_of_square_pyramid
	(O A B C D)
	(= (vertices-of (square-pyramid O A B C D)) (list-of O A B C D)))

(axiom
   def_vertices_of_pyramid
   (A V)
   (= (vertices-of (pyramid A V))
      (cons V (vertices-of A))))

(axiom
   def_vertices_of_prism
   (A H)
   (= (vertices-of (prism A H))
      (append (vertices-of A) (map (Lam v (vec->point (v+ (vec (origin) v) H))) (vertices-of A)))))

(axiom
  def_vertice_of_cone
  (c r n P)
  (= (vertice-of (cone (disk c r n) P)) P))

(axiom
  def_vertice_of_right_cone
  (c r n P)
  (= (vertice-of (right-cone (disk c r n) P)) P))

(axiom
  def_vertice_of_conical_surface
  (c r n P)
  (= (vertice-of (conical-surface (circle c r n) P)) P))

(axiom
  def_vertice_of_right_conical_surface
  (c r n P)
  (= (vertice-of (right-conical-surface (circle c r n) P)) P))

(axiom
	def_faces_of_cuboid
	(A B C D E F G H)
	(= (faces-of (cuboid A B C D E F G H))
		(list-of
			(square A B C D) (square A E F B) (square B F G C)
			(square C G H D) (square D H E A) (square E F G H))))

(axiom
	def_faces_of_cube
	(A B C D E F G H)
	(= (faces-of (cube A B C D E F G H))
		(list-of
			(square A B C D) (square A E F B) (square B F G C)
			(square C G H D) (square D H E A) (square E F G H))))

(def-fun square-by-seg-translate :: Shape -> Vector => Shape)
(axiom
   def_square_by_seg_translate
   (P Q v)
   (= (square-by-seg-translate (seg P Q) v)
      (square P Q (vec-translate Q v) (vec-translate P v))))

(axiom
  def_faces_of_prism
  (A H)
  (= (faces-of (prism A H))
     (append (list-of A (translate A H))
             (map (Lam s (square-by-seg-translate s H)) (sides-of A)))))

(def-fun triangle-by-seg-and-vertex :: Shape -> Point => Shape)
(axiom
   def_triangle-by-seg-and-vertex
   (P Q V)
   (= (triangle-by-seg-and-vertex (seg P Q) V)
      (triangle P Q V)))

(axiom
   def_faces_of_pyramid
   (A V)
   (= (faces-of (pyramid A V))
      (cons A (map (Lam s (triangle-by-seg-and-vertex s V)) (sides-of A)))))

(axiom
  def_is_a_side_of_a_tetrahedron
  (A B C D side)
  (<-> (is-a-side-of side (tetrahedron A B C D))
       (member side (list-of (seg A B)
                             (seg A C)
                             (seg A D)
                             (seg B C)
                             (seg C D)
                             (seg D B)))))

(axiom
  def_are_the_sides_of_a_tetrahedron
  (A B C D sides)
  (<-> (are-the-sides-of sides (tetrahedron A B C D))
       (is-a-permutation-of sides
                            (list-of (seg A B)
                                     (seg A C)
                                     (seg A D)
                                     (seg B C)
                                     (seg C D)
                                     (seg D B)))))

(axiom
  def-sides-of-square-pyramid
  (O A B C D)
  (= (sides-of (square-pyramid O A B C D))
     (list-of (seg O A)
              (seg O B)
              (seg O C)
              (seg O D)
              (seg A B)
              (seg B C)
              (seg C D)
              (seg D A))))

;(axiom
; def_face_of_tetrahedron
; (O A B C f)
; (<-> (is-face-of f (tetrahedron O A B C))
;      (|| (= f (triangle O A B))
;         (= f (triangle O B C))
;         (= f (triangle O C A))
;         (= f (triangle A B C)))))


(axiom
	def_faces_of_tetrahedron
	(O A B C)
	(= (faces-of (tetrahedron O A B C))
		(list-of (triangle O A B) (triangle O B C) (triangle O C A) (triangle A B C))))

(axiom
	def_faces_of_square_pyramid
	(O A B C D)
	(= (faces-of (square-pyramid O A B C D))
		(list-of (triangle O A B) (triangle O B C) (triangle O C D) (triangle O D A) (square A B C D))))

(axiom
	def_base_of_tetrahedron
	(O A B C)
	(= (base-of (tetrahedron O A B C))
		(triangle A B C)))

(axiom
	def_base_of_cuboid
	(A B C D E F G H)
	(= (base-of (cuboid A B C D E F G H))
		(square E F G H)))

(axiom
	def_base_of_cube
	(A B C D E F G H)
	(= (base-of (cube A B C D E F G H))
		(square E F G H)))

(axiom
	def_base_of_square_pyramid
	(O A B C D)
	(= (base-of (square-pyramid O A B C D))
		(square A B C D)))

(axiom
  def_base_of_cone
  (c r n P)
  (= (base-of (cone (disk c r n) P))
     (disk c r n)))

(axiom
  def_base_of_right_cone
  (c r n P)
  (= (base-of (right-cone (disk c r n) P))
     (disk c r n)))

(axiom
  def_base_of_cylinder
  (c1 r1 n1 c2 r2 n2)
  (= (base-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
     (disk c2 r2 n2)))

(axiom
  def_base_of_conical_surface
  (c r n P)
  (= (base-of (conical-surface (circle c r n) P))
     (disk c r n)))

(axiom
  def_base_of_right_conical_surface
  (c r n P)
  (= (base-of (right-conical-surface (circle c r n) P))
     (disk c r n)))

(axiom
   def_base_of_prism
   (A H)
   (= (base-of (prism A H))
      A))

(axiom
   def_base_of_pyramid
   (A V)
   (= (base-of (pyramid A V))
      A))

(axiom
	def_faces_of_corn
	(c r n P)
	(= (faces-of (cone (disk c r n) P))
		(list-of (disk c r n) (conical-surface (circle c r n) P))))

(axiom
	def_faces_of_right_corn
	(c r n P)
	(= (faces-of (right-cone (disk c r n) P))
		(list-of (disk c r n) (right-conical-surface (circle c r n) P))))

(axiom
	def_faces_of_cylinder
	(c1 r1 n1 c2 r2 n2)
	(= (faces-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
		(list-of (disk c1 r1 n1) (disk c2 r2 n2) (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))))

(axiom
	def_area_of_solid_shape
	(shape)
	(= (area-of (solid-shape shape))
		(sum (map (Lam s (area-of s)) (faces-of shape)))))

(axiom
	def_area_of_tetrahadron
	(O A B C)
	(= (area-of (tetrahedron O A B C)) (area-of (solid-shape (tetrahedron O A B C)))))
(axiom
	def_area_of_cuboid
	(A B C D E F G H)
	(= (area-of (cuboid A B C D E F G H)) (area-of (solid-shape (cuboid A B C D E F G H)))))
(axiom
	def_area_of_cube
	(A B C D E F G H)
	(= (area-of (cube A B C D E F G H)) (area-of (solid-shape (cube A B C D E F G H)))))
(axiom
	def_area_of_square_pyramid
	(O A B C D)
	(= (area-of (square-pyramid O A B C D)) (area-of (solid-shape (square-pyramid O A B C D)))))
(axiom
	def_area_of_right_corn
	(c r n P)
	(= (area-of (right-cone (disk c r n) P)) (area-of (solid-shape (right-cone (disk c r n) P)))))
(axiom
	def_area_of_cylinder
	(c1 r1 n1 c2 r2 n2)
	(= (area-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2))) (area-of (solid-shape (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))))

(axiom
    def_area_of_prism
    (A H)
    (= (area-of (prism A H)) (area-of (solid-shape (prism A H)))))

(axiom
    def_area_of_pyramid
    (A V)
    (= (area-of (pyramid A V)) (area-of (solid-shape (pyramid A V)))))

(axiom
	def_area_of_sphere
	(C r)
	(= (area-of (sphere C r))
		(* (* 4 (Pi)) (^ r 2))))

(def-fun an-inner-point-of :: Shape => Point)
(axiom
	def_an_inner_point_of_tetrahedron
	(O A B C)
	(= (an-inner-point-of (tetrahedron O A B C))
		 (vec->point (sv* (/ 1 4) (v+ (v+ (v+ (vec (origin) O) (vec (origin) A)) (vec (origin) B)) (vec (origin) C))))))

(axiom
	def_an_inner_point_of_cuboid
	(A B C D E F G H)
	(= (an-inner-point-of (cuboid A B C D E F G H))
		(an-inner-point-of (tetrahedron A B C E))))

(axiom
	def_an_inner_point_of_cube
	(A B C D E F G H)
	(= (an-inner-point-of (cube A B C D E F G H))
		(an-inner-point-of (tetrahedron A B C E))))

(axiom
	def_an_inner_point_of_square_pyramid
	(O A B C D)
	(= (an-inner-point-of (square-pyramid O A B C D))
		(an-inner-point-of (tetrahedron O A B C))))

(axiom
	def_an_inner_point_of_prism
	(A H)
	(= (an-inner-point-of (prism A H))
	   (let* ((P (an-inner-point-of A))
		  (V (sv* (/ 1 2) H))
		  )
	   (point (+ (x-coord P) (vec-x-coord V)) (+ (y-coord P) (vec-y-coord V)) (+ (z-coord P) (vec-z-coord V))))))

(axiom
	def_an_inner_point_of_pyramid
	(A V)
	(= (an-inner-point-of (pyramid A V))
		(midpoint-of (an-inner-point-of A) V)))

(axiom
	def_an_inner_point_of_triangle
	(A B C)
	(= (an-inner-point-of (triangle A B C))
		(centroid-of (triangle A B C))))

(axiom
	def_an_inner_point_of_square
	(A B C D)
	(= (an-inner-point-of (square A B C D))
		(an-inner-point-of (triangle A B C))))

(axiom
	def_an_inner_point_of_polygon
	(vertices)
	(= (an-inner-point-of (polygon vertices))
		(an-inner-point-of (triangle (car vertices) (cadr vertices) (caddr vertices)))))

;;@------------------------------------------------------------------------------
;;@ test if a point is on a geometric object
;;@------------------------------------------------------------------------------
(axiom
  def_point_on_set_by_cfun
  (x y z f)
  (<-> (on (point x y z) (set-of-cfun f))
       (PLamApp (LamApp (LamApp f x) y) z)))

(axiom
  def_point_on_line3d
  (P a b c p q r)
  (<-> (on P (line3d a b c p q r))
       (exists (t)
               (= P (point (+ (* t a) p)
                           (+ (* t b) q)
                           (+ (* t c) r))))))

(axiom
	def_on_tetrahedron
	(point O A B C)
	(<-> (on point (tetrahedron O A B C))
		(on point (shape-common-operation (tetrahedron O A B C)))))

(axiom
	def_on_cuboid
	(point A B C D E F G H)
	(<-> (on point (cuboid A B C D E F G H))
		(on point (shape-common-operation (cuboid A B C D E F G H)))))

(axiom
	def_on_cube
	(point A B C D E F G H)
	(<-> (on point (cube A B C D E F G H))
		(on point (shape-common-operation (cube A B C D E F G H)))))

(axiom
	def_on_square_pyramid
	(point O A B C D)
	(<-> (on point (square-pyramid O A B C D))
		(on point (shape-common-operation (square-pyramid O A B C D)))))

(axiom
	def_on_cone
	(point C r n P)
	(<-> (on point (cone (disk C r n) P))
		(on point (shape-common-operation (cone (disk C r n) P)))))

(axiom
	def_on_right_cone
	(point C r n P)
	(<-> (on point (right-cone (disk C r n) P))
		(on point (shape-common-operation (right-cone (disk C r n) P)))))

(axiom
	def_on_cylinder
	(point c1 r1 n1 c2 r2 n2)
	(<-> (on point (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
		(on point (shape-common-operation (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))))

(axiom
	def_on_sphere
	(point C r)
	(<-> (on point (sphere C r))
		(on point (shape-common-operation (sphere C r)))))

(axiom
   def_on_prism
   (point A H)
   (<-> (on point (prism A H))
        (on point (shape-common-operation (prism A H)))))

(axiom
   def_on_pyramid
   (point A V)
   (<-> (on point (pyramid A V))
        (on point (shape-common-operation (pyramid A V)))))

(axiom
	def_on_divided_by_plane_region_including
	(P s t u v point)
	(<-> (on P (divided-region-including (plane s t u v) point))
		(on P (shape-common-operation (divided-region-including (plane s t u v) point)))))

(axiom
	def_on_divided_by_plane1_region_including
	(P A B C point)
	(<-> (on P (divided-region-including (plane1 A B C) point))
		(on P (shape-common-operation (divided-region-including  (plane1 A B C) point)))))

(axiom
	def_on_divided_by_plane2_region_including
	(P A v point)
	(<-> (on P (divided-region-including (plane2 A v) point))
		(on P (shape-common-operation (divided-region-including (plane2 A v) point)))))

(axiom
	def_on_plane
	(P s t u v)
	(<-> (on P (plane s t u v))
		(on P (shape-common-operation (plane s t u v)))))

(axiom
	def_on_plane1
	(P p q r)
	(<-> (on P (plane1 p q r))
		(on P (shape-common-operation (plane1 p q r)))))

(axiom
	def_on_plane2
	(P p v)
	(<-> (on P (plane2 p v))
		(on P (shape-common-operation (plane2 p v)))))

(axiom
	def_on_circle_3d
	(P c r n)
	(<-> (on P (circle c r n))
		(on P (circle-shape (circle c r n)))))

(axiom
	def_on_disk_3d
	(P c r n)
	(<-> (on P (disk c r n))
		(on P (disk-shape (disk c r n)))))

(axiom
	def_on_arc_3d
	(P c p a n)
	(<-> (on P (arc c p a n))
		(on P (arc-shape (arc c p a n)))))

(axiom
	def_on_circular_sector_3d
	(P c p a n)
	(<-> (on P (circular-sector c p a n))
		(on P (circular-sector-shape (circular-sector c p a n)))))

(axiom
	def_on_conical_surface
	(p c r n P)
	(<-> (on p (conical-surface (circle c r n) P))
		(on p (shape-common-operation (conical-surface (circle c r n) P)))))

(axiom
	def_on_right_conical_surface
	(p c r n P)
	(<-> (on p (right-conical-surface (circle c r n) P))
		(on p (shape-common-operation (right-conical-surface (circle c r n) P)))))

(axiom
	def_on_cylindrical_surface
	(p c1 r1 n1 c2 r2 n2)
	(<-> (on p (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))
		(on p (shape-common-operation (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))))

(axiom
    def_on_imported_2d_shape
    (p S)
    (<-> (on p (import-2d-shape S))
        (on p (shape-common-operation (import-2d-shape S)))))


;;@------------------------------------------------------------------------------
;;@ inside/outside of an object
;;@------------------------------------------------------------------------------
(axiom
	def_point_inside_of_tetrahedron
	(point O A B C)
	(<-> (point-inside-of point (tetrahedron O A B C))
		(point-inside-of point (shape-common-operation (tetrahedron O A B C)))))

(axiom
	def_point_inside_of_cuboid
	(point A B C D E F G H)
	(<-> (point-inside-of point (cuboid A B C D E F G H))
		(point-inside-of point (shape-common-operation (cuboid A B C D E F G H)))))

(axiom
	def_point_inside_of_cube
	(point A B C D E F G H)
	(<-> (point-inside-of point (cube A B C D E F G H))
		(point-inside-of point (shape-common-operation (cube A B C D E F G H)))))

(axiom
	def_point_inside_of_square_pyramid
	(point O A B C D)
	(<-> (point-inside-of point (square-pyramid O A B C D))
		(point-inside-of point (shape-common-operation (square-pyramid O A B C D)))))

(axiom
	def_point_inside_of_cone
	(point C r n P)
	(<-> (point-inside-of point (cone (disk C r n) P))
		(point-inside-of point (shape-common-operation (cone (disk C r n) P)))))

(axiom
	def_point_inside_of_right_cone
	(point C r n P)
	(<-> (point-inside-of point (right-cone (disk C r n) P))
		(point-inside-of point (shape-common-operation (right-cone (disk C r n) P)))))

(axiom
	def_point_inside_of_cylinder
	(point c1 r1 n1 c2 r2 n2)
	(<-> (point-inside-of point (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
		(point-inside-of point (shape-common-operation (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))))

(axiom
	def_point_inside_of_sphere
	(point C r)
	(<-> (point-inside-of point (sphere C r))
		(point-inside-of point (shape-common-operation (sphere C r)))))

(axiom
   def_point_inside_of_prism
   (point A H)
   (<-> (point-inside-of point (prism A H))
        (point-inside-of point (shape-common-operation (prism A H)))))

(axiom
   def_point_inside_of_pyramid
   (point A V)
   (<-> (point-inside-of point (pyramid A V))
        (point-inside-of point (shape-common-operation (pyramid A V)))))

(axiom
	def_point_inside_of_divided_by_plane_region_including
	(P s t u v point)
	(<-> (point-inside-of P (divided-region-including (plane s t u v) point))
		(point-inside-of P (shape-common-operation (divided-region-including (plane-shape (plane s t u v)) point)))))

(axiom
	def_point_inside_of_divided_by_plane1_region_including
	(P A B C point)
	(<-> (point-inside-of P (divided-region-including (plane1 A B C) point))
		(point-inside-of P (shape-common-operation (divided-region-including (plane-shape (plane1 A B C)) point)))))

(axiom
	def_point_inside_of_divided_by_plane2_region_including
	(P A v point)
	(<-> (point-inside-of P (divided-region-including (plane2 A v) point))
		(point-inside-of P (shape-common-operation (divided-region-including (plane-shape (plane2 A v)) point)))))

(axiom
	def_point_inside_of_plane
	(P s t u v)
	(<-> (point-inside-of P (plane s t u v))
		(point-inside-of P (shape-common-operation (plane s t u v)))))

(axiom
	def_point_inside_of_plane1
	(P p q r)
	(<-> (point-inside-of P (plane1 p q r))
		(point-inside-of P (shape-common-operation (plane1 p q r)))))

(axiom
	def_point_inside_of_plane2
	(P p v)
	(<-> (point-inside-of P (plane2 p v))
		(point-inside-of P (shape-common-operation (plane2 p v)))))

(axiom
	def_point_inside_of_circle_3d
	(P c r n)
	(<-> (point-inside-of P (circle c r n))
		(point-inside-of P (circle-shape (circle c r n)))))

(axiom
	def_point_inside_of_disk_3d
	(P c r n)
	(<-> (point-inside-of P (disk c r n))
		(point-inside-of P (disk-shape (disk c r n)))))

(axiom
	def_point_inside_of_arc_3d
	(P c p a n)
	(<-> (point-inside-of P (arc c p a n))
		(point-inside-of P (arc-shape (arc c p a n)))))

(axiom
	def_point_inside_of_circular_sector_3d
	(P c p a n)
	(<-> (point-inside-of P (circular-sector c p a n))
		(point-inside-of P (circular-sector-shape (circular-sector c p a n)))))

(axiom
	def_point_inside_of_conical_surface
	(p c r n P)
	(<-> (point-inside-of p (conical-surface (circle c r n) P))
		(point-inside-of p (shape-common-operation (conical-surface (circle c r n) P)))))

(axiom
	def_point_inside_of_right_conical_surface
	(p c r n P)
	(<-> (point-inside-of p (right-conical-surface (circle c r n) P))
		(point-inside-of p (shape-common-operation (right-conical-surface (circle c r n) P)))))

(axiom
	def_point_inside_of_cylindrical_surface
	(p c1 r1 n1 c2 r2 n2)
	(<-> (point-inside-of p (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))
		(point-inside-of p (shape-common-operation (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))))

(axiom
  def_point_inside_of_3d_shape
  (P cf)
  (<-> (point-inside-of P (set-of-cfun cf))
       (on P (set-of-cfun cf))))

(axiom
   def_point_outside_of_3d
   (P S)
   (<-> (point-outside-of P S)
        (! (point-inside-of P S))))


;;@------------------------------------------------------------------------------
;;@ Geometric objects defined by characteristic functions
;;@------------------------------------------------------------------------------
;(axiom
;  def_eq_with_cfun_3d
;  (shape cfun)
;  (<-> (= shape (set-of-cfun cfun))
;       (forall (x y z)
;               (<-> (on (point x y z) shape)
;                    (PLamApp (LamApp (LamApp cfun x) y) z)))))

(axiom
	def_cpfun_to_cfun
	(cpfun)
	(= (cpfun-to-cfun cpfun)
		(Lam x (Lam y (PLam z (PLamApp cpfun (point x y z)))))))

(axiom
	def_cfun_to_cpfun
	(cfun)
	(= (cfun-to-cpfun cfun)
		(PLam P (PLamApp (LamApp (LamApp cfun (x-coord P)) (y-coord P)) (z-coord P)))))

(axiom
	def_cfun_equality
	(f1 f2)
	(<-> (= (set-of-cfun f1) (set-of-cfun f2))
		(= f1 f2)))

(axiom
	def_cfun_cpfun_equality
	(f1 f2)
	(<-> (= (set-of-cfun f1) (shape-of-cpfun f2))
		(= f1 (cpfun-to-cfun f2))))

(axiom
	def_cpfun_cfun_equality
	(f1 f2)
	(<-> (= (shape-of-cpfun f1) (set-of-cfun f2))
		(= f1 (cfun-to-cpfun f2))))

(axiom
	def_cpfun_equality
	(f1 f2)
	(<-> (= (shape-of-cpfun f1) (shape-of-cpfun f2))
		(= f1 f2)))

(axiom
	def_char_fun_of_set_of_cfun_3d
	(cfun)
	(= (char-fun-of (set-of-cfun cfun))
		(PLam P (PLamApp (LamApp (LamApp cfun (x-coord P)) (y-coord P)) (z-coord P)))))

;;inner-part-of
(axiom
	def_char_fun_of_inner_part_of_divided_region_including_plane_shape
	(plane point)
	(= (char-fun-of (inner-part-of (divided-region-including (plane-shape plane) point)))
		(let ((H (foot-of-perpendicular-line-from-to point plane)))
			(PLam P (< 0 (inner-prod (vec H P) (vec H point)))))))

(axiom
	def_char_fun_of_inner_part_of_divided_region_including_plane
	(s t u v point)
	(= (char-fun-of (inner-part-of (divided-region-including (plane s t u v) point)))
		(char-fun-of (inner-part-of (divided-region-including (plane-shape (plane s t u v)) point)))))
(axiom
	def_char_fun_of_inner_part_of_divided_region_including_plane1
	(P Q R point)
	(= (char-fun-of (inner-part-of (divided-region-including (plane1 P Q R) point)))
		(char-fun-of (inner-part-of (divided-region-including (plane-shape (plane1 P Q R)) point)))))
(axiom
	def_char_fun_of_inner_part_of_divided_region_including_plane2
	(P v point)
	(= (char-fun-of (inner-part-of (divided-region-including (plane2 P v) point)))
		(char-fun-of (inner-part-of (divided-region-including (plane-shape (plane2 P v)) point)))))

(axiom
	def_opposite_vertice_of_convex_polyhedron
	(face polyhedron)
	(= (opposite-vertice-of face (convex-polyhedron polyhedron))
		(car (remove-list (vertices-of face) (vertices-of polyhedron)))))

(axiom
	def_opposite_vertice_of_tetrahedron
	(face O A B C)
	(= (opposite-vertice-of face (tetrahedron O A B C))
		(opposite-vertice-of face (convex-polyhedron (tetrahedron O A B C)))))
(axiom
	def_opposite_vertice_of_cuboid
	(face A B C D E F G H)
	(= (opposite-vertice-of face (cuboid A B C D E F G H))
		(opposite-vertice-of face (convex-polyhedron (cuboid A B C D E F G H)))))
(axiom
	def_opposite_vertice_of_cube
	(face A B C D E F G H)
	(= (opposite-vertice-of face (cube A B C D E F G H))
		(opposite-vertice-of face (convex-polyhedron (cube A B C D E F G H)))))
(axiom
	def_opposite_vertice_of_square-pyramid
	(face O A B C D)
	(= (opposite-vertice-of face (square-pyramid O A B C D))
		(opposite-vertice-of face (convex-polyhedron (square-pyramid O A B C D)))))
(axiom
	def_opposite_vertice_of_prism
	(face A H)
	(= (opposite-vertice-of face (prism A H))
		(opposite-vertice-of face (convex-polyhedron (prism A H)))))
(axiom
	def_opposite_vertice_of_pyramid
	(face A V)
	(= (opposite-vertice-of face (pyramid A V))
		(opposite-vertice-of face (convex-polyhedron (pyramid A V)))))

(axiom
	def_char_fun_of_inside_of_convex_polyhedron
	(polyhedron)
	(= (char-fun-of (inner-part-of (convex-polyhedron polyhedron)))
		(PLam p (all
			(PLam f (on p (inner-part-of (divided-region-including (extend-to-plane f) (an-inner-point-of polyhedron)))))
			(faces-of polyhedron)
		))))

(axiom
	def_char_fun_of_inside_of_solid_cone
	(cone)
	(= (char-fun-of (inner-part-of (solid-cone cone)))
		(PLam p (exists (t)
			(let* (
					(C (center-of (base-of cone)))
					(r (radius-of (base-of cone)))
					(n (normal-vector-of (base-of cone)))
					(P (vertice-of cone))
					(Qt (internally-dividing-point P C t))
				)
				(&& (< 0 t) (< t 1)
					(on p (inner-part-of (disk Qt (* t r) n)))
				))))))

(axiom
	def_char_fun_of_inside_of_cylinder
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (inner-part-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))
		(PLam p (exists (t) (&&
			(< 0 t) (< t 1)
			(on p (inner-part-of (disk (internally-dividing-point c1 c2 t) r1 n1)))
		)))))

(axiom
	def_char_fun_of_inside_of_sphere
	(C r)
	(= (char-fun-of (inner-part-of (sphere C r)))
		(PLam p (< (distance^2 C p) (^ r 2)))))

(axiom
	def_char_fun_of_inside_of_tetrahedron
	(O A B C)
	(= (char-fun-of (inner-part-of (tetrahedron O A B C)))
		(char-fun-of (inner-part-of (convex-polyhedron (tetrahedron O A B C))))))

(axiom
	def_char_fun_of_inside_of_cuboid
	(A B C D E F G H)
	(= (char-fun-of (inner-part-of (cuboid A B C D E F G H)))
		(char-fun-of (inner-part-of (convex-polyhedron (cuboid A B C D E F G H))))))

(axiom
	def_char_fun_of_inside_of_cube
	(A B C D E F G H)
	(= (char-fun-of (inner-part-of (cube A B C D E F G H)))
		(char-fun-of (inner-part-of (convex-polyhedron (cube A B C D E F G H))))))

(axiom
	def_char_fun_of_inside_of_square_pyramid
	(O A B C D)
	(= (char-fun-of (inner-part-of (square-pyramid O A B C D)))
		(char-fun-of (inner-part-of (convex-polyhedron (square-pyramid O A B C D))))))

(axiom
	def_char_fun_of_inside_of_prism
	(A H)
	(= (char-fun-of (inner-part-of (prism A H)))
		(char-fun-of (inner-part-of (convex-polyhedron (prism A H))))))

(axiom
	def_char_fun_of_inside_of_pyramid
	(A V)
	(= (char-fun-of (inner-part-of (pyramid A V)))
		(char-fun-of (inner-part-of (convex-polyhedron (pyramid A V))))))

(axiom
	def_char_fun_of_inside_of_cone
	(C r n P)
	(= (char-fun-of (inner-part-of (cone (disk C r n) P)))
		(char-fun-of (inner-part-of (solid-cone (cone (disk C r n) P))))))

(axiom
	def_char_fun_of_inside_of_right_cone
	(C r n P)
	(= (char-fun-of (inner-part-of (right-cone (disk C r n) P)))
		(char-fun-of (inner-part-of (solid-cone (right-cone (disk C r n) P))))))

(axiom
	def_char_fun_of_inside_of_plane
	(s t u v)
	(= (char-fun-of (inner-part-of (plane s t u v)))
		(PLam p (= (+ (+ (* s (x-coord p)) (* t (y-coord p))) (* u (z-coord p))) v))))

(axiom
	def_char_fun_of_inside_of_plane1
	(P Q R)
	(= (char-fun-of (inner-part-of (plane1 P Q R))) (char-fun-of (inner-part-of (plane (plane1 P Q R))))))

(axiom
	def_char_fun_of_inside_of_plane2
	(P V)
	(= (char-fun-of (inner-part-of (plane2 P V))) (char-fun-of (inner-part-of (plane (plane2 P V))))))

(axiom
	def_char_fun_of_inside_of_circle_3d
	(c r n)
	(= (char-fun-of (inner-part-of (circle c r n))) (char-fun-of (inner-part-of (circle-shape (circle c r n))))))

(axiom
	def_char_fun_of_inside_of_disk_3d
	(c r n)
	(= (char-fun-of (inner-part-of (disk c r n))) (char-fun-of (inner-part-of (disk-shape (disk c r n))))))

(axiom
	def_char_fun_of_inside_of_arc_3d
	(c p a n)
	(= (char-fun-of (inner-part-of (arc c p a n)))
		(char-fun-of (inner-part-of (arc-shape (arc c p a n))))))

(axiom
	def_char_fun_of_inside_of_circular_sector_3d
	(c p a n)
	(= (char-fun-of (inner-part-of (circular-sector c p a n)))
		(char-fun-of (inner-part-of (circular-sector-shape (circular-sector c p a n))))))

(axiom
	def_char_fun_of_inside_of_solid_conical_surface
	(cone)
	(= (char-fun-of (inner-part-of (conical-surface-shape cone)))
		(PLam p (exists (q) (||
			(= p (vertice-of cone))
			(let* (
					(C (center-of (base-of cone)))
					(r (radius-of (base-of cone)))
					(n (normal-vector-of (base-of cone)))
					(P (vertice-of cone))
				)
				(&&
					(on q (circle C r n))
					(on p (inner-part-of (seg q P)))
				)
			)
			)))))

(axiom
	def_char_fun_of_inside_of_cylindrical_surface
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (inner-part-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))
		(PLam p (exists (t) (&&
			(< 0 t) (< t 1)
			(on p (circle (internally-dividing-point c1 c2 t) r1 n1))
		)))))

(axiom
	def_char_fun_of_inside_of_conical_surface
	(c r n P)
	(= (char-fun-of (inner-part-of (conical-surface (circle c r n) P)))
		(char-fun-of (inner-part-of (conical-surface-shape (conical-surface (circle c r n) P))))))

(axiom
	def_char_fun_of_inside_of_right_conical_surface
	(c r n P)
	(= (char-fun-of (inner-part-of (right-conical-surface (circle c r n) P)))
		(char-fun-of (inner-part-of (conical-surface-shape (right-conical-surface (circle c r n) P))))))


;;with-boundary
(axiom
	def_char_fun_of_divided_region_with_boundary_including_plane_shape
	(plane point)
	(= (char-fun-of (with-boundary (divided-region-including (plane-shape plane) point)))
		(let ((H (foot-of-perpendicular-line-from-to point plane)))
			(PLam P (<= 0 (inner-prod (vec H P) (vec H point)))))))

(axiom
	def_char_fun_of_divided_region_with_boundary_including_plane
	(s t u v point)
	(= (char-fun-of (with-boundary (divided-region-including (plane s t u v) point)))
		(char-fun-of (with-boundary (divided-region-including (plane-shape (plane s t u v)) point)))))
(axiom
	def_char_fun_of_divided_region_with_boundary_including_plane1
	(P Q R point)
	(= (char-fun-of (with-boundary (divided-region-including (plane1 P Q R) point)))
		(char-fun-of (with-boundary (divided-region-including (plane-shape (plane1 P Q R)) point)))))
(axiom
	def_char_fun_of_divided_region_with_boundary_including_plane2
	(P v point)
	(= (char-fun-of (with-boundary (divided-region-including (plane2 P v) point)))
		(char-fun-of (with-boundary (divided-region-including (plane-shape (plane2 P v)) point)))))

(axiom
	def_char_fun_of_convex_polyhedron_with_boundary
	(polyhedron)
	(= (char-fun-of (with-boundary (convex-polyhedron polyhedron)))
		(PLam p (all
			(PLam f (on p (with-boundary (divided-region-including (extend-to-plane f) (an-inner-point-of polyhedron)))))
			(faces-of polyhedron)
		))))

(axiom
	def_char_fun_of_solid_cone_with_boundary
	(cone)
	(= (char-fun-of (with-boundary (solid-cone cone)))
		(PLam p (exists (t)
			(let* (
					(C (center-of (base-of cone)))
					(r (radius-of (base-of cone)))
					(n (normal-vector-of (base-of cone)))
					(P (vertice-of cone))
					(Qt (internally-dividing-point P C t))
				)
				(&& (<= 0 t) (<= t 1)
					(on p (with-boundary (disk Qt (* t r) n)))
				))))))

(axiom
	def_char_fun_of_cylinder_with_boundary
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (with-boundary (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))
		(PLam p (exists (t) (&&
			(<= 0 t) (<= t 1)
			(on p (with-boundary (disk (internally-dividing-point c1 c2 t) r1 n1)))
		)))))

(axiom
	def_char_fun_of_sphere_with_boundary
	(C r)
	(= (char-fun-of (with-boundary (sphere C r)))
		(PLam p (<= (distance^2 C p) (^ r 2)))))

(axiom
	def_char_fun_of_tetrahedron_with_boundary
	(O A B C)
	(= (char-fun-of (with-boundary (tetrahedron O A B C)))
		(char-fun-of (with-boundary (convex-polyhedron (tetrahedron O A B C))))))

(axiom
	def_char_fun_of_cuboid_with_boundary
	(A B C D E F G H)
	(= (char-fun-of (with-boundary (cuboid A B C D E F G H)))
		(char-fun-of (with-boundary (convex-polyhedron (cuboid A B C D E F G H))))))

(axiom
	def_char_fun_of_cube_with_boundary
	(A B C D E F G H)
	(= (char-fun-of (with-boundary (cube A B C D E F G H)))
		(char-fun-of (with-boundary (convex-polyhedron (cube A B C D E F G H))))))

(axiom
	def_char_fun_of_square_pyramid_with_boundary
	(O A B C D)
	(= (char-fun-of (with-boundary (square-pyramid O A B C D)))
		(char-fun-of (with-boundary (convex-polyhedron (square-pyramid O A B C D))))))

(axiom
	def_char_fun_of_prism_with_boundary
	(A H)
	(= (char-fun-of (with-boundary (prism A H)))
		(char-fun-of (with-boundary (convex-polyhedron (prism A H))))))

(axiom
	def_char_fun_of_pyramid_with_boundary
	(A V)
	(= (char-fun-of (with-boundary (pyramid A V)))
		(char-fun-of (with-boundary (convex-polyhedron (pyramid A V))))))

(axiom
	def_char_fun_of_cone_with_boundary
	(C r n P)
	(= (char-fun-of (with-boundary (cone (disk C r n) P)))
		(char-fun-of (with-boundary (solid-cone (cone (disk C r n) P))))))

(axiom
	def_char_fun_of_right_cone_with_boundary
	(C r n P)
	(= (char-fun-of (with-boundary (right-cone (disk C r n) P)))
		(char-fun-of (with-boundary (solid-cone (right-cone (disk C r n) P))))))


(axiom
	def_char_fun_of_plane_with_boundary
	(s t u v)
	(= (char-fun-of (with-boundary (plane s t u v))) (char-fun-of (inner-part-of (plane s t u v)))))

(axiom
	def_char_fun_of_plane1_with_boundary
	(P Q R)
	(= (char-fun-of (with-boundary (plane1 P Q R))) (char-fun-of (inner-part-of (plane1 P Q R)))))

(axiom
	def_char_fun_of_plane2_with_boundary
	(P V)
	(= (char-fun-of (with-boundary (plane2 P V))) (char-fun-of (inner-part-of (plane2 P V)))))

(axiom
	def_char_fun_of_circle_with_boundary_3d
	(c r n)
	(= (char-fun-of (with-boundary (circle c r n))) (char-fun-of (with-boundary (circle-shape (circle c r n))))))

(axiom
	def_char_fun_of_disk_with_boundary_3d
	(c r n)
	(= (char-fun-of (with-boundary (disk c r n))) (char-fun-of (disk-shape (disk c r n)))))

(axiom
	def_char_fun_of_arc_with_boundary_3d
	(c p a n)
	(= (char-fun-of (with-boundary (arc c p a n)))
		(char-fun-of (with-boundary (arc-shape (arc c p a n))))))

(axiom
	def_char_fun_of_circular_sector_with_boundary_3d
	(c p a n)
	(= (char-fun-of (with-boundary (circular-sector c p a n)))
		(char-fun-of (with-boundary (circular-sector-shape (circular-sector c p a n))))))

(axiom
	def_char_fun_of_solid_conical_surface_with_boundary
	(cone)
	(= (char-fun-of (with-boundary (conical-surface-shape cone)))
		(PLam p (exists (q) (&&
			(let* (
					(C (center-of (base-of cone)))
					(r (radius-of (base-of cone)))
					(n (normal-vector-of (base-of cone)))
					(P (vertice-of cone))
				)
				(&& (on q (circle C r n))
					(on p (seg q P))
				)))))))

(axiom
	def_char_fun_of_cylindrical_surface_with_boundary
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (with-boundary (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))
		(PLam p (exists (t) (&&
			(<= 0 t) (<= t 1)
			(on p (circle (internally-dividing-point c1 c2 t) r1 n1))
		)))))

(axiom
	def_char_fun_of_conical_surface_with_boundary
	(c r n P)
	(= (char-fun-of (with-boundary (conical-surface (circle c r n) P)))
		(char-fun-of (with-boundary (conical-surface-shape (conical-surface (circle c r n) P))))))

(axiom
	def_char_fun_of_right_conical_surface_with_boundary
	(c r n P)
	(= (char-fun-of (with-boundary (right-conical-surface (circle c r n) P)))
		(char-fun-of (with-boundary (conical-surface-shape (right-conical-surface (circle c r n) P))))))


;;boundary-of
(axiom
	def_char_fun_of_boundary_of_solid_shape
	(shape)
	(= (char-fun-of (solid-shape (boundary-of shape)))
		(foldr1 (Lam P (Lam Q (PLam p  (|| (PLamApp P p) (PLamApp Q p)))))
			(map
				(Lam f (char-fun-of (with-boundary f)))
				(faces-of shape)
			))))

(axiom
	def_char_fun_of_boundary_of_sphere
	(C r)
	(= (char-fun-of (boundary-of (sphere C r)))
		(PLam p (= (distance^2 C p) (^ r 2)))))

(axiom
	def_char_fun_of_boundary_of_tetrahedron
	(O A B C)
	(= (char-fun-of (boundary-of (tetrahedron O A B C)))
		(char-fun-of (solid-shape (boundary-of (tetrahedron O A B C))))))

(axiom
	def_char_fun_of_boundary_of_cuboid
	(A B C D E F G H)
	(= (char-fun-of (boundary-of (cuboid A B C D E F G H)))
		(char-fun-of (solid-shape (boundary-of (cuboid A B C D E F G H))))))

(axiom
	def_char_fun_of_boundary_of_cube
	(A B C D E F G H)
	(= (char-fun-of (boundary-of (cube A B C D E F G H)))
		(char-fun-of (solid-shape (boundary-of (cube A B C D E F G H))))))

(axiom
	def_char_fun_of_boundary_of_square_pyramid
	(O A B C D)
	(= (char-fun-of (boundary-of (square-pyramid O A B C D)))
		(char-fun-of (solid-shape (boundary-of (square-pyramid O A B C D))))))

(axiom
	def_char_fun_of_boundary_of_cone
	(C r n P)
	(= (char-fun-of (boundary-of (cone (disk C r n) P)))
		(char-fun-of (solid-shape (boundary-of (cone (disk C r n) P))))))

(axiom
	def_char_fun_of_boundary_of_right_cone
	(C r n P)
	(= (char-fun-of (boundary-of (right-cone (disk C r n) P)))
		(char-fun-of (solid-shape (boundary-of (right-cone (disk C r n) P))))))

(axiom
	def_char_fun_of_boundary_of_cylinder
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (boundary-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))
		(char-fun-of (solid-shape (boundary-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))))))

(axiom
   def_char_fun_of_boundary_of_prism
   (A H)
   (= (char-fun-of (boundary-of (prism A H)))
      (char-fun-of (solid-shape (boundary-of (prism A H))))))

(axiom
   def_char_fun_of_boundary_of_pyramid
   (A V)
   (= (char-fun-of (boundary-of (pyramid A V)))
      (char-fun-of (solid-shape (boundary-of (pyramid A V))))))


(axiom
	def_char_fun_of_boundary_of_circle_3d
	(c r n)
	(= (char-fun-of (boundary-of (circle c r n))) (char-fun-of (boundary-of (circle-shape (circle c r n))))))

(axiom
	def_char_fun_of_boundary_of_disk_3d
	(c r n)
	(= (char-fun-of (boundary-of (disk c r n))) (char-fun-of (boundary-of (disk-shape (disk c r n))))))

(axiom
	def_char_fun_of_boundary_of_arc_3d
	(c p a n)
	(= (char-fun-of (boundary-of (arc c p a n)))
		(char-fun-of (boundary-of (arc-shape (arc c p a n))))))

(axiom
	def_char_fun_of_boundary_of_circular_sector_3d
	(c p a n)
	(= (char-fun-of (boundary-of (circular-sector c p a n)))
		(char-fun-of (boundary-of (circular-sector-shape (circular-sector c p a n))))))

(axiom
	def_char_fun_of_boundary_of_solid_conical_surface
	(cone)
	(= (char-fun-of (boundary-of (conical-surface-shape cone)))
		(PLam p (on p (boundary-of (base-of cone))))))

(axiom
	def_char_fun_of_boundary_of_cylindrical_surface
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (boundary-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))
		(PLam p (||
			(on p (circle c1 r1 n1))
			(on p (circle c2 r2 n2))
		))))

(axiom
	def_char_fun_of_boundary_of_conical_surface
	(c r n P)
	(= (char-fun-of (boundary-of (conical-surface (circle c r n) P)))
		(char-fun-of (boundary-of (conical-surface-shape (conical-surface (circle c r n) P))))))

(axiom
	def_char_fun_of_boundary_of_right_conical_surface
	(c r n P)
	(= (char-fun-of (boundary-of (right-conical-surface (circle c r n) P)))
		(char-fun-of (boundary-of (conical-surface-shape (right-conical-surface (circle c r n) P))))))


;;default
(axiom
	def_char_fun_of_divided_region_including_plane_shape
	(plane point)
	(= (char-fun-of (divided-region-including (plane-shape plane) point))
		(char-fun-of (with-boundary (divided-region-including (plane-shape plane) point)))))

(axiom
	def_char_fun_of_divided_region_including_plane
	(s t u v point)
	(= (char-fun-of (divided-region-including (plane s t u v) point))
		(char-fun-of (divided-region-including (plane-shape (plane s t u v)) point))))
(axiom
	def_char_fun_of_divided_region_including_plane1
	(P Q R point)
	(= (char-fun-of (divided-region-including (plane1 P Q R) point))
		(char-fun-of (divided-region-including (plane-shape (plane1 P Q R)) point))))
(axiom
	def_char_fun_of_divided_region_including_plane2
	(P v point)
	(= (char-fun-of (divided-region-including (plane2 P v) point))
		(char-fun-of (divided-region-including (plane-shape (plane2 P v)) point))))

(axiom
	def_char_fun_of_cylinder
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2)))
		(char-fun-of (boundary-of (cylinder (disk c1 r1 n1) (disk c2 r2 n2))))))

(axiom
	def_char_fun_of_sphere
	(C r)
	(= (char-fun-of (sphere C r))
		(char-fun-of (boundary-of (sphere C r)))))

(axiom
	def_char_fun_of_tetrahedron
	(O A B C)
	(= (char-fun-of (tetrahedron O A B C))
		(char-fun-of (boundary-of (tetrahedron O A B C)))))

(axiom
	def_char_fun_of_cuboid
	(A B C D E F G H)
	(= (char-fun-of (cuboid A B C D E F G H))
		(char-fun-of (boundary-of (cuboid A B C D E F G H)))))

(axiom
	def_char_fun_of_cube
	(A B C D E F G H)
	(= (char-fun-of (cube A B C D E F G H))
		(char-fun-of (boundary-of (cube A B C D E F G H)))))

(axiom
	def_char_fun_of_square_pyramid
	(O A B C D)
	(= (char-fun-of (square-pyramid O A B C D))
		(char-fun-of (boundary-of (square-pyramid O A B C D)))))

(axiom
	def_char_fun_of_prism
	(A H)
	(= (char-fun-of (prism A H))
		(char-fun-of (boundary-of (prism A H)))))

(axiom
	def_char_fun_of_pyramid
	(A V)
	(= (char-fun-of (pyramid A V))
		(char-fun-of (boundary-of (pyramid A V)))))

(axiom
	def_char_fun_of_cone
	(C r n P)
	(= (char-fun-of (cone (disk C r n) P))
		(char-fun-of (boundary-of (cone (disk C r n) P)))))

(axiom
	def_char_fun_of_right_cone
	(C r n P)
	(= (char-fun-of (right-cone (disk C r n) P))
		(char-fun-of (boundary-of (right-cone (disk C r n) P)))))

(axiom
	def_char_fun_of_plane
	(s t u v)
	(= (char-fun-of (plane s t u v)) (char-fun-of (inner-part-of (plane s t u v)))))

(axiom
	def_char_fun_of_plane1
	(P Q R)
	(= (char-fun-of (plane1 P Q R)) (char-fun-of (inner-part-of (plane1 P Q R)))))

(axiom
	def_char_fun_of_plane2
	(P V)
	(= (char-fun-of (plane2 P V)) (char-fun-of (inner-part-of (plane2 P V)))))

(axiom
	def_char_fun_of_orthographic_projection
	(shape plane)
	(= (char-fun-of (orthographic-projection shape plane))
		(PLam p
			(&& (on p plane)
				(exists (q)
					(&& (on q shape)
						(vec-parallel (normal-vector-of plane) (vec p q)))
				)))))

(axiom
	def_char_fun_of_circle_3d
	(c r n)
	(= (char-fun-of (circle c r n)) (char-fun-of (circle-shape (circle c r n)))))

(axiom
	def_char_fun_of_disk_3d
	(c r n)
	(= (char-fun-of (disk c r n)) (char-fun-of (disk-shape (circle c r n)))))

(axiom
	def_char_fun_of_arc_3d
	(c p a n)
	(= (char-fun-of (arc c p a n))
		(char-fun-of (arc-shape (arc c p a n)))))

(axiom
	def_char_fun_of_circular_sector_3d
	(c p a n)
	(= (char-fun-of (circular-sector c p a n))
		(char-fun-of (circular-sector-shape (circular-sector c p a n)))))

(axiom
	def_char_fun_of_conical_surface
	(c r n P)
	(= (char-fun-of (conical-surface (circle c r n) P))
		(char-fun-of (with-boundary (conical-surface (circle c r n) P)))))

(axiom
	def_char_fun_of_right_conical_surface
	(c r n P)
	(= (char-fun-of (right-conical-surface (circle c r n) P))
		(char-fun-of (with-boundary (right-conical-surface (circle c r n) P)))))

(axiom
	def_char_fun_of_cylindrical_surface
	(c1 r1 n1 c2 r2 n2)
	(= (char-fun-of (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2)))
		(char-fun-of (with-boundary (cylindrical-surface (circle c1 r1 n1) (circle c2 r2 n2))))))


(axiom
    def_char_fun_of_imported_2d_shape
    (S)
    (= (char-fun-of (import-2d-shape S))
       (PLam p (&& (= (z-coord p) 0)
                   (2d.on (2d.point (x-coord p) (y-coord p)) S)))))

(axiom
 def_inside_of_generic_case_3d
 (S1 S2)
 (<-> (inside-of S1 S2)
      
      ;(forall (P) (-> (on P S1) (on P S2)))))
      (forall (P) (-> (on P S1) (point-inside-of P S2)))))

;(axiom
;	def_import_2d_set_of_cfun
;	(f)
;	(= (import-2d-shape (2d.set-of-cfun f))
;		(set-of-cfun (Lam x (Lam y (PLam z (&&
;			(= z 0)
;			(PLamApp (LamApp f x) y)
;		)))))
;	))
;
;(axiom
;	def_import_2d_shape_of_cpfun
;	(f)
;	(= (import-2d-shape (2d.shape-of-cpfun f))
;		(shape-of-cpfun (PLam P (&&
;			(= (z-coord P) 0)
;			(PLamApp f (2d.point (x-coord P) (y-coord P)))
;		)))
;	))
(axiom
  def_import_2d_shape
  (S)
  (= (import-2d-shape S)
     (set-of-cfun (Lam x (Lam y (PLam z
       (&& (= z 0)
           (PLamApp (2d.char-fun-of S) (2d.point x y)))))))))

(axiom
 def_import_2d_point
 (x y)
 (= (import-2d-point (2d.point x y))
    (point x y 0)
  )
)

(axiom
	def_solid_of_revolution
	(S P Q)
	(= (solid-of-revolution S (line P Q))
		(let ((H (vec->point (v- (vec (origin) q) (normal-vector-to (line P Q) q)))))
		  (shape-of-cpfun (PLam p
					(exists (q) (&&
						     (on q S)
						     (vec-perpendicular (vec P Q) (vec H p))
						     (= (distance^2 H q) (distance^2 H p))
				))
			))
		)))


;;@------------------------------------------------------------------------------
;;@ central axis of 3D objects
;;@------------------------------------------------------------------------------
(axiom
   def-central-axis-of-square-pyramid
   (P A B C D)
   (= (central-axis-of (square-pyramid P A B C D))
      (line P (center-of (square A B C D)))))

(axiom
   def-central-axis-of-pyramid
   (base P)
   (= (central-axis-of (pyramid base P))
      (line P (center-of base))))

(axiom
   def-central-axis-of-disk
   (C r n)
   (= (central-axis-of (disk C r n))
      (line C (vec-translate C n))))

(axiom
   def-central-axis-of-cone
   (base P)
   (= (central-axis-of (cone base P))
      (line P (center-of base))))

(axiom
   def-central-axis-of-conical-surface
   (base P)
   (= (central-axis-of (conical-surface base P))
      (line P (center-of base))))

(axiom
   def-central-axis-of-right-cone
   (base P)
   (= (central-axis-of (right-cone base P))
      (line P (center-of base))))

(axiom
   def-central-axis-of-right-conical-surface
   (base P)
   (= (central-axis-of (right-conical-surface base P))
      (line P (center-of base))))

(axiom
   def-central-axis-of-cylynder
   (base top)
   (= (central-axis-of (cylinder base top))
      (line (center-of base) (center-of top))))

(axiom
   def-central-axis-of-cylyndrical-surface
   (base top)
   (= (central-axis-of (cylindrical-surface base top))
      (line (center-of base) (center-of top))))

(axiom
   def-central-axis-of-prism
   (base n)
   (= (central-axis-of (prism base n))
      (line (center-of base) (vec-translate (center-of base) n))))
      

;;@------------------------------------------------------------------------------
;;@ Upper-region/lower-region
;;@------------------------------------------------------------------------------
(axiom
  def_upper_region_of
  (S)
  (= (upper-region-of S)
     (shape-of-cpfun (PLam p (exists (z) (&& (>= (z-coord p) z)
                                             (on (point (x-coord p)
                                                        (y-coord p)
                                                        z)
                                                 S)))))))

(axiom
  def_lower_region_of
  (S)
  (= (lower-region-of S)
     (shape-of-cpfun (PLam p (exists (z) (&& (<= (z-coord p) z)
                                             (on (point (x-coord p)
                                                        (y-coord p)
                                                        z)
                                                 S)))))))


(axiom
  def_upper_region_of_plane
  (s t u v)
  (= (upper-region-of (plane s t u v))
     (shape-of-cpfun (PLam p (>= (+ (* s (x-coord p)) (* t (y-coord p)) (* u (z-coord p))) v)))))

(axiom
  def_lower_region_of_plane
  (s t u v)
  (= (lower-region-of (plane s t u v))
     (shape-of-cpfun (PLam p (<= (+ (* s (x-coord p)) (* t (y-coord p)) (* u (z-coord p))) v)))))


;;@------------------------------------------------------------------------------
;;@ Intersection
;;@------------------------------------------------------------------------------
(axiom
  def_intersection_of_shapes_of_charfuns
  (f g)
  (= (intersection (set-of-cfun f) (set-of-cfun g))
     (set-of-cfun (Lam x (Lam y (PLam z (&& (PLamApp (LamApp (LamApp f x) y) z)
                                            (PLamApp (LamApp (LamApp g x) y) z))))))))

;;@------------------------------------------------------------------------------
;;@ Intersection, general case
;;@------------------------------------------------------------------------------
(axiom
  def_intersection_3d_generic_case
  (s1 s2)
  (= (intersection s1 s2)
     (shape-of-cpfun (PLam P (&& (on P s1) (on P s2))))))

;;@------------------------------------------------------------------------------
;;@ Equality between geometric objects and characteristic functions
;;@------------------------------------------------------------------------------
;;
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
  def_cfun_shape_line3d_equality
  (f a b c p q r)
  (<-> (= (set-of-cfun f) (line3d a b c p q r))
       (_expand_shape_eq (set-of-cfun f) (line3d a b c p q r))))
(axiom
  def_cfun_shape_plane_equality
  (f s t u v)
  (<-> (= (set-of-cfun f) (plane s t u v))
       (_expand_shape_eq (set-of-cfun f) (plane s t u v))))
(axiom
  def_cfun_shape_plane2_equality
  (f A U)
  (<-> (= (set-of-cfun f) (plane2 A U))
       (_expand_shape_eq (set-of-cfun f) (plane2 A U))))
(axiom
  def_cfun_shape_plane1_equality
  (f A B C)
  (<-> (= (set-of-cfun f) (plane1 A B C))
       (_expand_shape_eq (set-of-cfun f) (plane1 A B C))))
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
  (f c r n)
  (<-> (= (set-of-cfun f) (circle c r n))
       (_expand_shape_eq (set-of-cfun f) (circle c r n))))
(axiom
  def_cfun_shape_arc_equality
  (f c p a n)
  (<-> (= (set-of-cfun f) (arc c p a n))
       (_expand_shape_eq (set-of-cfun f) (arc c p a n))))
(axiom
  def_cfun_shape_sphere_equality
  (f c r)
  (<-> (= (set-of-cfun f) (sphere c r))
       (_expand_shape_eq (set-of-cfun f) (sphere c r))))

;; TODO: equality between set-of-cfun & other 3D shapes

;;@------------------------------------------------------------------------------
;;@ Overloaded concepts in 2D/3D geometry, part 2
;;@------------------------------------------------------------------------------
(include "axioms/geom-common-axioms2.lsp")
