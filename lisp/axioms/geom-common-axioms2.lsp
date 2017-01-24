(axiom
  def_area_of_intersection_binary
  (shape1 shape2)
  (= (area-of (intersection shape1 shape2))
     (area-of (shape-of-cpfun (char-fun-of (intersection shape1 shape2))))))

(axiom
  def_area_of_intersection_list
  (list)
  (= (area-of (intersection list))
     (area-of (shape-of-cpfun (char-fun-of (intersection list))))))

(axiom
  def_area_of_union_binary
  (shape1 shape2)
  (= (area-of (union shape1 shape2))
     (area-of (shape-of-cpfun (char-fun-of (union shape1 shape2))))))

(axiom
  def_area_of_union_list
  (list)
  (= (area-of (union list))
     (area-of (shape-of-cpfun (char-fun-of (union list))))))

(axiom
  def-point-shape-distance-generic
  (P S d)
  (<-> (= d (point-shape-distance P S))
       (&& (<= 0 d)
           (minimum (set-by-def (PLam dd (exists (p) 
                                                 (&& (on p S) 
                                                     (= dd (distance^2 p P))))))
                    (^ d 2)))))

(axiom
   def-point-shape-distance^2-generic
   (P S)
   (= (point-shape-distance^2 P S)
      (^ (point-shape-distance P S) 2)))

(axiom
  def-shape-shape-distance-generic
  (S1 S2 d)
  (<-> (= d (shape-shape-distance S1 S2))
       (&& (<= 0 d)
           (minimum (set-by-def (PLam dd (exists (P1 P2) 
                                                 (&& (on P1 S1) 
                                                     (on P2 S2)
                                                     (= dd (distance^2 P1 P2))))))
                    (^ d 2)))))

(axiom
   def-shape-shape-distance^2-generic
   (S1 S2)
   (= (shape-shape-distance^2 S1 S2)
      (^ (shape-shape-distance S1 S2) 2)))

(axiom
  def_point_symmetry_shape
  (G C)
  (<-> (point-symmetry-shape G C)
       (forall (P)
               (-> (on P G)
                   (exists (Q)
                           (&& (on Q G)
                               (point-symmetry P Q C)))))))

(axiom
  def_point_symmetry_shapes
  (G1 G2 C)
  (<-> (point-symmetry-shapes G1 G2 C)
       (&& (forall (P)
                   (-> (on P G1)
                       (exists (Q)
                               (&& (on Q G2)
                                   (point-symmetry P Q C)))))
           (forall (P)
                   (-> (on P G2)
                       (exists (Q)
                               (&& (on Q G1)
                                   (point-symmetry P Q C))))))))

(axiom
	def_line_symmetry_shape_general
	(S l)
	(<-> (line-symmetry-shape S l)
		(forall (P)
			(-> (on P S)
				(exists (Q)
					(&& (on Q S)
						(line-symmetry P Q l)))))))

(axiom
  def_line_symmetry_shapes
  (G1 G2 l)
  (<-> (line-symmetry-shapes G1 G2 l)
       (&& (= G1 (shape-of-cpfun (PLam P (exists (Q) (&& (on Q G2)
                                                         (line-symmetry P Q l))))))
           (= G2 (shape-of-cpfun (PLam Q (exists (P) (&& (on P G1)
                                                         (line-symmetry P Q l)))))))))

;; translation, general case

(axiom
  def_translate-general-function
  (S v)
  (= (translate S v)
	   (shape-of-cpfun (PLam p (on (vec-translate p (v- v)) S)))))

