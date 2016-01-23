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