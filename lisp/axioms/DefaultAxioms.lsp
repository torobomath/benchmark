(import "axioms/DefaultTypes.lsp")
(default-namespace)

; => Bool
;;# DONT_EXPORT
(axiom
  def_true
  ()
  (true))

;;# DONT_EXPORT
(axiom
  def_false
  ()
  (<-> (false)
       (! (true))))

;;# DONT_EXPORT
(axiom
  def_to_real
  (x)
  (= (to_real x) x))

;;------------------------------------------------------------------------------
;; variable
;;------------------------------------------------------------------------------
(axiom
 def-is-var
 (v)
 (is-var v))


;;------------------------------------------------------------------------------
;; Degree -> radian conversion
;;------------------------------------------------------------------------------
(axiom
 def_degree
 ()
 (= (Degree)
    (/ (Pi) 180)))

;;------------------------------------------------------------------------------
;; list
;;------------------------------------------------------------------------------

(axiom
  def-is-list
  (xs)
  (is-list xs))

(axiom
  def_equal_all_elem0
  ()
  (equal (nil)))


(axiom
  def_equal_all_elem1
  (x)
  (equal (cons x (nil))))

(axiom
 def_equal_all_elem2
 (x y xs)
 (<-> (equal (cons x (cons y xs)))
      (&& (= x y)
         (equal (cons y xs)))))

;; list operations

; (a -> b) -> (ListOf a) => (ListOf b)
(axiom
  def_map_on_nil
  (f)
  (= (map f (nil))
     (nil)))

(axiom
  def_map_on_cons
  (f hd tl)
  (= (map f (cons hd tl))
     (cons (LamApp f hd) (map f tl))))

(axiom
  def-map-eq-rec
  (f hd tl xs)
  (<-> (= (cons hd tl) (map f xs))
       (exists (x1 xs1)
         (&& (= xs (cons x1 xs1))
             (= hd (LamApp f x1))
             (= tl (map f xs1))))))

(axiom
  def-map-eq-base
  (f xs)
  (<-> (= (nil) (map f xs))
       (= (nil) xs)))

; (a => b -> b) -> b -> (ListOf a) => b
(axiom
 def_foldr_on_nil
 (f res)
 (= (foldr f res (nil))
    res))

(axiom
  def_foldr_on_cons
  (f res hd tl)
  (= (foldr f res (cons hd tl))
     (foldr f (LamApp (LamApp f hd) res) tl)))

(axiom
  def_car
  (x xs)
    (= (car (cons x xs))
         x))

(axiom
  def_cdr
  (x xs)
    (= (cdr (cons x xs))
         xs))

(axiom
 def_cadr
 (x1 x2 xs)
 (= (cadr (cons x1 (cons x2 xs)))
    x2))

(axiom
 def_caddr
 (x1 x2 x3 xs)
 (= (caddr (cons x1 (cons x2 (cons x3 xs))))
    x3))

(axiom
 def_cadddr
 (x1 x2 x3 x4 xs)
 (= (cadddr (cons x1 (cons x2 (cons x3 (cons x4 xs)))))
    x4))

(axiom
 def_last
 (x)
 (= (last (cons x (nil)))
    x))

(axiom
 def_last_rec
 (x y tl)
 (= (last (cons x (cons y tl)))
    (last (cons y tl))))

;; all but the last element in the list
(axiom
 def_butlast_nil
 ()
 (= (butlast (nil))
    (nil)))
   
(axiom
 def_butlast_base
 (x)
 (= (butlast (cons x (nil)))
    (nil)))

(axiom
 def_butlast_rec
 (x tl)
 (= (butlast (cons x tl))
    (cons x (butlast tl))))

;; is-prefix-of :: (ListOf a) -> (ListOf a) => Bool
(axiom
  def_is_prefix_of_nil1
	(lis)
	(is-prefix-of (nil) lis))

(axiom
  def_is_prefix_of_nil2
	(x xs)
	;(! (is-prefix-of (cons x xs) (nil))))
	(<-> (is-prefix-of (cons x xs) (nil))
         (false)))

(axiom
  def_is_prefix_of_cons
	(x xs y ys)
	(<-> (is-prefix-of (cons x xs) (cons y ys))
			 (&& (= x y)
					 (is-prefix-of xs ys))))

;; is-infix-of :: (ListOf a) -> (ListOf a) => Bool
(axiom
  def_is_infix_of_nil
	(lis)
	(<-> (is-infix-of lis (nil))
         (false)))

(axiom
  def_is_infix_of_cons
  (xs ys)
  (<-> (is-infix-of xs ys)
       (|| (is-prefix-of xs ys)
           (is-infix-of xs (cdr ys)))))
	

; (a -> a -> a) -> (listOf a) => a
(axiom
 def_foldr1_on_singleton
 (f x)
 (= (foldr1 f (cons x (nil)))
    x))

(axiom
 def_foldr1_on_cons
 (f hd tl)
 (= (foldr1 f (cons hd tl))
    (LamApp (LamApp f hd) (foldr1 f tl))))


; all :: (a -> Bool) -> (ListOf a) => Bool)
(axiom
  def_all_0
  (f)
  (all f (nil)))

(axiom
  def_all_rec
  (f x xs)
  (<-> (all f (cons x xs))
       (&& (PLamApp f x)
           (all f xs))))

; combinatorial-all :: (a -> a -> Bool) -> (ListOf a) => Bool
(axiom
	def_combinatorial_all_base_case
	(pred)
	(<-> (combinatorial-all pred (nil)) (true)))

(axiom
  def_combinatorial_all_rec
  (pred x xs)
  (<-> (combinatorial-all pred (cons x xs))
       (&& (all (PLam y (PLamApp (LamApp pred x) y)) xs)
           (combinatorial-all pred xs))))

; combinatorial-some :: (a -> a -> Bool) -> (ListOf a) => Bool
(axiom
	def_combinatorial_some_base_case
	(pred)
	(<-> (combinatorial-some pred (nil)) (false)))

(axiom
  def_combinatorial_some_rec
  (pred x xs)
  (<-> (combinatorial-some pred (cons x xs))
       (|| (some (PLam y (PLamApp (LamApp pred x) y)) xs)
           (combinatorial-some pred xs))))

; cyclic-all :: (a -> a -> a -> Bool) -> (ListOf a) => Bool
(axiom
	def_cyclic_all_base_case0
	(pred)
	(<-> (cyclic-all pred (nil)) (true)))
(axiom
	def_cyclic_all_base_case1
	(pred p0)
	(<-> (cyclic-all pred (cons p0 (nil))) (true)))
(axiom
	def_cyclic_all_base_case2
	(pred p0 p1)
	(<-> (cyclic-all pred (cons p0 (cons p1 (nil)))) (true)))

(def-pred cyclic-all-rec ::  (a -> a -> a -> Bool) -> (ListOf a) => Bool) 
(axiom
  def_cyclic_all_rec_base_case2
  (pred p0 p1 )
  (<-> (cyclic-all-rec pred (cons p0 (cons p1 (nil))))
       (true)))
(axiom
  def_cyclic_all_rec_base_case3
  (pred p0 p1 p2)
  (<-> (cyclic-all-rec pred (cons p0 (cons p1 (cons p2 (nil)))))
       (PLamApp (LamApp (LamApp pred p0) p1) p2)))
(axiom
  def_cyclic_all_rec
  (pred p0 p1 p2 ps)
  (<-> (cyclic-all-rec pred (cons p0 (cons p1 (cons p2 ps))))
       (&& (PLamApp (LamApp (LamApp pred p0) p1) p2)
           (cyclic-all-rec pred (cons p1 (cons p2 ps))))))

(axiom
  def_cyclic_all
  (pred list)
  (<-> (cyclic-all pred list)
       (&& (PLamApp (LamApp (LamApp pred (last (butlast list))) (last list)) (car list))
           (PLamApp (LamApp (LamApp pred (last list)) (car list)) (cadr list))
           (PLamApp (LamApp (LamApp pred (car list)) (cadr list)) (caddr list))
           (cyclic-all-rec pred (cdr list)))))

; cyclic-some :: (a -> a -> a -> Bool) -> (ListOf a) => Bool
(axiom
  def_cyclic_some_base_case0
  (pred)
  (<-> (cyclic-some pred (nil)) (false)))
(axiom
  def_cyclic_some_base_case1
  (pred p0)
  (<-> (cyclic-some pred (cons p0 (nil))) (false)))
(axiom
  def_cyclic_some_base_case2
  (pred p0 p1)
  (<-> (cyclic-some pred (cons p0 (cons p1 (nil)))) (false)))

(def-pred cyclic-some-rec ::  (a -> a -> a -> Bool) -> (ListOf a) => Bool) 
(axiom
  def_cyclic_some_rec_base_case2
  (pred p0 p1 )
  (<-> (cyclic-some-rec pred (cons p0 (cons p1 (nil))))
       (false)))
(axiom
  def_cyclic_some_rec_base_case3
  (pred p0 p1 p2)
  (<-> (cyclic-some-rec pred (cons p0 (cons p1 (cons p2 (nil)))))
       (PLamApp (LamApp (LamApp pred p0) p1) p2)))
(axiom
  def_cyclic_some_rec
  (pred p0 p1 p2 ps)
  (<-> (cyclic-some-rec pred (cons p0 (cons p1 (cons p2 ps))))
       (|| (PLamApp (LamApp (LamApp pred p0) p1) p2)
           (cyclic-some-rec pred (cons p1 (cons p2 ps))))))

(axiom
  def_cyclic_some
  (pred list)
  (<-> (cyclic-some pred list)
       (|| (PLamApp (LamApp (LamApp pred (last (butlast list))) (last list)) (car list))
           (PLamApp (LamApp (LamApp pred (last list)) (car list)) (cadr list))
           (PLamApp (LamApp (LamApp pred (car list)) (cadr list)) (caddr list))
           (cyclic-some-rec pred (cdr list)))))

(axiom
  def_some_0
  (f)
  (<-> (some f (nil))
       (false)))
(axiom
  def_some_rec
  (f x xs)
  (<-> (some f (cons x xs))
       (|| (PLamApp f x)
           (some f xs))))

(axiom
  def_all2_nil_case1
  (pred xs)
  (<-> (all2 pred xs (nil))
       (= xs (nil))))

(axiom
  def_all2_nil_case2
  (pred ys)
  (<-> (all2 pred (nil) ys)
       (= ys (nil))))

(axiom
  def_all2_cons_case1
  (pred x xs y ys)
  (<-> (all2 pred (cons x xs) (cons y ys))
       (&& (PLamApp (LamApp pred x) y)
           (all2 pred xs ys))))

(axiom
  def_all2_cons_case2
  (pred x xs ys)
  (<-> (all2 pred (cons x xs) ys)
       (exists (y ys1)
               (&& (= ys (cons y ys1))
                   (PLamApp (LamApp pred x) y)
                   (all2 pred xs ys1)))))
(axiom
  def_all2_cons_case3
  (pred xs y ys)
  (<-> (all2 pred xs (cons y ys))
       (exists (x xs1)
               (&& (= xs (cons x xs1))
                   (PLamApp (LamApp pred x) y)
                   (all2 pred xs1 ys)))))

(axiom
  def_list_equality0
  ()
  (<-> (= (nil) (nil))
       (true)))
(axiom
  def_list_equality_rec
  (x xs y ys)
  (<-> (= (cons x xs) (cons y ys))
       (&& (= x y)
          (= xs ys))))

(axiom
  def_list_equality_not_equal1
  (x xs)
  (<-> (= (cons x xs) (nil))
       (false)))

(axiom
  def_list_equality_not_equal2
  (x xs)
  (<-> (= (nil) (cons x xs))
       (false)))

(axiom
  def_member_0
  (x)
  (<-> (member x (nil))
       (false)))

(axiom
  def_member_rec
  (x y ys)
  (<-> (member x (cons y ys))
       (|| (= x y)
           (member x ys))))


;; a -> (ListOf a) => (ListOf a)
(axiom
  def_delete_nil
  (x)
  (= (delete x (nil))
     (nil)))

(axiom
  def_delete_cons
  (x y ys)
  (= (delete x (cons y ys))
     (if (= x y) ys
       (cons y (delete x ys)))))

;;remove :: a -> (ListOf a) => (ListOf a)
(axiom
  def_remove_x_nil
  (x)
  (= (remove x (nil)) (nil)))

(axiom
  def_remove_rec_cons
  (x yhd ytl)
  (= (remove x (cons yhd ytl))
     (LamApp (Lam tl (if (= x yhd)
                       tl
                       (cons yhd tl)))
             (remove x ytl))))
                    


;; remove-list :: (ListOf a) -> (ListOf a) => (ListOf a)
(axiom
  def_remove_list_x_nil
  (x)
  (= (remove-list x (nil)) (nil)))

(axiom
  def_remove_list_nil_y
  (y)
  (= (remove-list (nil) y) y))

(axiom
  def_remove_list_rec_cons
  (xhd xtl y)
  (= (remove-list (cons xhd xtl) y)
     (remove-list xtl (remove xhd y))))

(axiom
  def_circular_shift_nil
  ()
  (= (circular-shift (nil)) (nil)))

(axiom
  def_circular_shift
  (xs)
  (= (circular-shift xs) (cons (last xs) (butlast xs))))


;; (ListOf a) => Bool
(axiom
  def_pairwise_distinct_nil_case
  ()
  (pairwise-distinct (nil)))

(axiom
  def_pairwise_distinct_cons_case
  (x xs)
  (<-> (pairwise-distinct (cons x xs))
       (&& (all (PLam y (! (= x y))) xs)
           (pairwise-distinct xs))))


;; filter :: (a -> Bool) -> (ListOf a) => (ListOf a)
(axiom
  def_filter_nil
  (f)
  (= (filter f (nil))
     (nil)))

(axiom
  def_filter_cons
  (f x xs)
  (= (filter f (cons x xs))
     (if (PLamApp f x) (cons x (filter f xs))
       (filter f xs))))



;; (ListOf a) => (ListOf a)
(axiom
  def_remove_repetition_nil_case
  ()
  (= (remove-repetition (nil))
     (nil)))

(axiom
  def_remove_repetition_cons_case
  (x xs)
  (= (remove-repetition (cons x xs))
     (cons x (remove-repetition (filter (PLam y (! (= x y))) xs)))))

(axiom
  def_list_int->real_base
  ()
  (= (list-int->real (nil)) (nil)))

(axiom
  def_list_int->real_rec
  (n ns)
  (= (list-int->real (cons n ns))
     (cons (int->real n) (list-int->real ns))))

;;----
;;----
(def-fun _permutations :: (ListOf a) => (ListOf (ListOf a)))
(def-fun _insert :: a -> ((ListOf a) -> (ListOf a)) -> (ListOf a) => (ListOf (ListOf a)))
(axiom
  def-insert-nil
  (x prefix)
  (= (_insert x prefix (nil))
     (list-of (LamApp prefix (list-of x)))))
(axiom
  def-insert-rec
  (x prefix s suffix)
  (= (_insert x prefix (cons s suffix))
     (cons (LamApp prefix (cons x (cons s suffix)))
           (_insert x (Lam tail (LamApp prefix (cons s tail))) suffix))))

(axiom
  def-permutations-nil
  ()
  (= (_permutations (nil))
     (list-of (nil))))
(axiom
  def-permutations-rec
  (x xs)
  (= (_permutations (cons x xs))
     (foldr1
       (Lam ps1 (Lam ps2 (append ps1 ps2)))
       (map (Lam ps (_insert x (Lam x_ x_) ps))
            (_permutations xs)))))

(axiom
 def_is_a_permutation_of_nil1
 (xs)
 (<-> (is-a-permutation-of (nil) xs)
      (= (nil) xs)))
(axiom
 def_is_a_permutation_of_nil2
 (xs)
 (<-> (is-a-permutation-of xs (nil))
      (= (nil) xs)))

(axiom
 def_is_a_permutation_of_len1_1
 (xs y)
 (<-> (is-a-permutation-of (list-of y) xs)
      (= (list-of y) xs)))
(axiom
 def_is_a_permutation_of_len1_2
 (xs y)
 (<-> (is-a-permutation-of xs (list-of y))
      (= (list-of y) xs)))

(axiom
 def_is_a_permutation_of_len2_1
 (xs y1 y2)
 (<-> (is-a-permutation-of (list-of y1 y2) xs)
      (|| (= (list-of y1 y2) xs)
          (= (list-of y2 y1) xs))))
(axiom
 def_is_a_permutation_of_len2_2
 (xs y1 y2)
 (<-> (is-a-permutation-of xs (list-of y1 y2))
      (is-a-permutation-of (list-of y1 y2) xs)))

(axiom
 def_is_a_permutation_of_len3_1
 (xs y1 y2 y3)
 (<-> (is-a-permutation-of (list-of y1 y2 y3) xs)
      (member xs (_permutations (list-of y1 y2 y3)))))
(axiom
 def_is_a_permutation_of_len3_2
 (xs y1 y2 y3)
 (<-> (is-a-permutation-of xs (list-of y1 y2 y3))
      (is-a-permutation-of (list-of y1 y2 y3) xs)))

(axiom
 def_is_a_permutation_of_len4_1
 (xs y1 y2 y3 y4)
 (<-> (is-a-permutation-of (list-of y1 y2 y3 y4) xs)
      (member xs (_permutations (list-of y1 y2 y3 y4)))))
(axiom
 def_is_a_permutation_of_len4_2
 (xs y1 y2 y3 y4)
 (<-> (is-a-permutation-of xs (list-of y1 y2 y3 y4))
      (is-a-permutation-of (list-of y1 y2 y3 y4) xs)))


(axiom
  def_is_a_permutation_of_cons
  (x xs lis)
  (<-> (is-a-permutation-of (cons x xs) lis)
       (&& (member x lis)
           (is-a-permutation-of xs (delete x lis)))))

(axiom
  def_is_a_permutation_of_cons2
  (x xs lis)
  (<-> (is-a-permutation-of lis (cons x xs))
       (&& (member x lis)
           (is-a-permutation-of xs (delete x lis)))))
					 


(axiom
 def-is-subset-list-of
 (xs ys)
 (<-> (is-subset-list-of xs ys)
      (forall (x) (-> (member x xs)
                      (member x ys)))))

;; zip-with :: (a -> b -> c) -> (ListOf a) -> (ListOf b) => (ListOf c)
(axiom
 def-zip-with-nil1
 (f as)
 (= (zip-with f as (nil))
    (nil)))

(axiom
 def-zip-with-nil2
 (f bs)
 (= (zip-with f (nil) bs)
    (nil)))

(axiom
 def-zip-with-rec
 (f a as b bs)
 (= (zip-with f (cons a as) (cons b bs))
    (cons (LamApp (LamApp f a) b) (zip-with f as bs))))


;; is-increasing-list :: (ListOf R) => Bool
(axiom
  is-increasing-list-nil
	()
	(is-increasing-list (nil)))

(axiom
  is-increasing-list-1
	(x)
	(is-increasing-list (list-of x)))

(axiom
  is-increasing-list-cons
	(x0 x1 xs)
	(<-> (is-increasing-list (cons x0 (cons x1 xs)))
			 (&& (<= x0 x1)
					 (is-increasing-list (cons x1 xs)))))


;; is-decreasing-list :: (ListOf R) => Bool
(axiom
  is-decreasing-list-nil
	()
	(is-decreasing-list (nil)))

(axiom
  is-decreasing-list-1
	(x)
	(is-decreasing-list (list-of x)))

(axiom
  is-decreasing-list-cons
	(x0 x1 xs)
	(<-> (is-decreasing-list (cons x0 (cons x1 xs)))
			 (&& (>= x0 x1)
					 (is-decreasing-list (cons x1 xs)))))

(axiom
  eq-order-dir-asc
  ()
  (<-> (= (ascending-order) (ascending-order))
       (true)))

(axiom
  eq-order-dir-dsc
  ()
  (<-> (= (descending-order) (descending-order))
       (true)))

(axiom
  neq-order-dir
  ()
  (<-> (= (ascending-order) (descending-order))
       (false)))

;;------------------------------------------------------------------------------
;; higher-order functions
;;------------------------------------------------------------------------------
(axiom
  def-function-composition
  (f g)
  (= (compose f g)
     (Lam x (LamApp f (LamApp g x)))))

;;------------------------------------------------------------------------------
;; tuple
;;------------------------------------------------------------------------------
;; preds for type inference
(axiom
  def_is_pair
  (ab)
  (is-pair ab))

(axiom
  def_is_triple
  (abc)
  (is-triple abc))

(axiom
  def_is_tuple4
  (abcd)
  (is-tuple4 abcd))

;; equality
(axiom
  def_pair_equality
  (a1 b1
   a2 b2)
  (<-> (= (pair a1 b1)
          (pair a2 b2))
       (&& (= a1 a2)
           (= b1 b2))))

(axiom
  def_triple_equality
  (a1 b1 c1
   a2 b2 c2)
  (<-> (= (triple a1 b1 c1)
          (triple a2 b2 c2))
       (&& (= a1 a2)
           (= b1 b2)
           (= c1 c2))))

(axiom
  def_tuple4_equality
  (a1 b1 c1 d1
   a2 b2 c2 d2)
  (<-> (= (tuple4 a1 b1 c1 d1)
          (tuple4 a2 b2 c2 d2))
       (&& (= a1 a2)
           (= b1 b2)
           (= c1 c2)
           (= d1 d2))))

(axiom
 def_fst_of_pair
 (a b)
 (= (fst (pair a b)) a))

(axiom
 def_snd_of_pair
 (a b)
 (= (snd (pair a b)) b))

(axiom
 def_fst_of_triple
 (a b c)
 (= (fst-of-3 (triple a b c)) a))

(axiom
 def_snd_of_triple
 (a b c)
 (= (snd-of-3 (triple a b c)) b))

(axiom
 def_third_of_triple
 (a b c)
 (= (third-of-3 (triple a b c)) c))

(axiom
 def_fst_of_tuple4
 (a b c d)
 (= (fst-of-4 (tuple4 a b c d)) a))

(axiom
 def_snd_of_tuple4
 (a b c d)
 (= (snd-of-4 (tuple4 a b c d)) b))

(axiom
 def_third_of_tuple4
 (a b c d)
 (= (third-of-4 (tuple4 a b c d)) c))

(axiom
 def_fourth_of_tuple4
 (a b c d)
 (= (fourth-of-4 (tuple4 a b c d)) d))

(axiom
 def_zip_nil1
 (xs)
 (= (zip xs (nil))
    (nil)))

(axiom
 def_zip_nil2
 (ys)
 (= (zip (nil) ys)
    (nil)))

(axiom
 def_zip_rec
 (x xs y ys)
 (= (zip (cons x xs) (cons y ys))
    (cons (pair x y) (zip xs ys))))

(axiom
 def_append_nil
 (ys)
 (= (append (nil) ys) ys))

(axiom
 def_append_cons
 (x xs ys)
 (= (append (cons x xs) ys)
    (cons x (append xs ys))))

(axiom
  def-uncurry
  (f)
  (= (uncurry f)
     (Lam p (LamApp (LamApp f (fst p)) (snd p)))))
    
(axiom
  def-p-uncurry
  (f)
  (= (p-uncurry f)
     (PLam p (PLamApp (LamApp f (fst p)) (snd p)))))

(axiom
  def-all-pairs-cons
  (x xs)
  (= (all-pairs (cons x xs))
     (append (map (Lam y (pair x y)) xs)
             (all-pairs xs))))
(axiom
  def-all-pairs-nil
  ()
  (= (all-pairs (nil))
     (nil)))

;;------------------------------------------------------------------------------
;; logical connectives as predicates on formulas
;;------------------------------------------------------------------------------
(axiom
 def_conj1
 (f g)
 (= (conj1 f g)
    (PLam x (&& (PLamApp f x)
               (PLamApp g x)))))
(axiom
  def_conj2
  (f g)
  (= (conj2 f g)
     (Lam x (PLam y (&& (PLamApp (LamApp f x) y)
                       (PLamApp (LamApp g x) y))))))

;;------------------------------------------------------------------------------
;; Set
;;------------------------------------------------------------------------------

; elem :: a -> (SetOf a) => Bool
(axiom
  def_set_elem
  (x def)
  (<-> (elem x (set-by-def def))
       (PLamApp def x)))

(axiom
  def_set_image
  (fun def)
  (= (image fun (set-by-def def))
     (set-by-def (PLam x (exists (y)
                                 (&& (PLamApp def y)
                                     (= x (LamApp fun y))))))))

(axiom
  def_finset_base
  ()
  (= (finset (nil))
     (set-by-def (PLam x (false)))))

(axiom
  def_finset_rec
  (x xs)
  (= (finset (cons x xs))
     (set-by-def (PLam y (|| (= y x) 
                             (elem y (finset xs)))))))

; is-set :: (SetOf a) => Bool
(axiom
  def_is_set
  (s)
  (is-set s))

(axiom
  def_set_equality
  (f g)
  (<-> (= (set-by-def f) (set-by-def g))
       (= f g)))


;; is-empty :: (SetOf a) => Bool
(axiom
  def_is_empty
  (a)
  (<-> (is-empty a)
       (forall (x) (! (elem x a)))))

(axiom
  def-empty-set
  ()
  (= (empty-set)
     (set-by-def (PLam x (false)))))

;; is-singleton :: (SetOf a) => Bool
(axiom
  def_is_singleton
  (a)
  (<-> (is-singleton a)
       
       ;(forall (x y) (|| (! (elem x a))
       ;                  (! (elem y a))
       ;                  (= x y)))))
       (exists (x)
          (= a (set-by-def (PLam y (= y x)))))))
(axiom
 def-is-subset-of
 (A B)
 (<-> (is-subset-of A B)
      (forall (a) (-> (elem a A)
                      (elem a B)))))


(axiom
 def-pairwise-disjoint
 (A)
 (<-> (pairwise-disjoint A)
      (forall (x y)
              (-> (&& (! (= x y)) (elem x A) (elem y A))
                  (is-empty (set-intersection x y))))))
       


;; complement-of-in :: (SetOf a) -> (SetOf a) => (SetOf a)
(axiom
 def-complement-of-in
 (s u)
 (= (complement-of-in s u)
    (set-by-def (PLam x (&& (! (elem x s))
                            (elem x u))))))

;; set-union :: (SetOf a) -> (SetOf a) => (SetOf a)
(axiom
 def-set-union 
 (s1 s2)
 (= (set-union s1 s2)
    (set-by-def (PLam x (|| (elem x s1) (elem x s2))))))

(axiom
  def-set-union-n
  (ss)
  (= (set-union ss)
     (set-by-def (PLam x (some (PLam s (elem x s)) ss)))))

;; set-intersection :: (SetOf a) -> (SetOf a) => (SetOf a)
(axiom
 def-set-intersection 
 (s1 s2)
 (= (set-intersection s1 s2)
    (set-by-def (PLam x (&& (elem x s1) (elem x s2))))))

(axiom
  def-set-intersection-n
  (ss)
  (= (set-intersection ss)
     (set-by-def (PLam x (all (PLam s (elem x s)) ss)))))

(axiom
 def-is-cardinality-of-0
 (s)
 (<-> (is-cardinality-of 0 s)
      (is-empty s)))

(axiom
 def-is-cardinality-of-1
 (s)
 (<-> (is-cardinality-of 1 s)
      (is-singleton s)))

(axiom
 def-is-cardinality-of-2
 (s)
 (<-> (is-cardinality-of 2 s)
      (exists (e1 e2)
         (&& (elem e1 s)
             (elem e2 s)
             (! (= e1 e2))
             (forall (e) (-> (elem e s)
                             (|| (= e e1)
                                 (= e e2))))))))
(axiom
 def-is-cardinality-of-3
 (s)
 (<-> (is-cardinality-of 3 s)
      (exists (e1 e2 e3)
         (&& (elem e1 s)
             (elem e2 s)
             (elem e3 s)
             (pairwise-distinct (list-of e1 e2 e3))
             (forall (e) (-> (elem e s)
                             (|| (= e e1)
                                 (= e e2)
                                 (= e e3))))))))
(axiom
 def-is-cardinality-of-4
 (s)
 (<-> (is-cardinality-of 4 s)
      (exists (e1 e2 e3 e4)
         (&& (elem e1 s)
             (elem e2 s)
             (elem e3 s)
             (elem e4 s)
             (pairwise-distinct (list-of e1 e2 e3 e4))
             (forall (e) (-> (elem e s)
                             (|| (= e e1)
                                 (= e e2)
                                 (= e e3)
                                 (= e e4))))))))

(axiom
 def-cardinality-of-eq-0
 (s)
 (<-> (= (cardinality-of s) 0)
      (is-cardinality-of 0 s)))

(axiom
 def-cardinality-of-eq-1
 (s)
 (<-> (= (cardinality-of s) 1)
      (is-cardinality-of 1 s)))

(axiom
 def-cardinality-of-eq-2
 (s)
 (<-> (= (cardinality-of s) 2)
      (is-cardinality-of 2 s)))

(axiom
 def-cardinality-of-eq-3
 (s)
 (<-> (= (cardinality-of s) 3)
      (is-cardinality-of 3 s)))

(axiom
 def-cardinality-of-eq-4
 (s)
 (<-> (= (cardinality-of s) 4)
      (is-cardinality-of 4 s)))

(axiom
  def-list-is-belong-to-set-nil
  (s)
  (is-list-subset-of (nil) s))

(axiom
  def-list-is-belong-to-set
  (p ps s)
  (<-> (is-list-subset-of (cons p ps) s)
       (&& (elem p s)
           (is-list-subset-of ps s))))

;(axiom
;  def-is-general-cardinality
;  (s n)
;  (<-> (is-cardinality-of n s)
;       (exists (el)
;               (&& (pairwise-distinct el)
;                   (is-list-subset-of el s)
;                   (= (list-len el) n)))))


(axiom
  def-is-upper-bound-of
  (ub s)
  (<-> (is-upper-bound-of ub (set-by-def s))
       (forall (e) (-> (PLamApp s e)
                       (<= e ub)))))

(axiom
  def-is-lower-bound-of
  (lb s)
  (<-> (is-lower-bound-of lb (set-by-def s))
       (forall (e) (-> (PLamApp s e)
                       (<= lb e)))))

(axiom
  def-is-sup-of
  (s sup)
  (<-> (is-sup-of sup (set-by-def s))
       (&& (is-upper-bound-of sup (set-by-def s))
           (forall (ub) (-> (is-upper-bound-of ub (set-by-def s))
                            (<= sup ub))))))

(axiom
  def-is-inf-of
  (s inf)
  (<-> (is-inf-of inf (set-by-def s))
       (&& (is-lower-bound-of inf (set-by-def s))
           (forall (lb) (-> (is-lower-bound-of lb (set-by-def s))
                            (<= lb inf))))))
;;------------------------------------------------------------------------------
; (SetOf a) => Bool
(axiom
  def_is_range
  (r)
  (is-range r))

;;------------------------------------------------------------------------------
;; basic arithmetic operations
;;------------------------------------------------------------------------------

;; any real is 'a constant'
(axiom
  def_constant
  (x)
  (constant x))

(axiom
  def_real_number
  (x)
  (real-number x))

(axiom
  def_number
  (x)
  (is-number x))

(axiom
  def_real_type
  (x)
  (real-type x))

(axiom
  def_is_floor_of
  (n x)
  (<-> (is-floor-of n x)
       (&& (<= 0 (- x (int->real n)))
           (<  (- x (int->real n)) 1))))

;;2013/11/16 suzuki
(axiom
 def_is_someint
 (x)
 (<-> (is-someint x)
      
      (is-integer x)))
      ;(= (floor x) x)))

;(axiom
; def_is_integer
; (x)
; (<-> (is-integer x)
;      (= (floor x) x)))

(axiom
   def-real-is-natural-number
   (x)
   (<-> (is-natural-number x)
        (&& (is-integer x)
            (<= 1 x))))

;;# DONT_EXPORT
(axiom
  def_is_rational
  (x)
  (<-> (is-rational x)
       (exists (m n) 
               (= x (/ (int->real n) (int->real m))))))

;;# DONT_EXPORT
(axiom
  def_is_rational_number
  (x)
  (<-> (is-rational-number x)
       (exists (m n) 
               (= x (/ (int->real n) (int->real m))))))
	

(axiom
  def_is_irrational
  (x)
  (<-> (is-irrational x)
	   (! (is-rational x))))
	

(axiom
  def_is_fractional_part_of
  (x y)
  (<-> (is-fractional-part-of x y)
       (exists (n)
               (&& (is-floor-of n y)
                   (= x (- y (int->real n)))))))

;; arithmetic and geometric mean
(axiom
  def_mean
    (x y)
    (= (mean x y)
         (/ (+ x y) 2)))

(axiom
  def_geom_mean
    (x y)
    (= (geom-mean x y)
         (^ (* x y) (/ 1 2))))

(axiom
 def-are-triangle-edges
 (x y z)
 (<-> (are-triangle-edges x y z)
      ; 2015-01-11: x,y,z>0 needed (matuzaki)
      ;(> (* (+ x y z) (+ y z (- x)) (+ x z (- y)) (+ y x (- z))) 0)
      (&& (< 0 x)
          (< 0 y)
          (< 0 z)
          (< x (+ y z))
          (< y (+ z x))
          (< z (+ x y)))))

;; min, max
(axiom
  def-binary-min
  (x y)
  (= (min x y)
     (if (< x y) x y)))


(axiom
  def-binary-max
  (x y)
  (= (max x y)
     (if (< x y) y x)))


;; list-min, list-max
(axiom
  def-list-min-1
	(x)
	(= (list-min (list-of x))
		 x))

(axiom
 def-list-min-cons
 (x0 x1 xs)
 (= (list-min (cons x0 (cons x1 xs)))
		(min x0 (list-min (cons x1 xs)))))


(axiom
  def-list-max-1
	(x)
	(= (list-max (list-of x))
		 x))

(axiom
 def-list-max-cons
 (x0 x1 xs)
 (= (list-max (cons x0 (cons x1 xs)))
		(max x0 (list-max (cons x1 xs)))))

	


; difference :: (ListOf R) => R) ;; TODO: use tuple
(axiom
  def_difference
  (x y)
  (= (difference (cons x (cons y (nil))))
     (abs (- x y))))

; sum :: (ListOf R) => R
(axiom
 def_sum_nil
 ()
 (= (sum (nil)) 0))

(axiom
 def_sum_cons
 (x xs)
 (= (sum (cons x xs))
    (+ x (sum xs))))

; product :: (ListOf R) => R
(axiom
 def_product_nil
 ()
 (= (product (nil)) 1))

(axiom
 def_product_cons
 (x xs)
 (= (product (cons x xs))
    (* x (product xs))))


;; is-abs-of :: R -> R => Bool
(axiom
  def_is_abs_of
  (x y)
  (<-> (is-abs-of x y)
       (&& (<= 0 x)
           (|| (= x y)
               (= x (- y))))))



;;------------------------------------------------------------------------------
;; Function
;;------------------------------------------------------------------------------
(axiom
  def_is_function
  (f)
  (is-function f))


(axiom
  def_fun_equality
  (f1 f2)
  (<-> (= (fun f1) (fun f2))
       (= f1 f2)))

;; R2R => Bool
(axiom
  def_is_constant_func
  (f)
  (<-> (is-constant-func f)
       (exists (c) (forall (x) (= c (funapp f x))))))

;; TORIAEZU
(axiom
  def_is_polynominal
  (f)
  (is-polynomial f))

(axiom
 def_fun+
 (f g)
 (= (fun+ f g)
    (fun (Lam x (+ (funapp f x) (funapp g x))))))

(axiom
 def_fun-
 (f g)
 (= (fun- f g)
    (fun (Lam x (- (funapp f x) (funapp g x))))))

(axiom
 def_fun*
 (f g)
 (= (fun* f g)
    (fun (Lam x (* (funapp f x) (funapp g x))))))

(axiom
 def_fun-s*
 (a f)
 (= (fun-s* a f)
    (fun (Lam x (* a (funapp f x))))))

(axiom
 def-fun-sum-nil
 ()
 (= (fun-sum (nil))
    (fun (Lam x 0))))

(axiom
 def-fun-sum-cons
 (f fs)
 (= (fun-sum (cons f fs))
    (fun+ f (fun-sum fs))))

(axiom
 def-fun-product-nil
 ()
 (= (fun-product (nil))
    (fun (Lam x 1))))

(axiom
 def-fun-product-cons
 (f fs)
 (= (fun-product (cons f fs))
    (fun* f (fun-product fs))))

;; range of a function
(axiom
  def-fun-range
  (f)
  (= (fun-range f)
     (set-by-def (PLam y (exists (x) (= y (funapp f x)))))))

(axiom
  def_increasing_at
  (f x)
  (<-> (increasing-at f x)
       (<= 0 (funapp (derivative f) x)))) ;; < ?

(axiom
  def_decreasing_at
  (f x)
  (<-> (decreasing-at f x)
       (>= 0 (funapp (derivative f) x)))) ;; < ?

(axiom
  def_mono_increasing
  (f)
  (<-> (monotonically-increasing f)
	   (forall (x) (<= 0 (funapp (derivative f) x)))))


(axiom
  def_mono_decreasing
  (f)
  (<-> (monotonically-decreasing f)
	   (forall (x) (>= 0 (funapp (derivative f) x)))))

(axiom
  def_funapp
  (f x)
  (= (funapp (fun f) x)
     (LamApp f x)))

(axiom
  def_derivative
  (f)
  (= (derivative (fun f))
     (fun (deriv f))))

(axiom
 def_integration
 (a b f)
 (= (integration (fun f) a b)
    (integral f a b)))

(axiom
  def_max_of
  (x cfun)
  (<-> (= x (max-of cfun))
       (&& (PLamApp cfun x)
           (forall (y)
                   (-> (PLamApp cfun y)
                       (<= y x))))))

(axiom
  def_min_of
  (x cfun)
  (<-> (= x (min-of cfun))
       (&& (PLamApp cfun x)
           (forall (y)
                   (-> (PLamApp cfun y)
                       (>= y x))))))

(axiom
  def_maximum
  (set max)
  (<-> (maximum set max)
       (&& (elem max set)
           (forall (v)
                   (-> (elem v set)
                       (<= v max))))))


(axiom
  def_minimum
  (set min)
  (<-> (minimum set min)
       (&& (elem min set)
           (forall (v)
                   (-> (elem v set)
                       (<= min v))))))

(axiom
  def_maximum_by_given_order
  (set order max)
  (<-> (maximum set order max)
       (&& (elem max set)
           (forall (v)
                   (-> (elem v set)
                       (|| (= max v)
                           (PLamApp (LamApp order v) max)))))))


(axiom
  def_minimum_by_given_order
  (set order min)
  (<-> (minimum set order min)
       (&& (elem min set)
           (forall (v)
                   (-> (elem v set)
                       (|| (= min v)
                           (PLamApp (LamApp order min) v)))))))

;; convex/concave
(axiom
  def-fun-convex-upward-parabola-in-region
  (a b c region)
  (<-> (fun-convex-upward (poly-fun (list-of c b a)) region)
       (> 0 a)))

(axiom
  def-fun-convex-upward-parabola
  (a b c)
  (<-> (fun-convex-upward (poly-fun (list-of c b a)))
       (> 0 a)))

(axiom
  def-fun-convex-downward-parabola-in-region
  (a b c region)
  (<-> (fun-convex-downward (poly-fun (list-of c b a)) region)
       (< 0 a)))

(axiom
  def-fun-convex-downward-parabola
  (a b c)
  (<-> (fun-convex-downward (poly-fun (list-of c b a)))
       (< 0 a)))

(axiom
  def-fun-convex-upward-in-region
  (f region)
  (<-> (fun-convex-upward f region)
       (forall (x1 x2)
         (-> (&& (elem x1 region)
                 (elem x2 region))
             (forall (k)
                (-> (&& (<= 0 k) (<= k 1))
                    (<= (+ (* k (funapp f x1)) (* (- 1 k) (funapp f x2)))
                        (funapp f (+ (* k x1) (* (- 1 k) x2))))))))))

(axiom
  def-fun-convex-upward-everywhere
  (f)
  (<-> (fun-convex-upward f)
       (forall (x1 x2 k)
               (-> (&& (<= 0 k) (<= k 1))
                   (<= (+ (* k (funapp f x1)) (* (- 1 k) (funapp f x2)))
                       (funapp f (+ (* k x1) (* (- 1 k) x2))))))))

(axiom
  def-fun-convex-downward-in-region
  (f region)
  (<-> (fun-convex-downward f region)
       (fun-convex-upward (fun-s* -1 f) region)))

(axiom
  def-fun-convex-downward-everywhere
  (f)
  (<-> (fun-convex-downward f)
       (fun-convex-upward (fun-s* -1 f))))

(axiom
  def-converge
  (f a b)
  (<-> (converge f a b)
       (forall (e) 
          (-> (> e 0) 
              (exists (d) 
                 (&& (> d 0) 
                     (forall (x) 
                        (-> (< (abs (- x a)) d) ;;|x-a|<d
                            (< (abs (- (funapp f x) b)) e))))))))) ;;|f(x)-b|<e

(axiom
  def-converge-plus
  (f a b)
  (<-> (converge-plus f a b)
       (forall (e) 
          (-> (> e 0) 
              (exists (d) 
                 (&& (> d 0) 
                     (forall (x) 
                        (-> (&& (< a x)
                                (< (- x a) d)) ;;|x-a|<d
                            (< (abs (- (funapp f x) b)) e))))))))) ;;|f(x)-b|<e

(axiom
  def-converge-minus
  (f a b)
  (<-> (converge-minus f a b)
       (forall (e) 
          (-> (> e 0) 
              (exists (d) 
                 (&& (> d 0) 
                     (forall (x) 
                        (-> (&& (< x a)
                                (< (- a x) d)) ;;|x-a|<d
                            (< (abs (- (funapp f x) b)) e))))))))) ;;|f(x)-b|<e

(axiom
 def-converge-plus-inf
 (f b)
 (<-> (converge-plus-inf f b)
      (forall (e) 
         (-> (> e 0) 
             (exists (M) 
                (&& (> M 0) 
                    (forall (x) 
                       (-> (< M x)
                           (< (abs (- (funapp f x) b)) e))))))))) ;;|f(x)-b|<e

(axiom
 def-converge-minus-inf
 (f b)
 (<-> (converge-minus-inf f b)
      (forall (e) 
         (-> (> e 0) 
             (exists (M) 
                (&& (< M 0) 
                    (forall (x) 
                       (-> (< x M)
                           (< (abs (- (funapp f x) b)) e))))))))) ;;|f(x)-b|<e

;;2013/12/24 suzuki
;;(axiom
;; def-continuous-1
;; (f a b)
;; (<-> (continuous f (range (ep-close a) b))
;;      (&& (converge-plus f a (funapp f a))
;;	  (continuous f (range (ep-open a) b)))))

;;(axiom
;; def-continuous-2
;; (f a b)
;; (<-> (continuous f (range a (ep-close b)))
;;      (&& (converge-minus f b (funapp f b))
;;	  (continuous f (range a (ep-open b))))))

;;(axiom
;; def-continuous-3
;; (f a b)
;; (<-> (continuous f (range a b))
;;      (forall (x) (-> (elem x (range a b))
;;		      (converge f x (funapp f x))))))

;;2014/3/28 suzuki

;;(axiom
;; def-differentiable-1
;; (f a b)
;; (<-> (differentiable f (range (ep-close a) b))
;;      (&& (exists (d) (converge-plus (Lam x (/ (- (funapp f x) (funapp f a)) (- x a))) a d))
;;	  (differentiable f (range a b)))))

;;(axiom
;; def-differentiable-2
;; (f a b)
;; (<-> (differentiable f (range a (ep-close b)))
;;      (&& (exists (d) (converge-minus (Lam x (/ (- (funapp f x) (funapp f b)) (- x b))) b d))
;;	  (differentiable f (range a b)))))

;;(axiom
;; def-differentiable-3
;; (f a b)
;; (<-> (differentiable f (range a b))
;;      (forall (p) (-> (elem p (range a b))
;;		      (exists (d) (converge (Lam x (/ (- (funapp f x) (funapp f p)) (- x p))) p d))))))


;; (in)equality between limit values
(axiom
  def-convergence-to-eq
  (a b)
  (<-> (= (convergence-to a) (convergence-to b))
       (= a b)))

(axiom
  def-convergence-divergence-neq-1
  (a)
  (<-> (= (convergence-to a) (divergence-to-minus-inf))
       (false)))

(axiom
  def-convergence-divergence-neq-2
  (a)
  (<-> (= (convergence-to a) (divergence-to-plus-inf))
       (false)))

;; convergence
(axiom
  def-limit-converge
  (f a c)
  (<-> (= (limit f (tends-to a)) (convergence-to c))
       (converge f a c)))

(axiom
  def-left-hand-limit-converge
  (f a c)
  (<-> (= (limit f (tends-to-from-left a)) (convergence-to c))
       (converge-minus f a c)))

(axiom
  def-right-hand-limit-converge
  (f a c)
  (<-> (= (limit f (tends-to-from-right a)) (convergence-to c))
       (converge-plus f a c)))

(axiom
  def-limit-converge-as-x-tends-to-plus-inf
  (f c)
  (<-> (= (limit f (tends-to-plus-inf)) (convergence-to c))
       (converge-plus-inf f c)))

(axiom
  def-limit-converge-as-x-tends-to-minus-inf
  (f c)
  (<-> (= (limit f (tends-to-minus-inf)) (convergence-to c))
       (converge-minus-inf f c)))

;; divergence to plus infinity
(axiom
  def-divergence-to-plus-inf-as-x-tends-to-plus-inf
  (f)
  (<-> (= (limit f (tends-to-plus-inf)) (divergence-to-plus-inf))
       (forall (y)
         (exists (m)
            (forall (x)
               (-> (< m x)
                   (< y (funapp f x))))))))

(axiom
  def-divergence-to-plus-inf-as-x-tends-to-minus-inf
  (f)
  (<-> (= (limit f (tends-to-minus-inf)) (divergence-to-plus-inf))
       (forall (y)
         (exists (m)
            (forall (x)
               (-> (< x m)
                   (< y (funapp f x))))))))

(axiom
  def-divergence-to-plus-inf-as-x-tends-to-c-from-below
  (f c)
  (<-> (= (limit f (tends-to-from-left c)) (divergence-to-plus-inf))
       (forall (y)
         (exists (e)
            (&& (< 0 e)
                (forall (x)
                   (-> (&& (< (- c e) x)
                           (< x c))
                       (< y (funapp f x)))))))))

(axiom
  def-divergence-to-plus-inf-as-x-tends-to-c-from-above
  (f c)
  (<-> (= (limit f (tends-to-from-right c)) (divergence-to-plus-inf))
       (forall (y)
         (exists (e)
            (&& (< 0 e)
                (forall (x)
                   (-> (&& (< c x)
                           (< x (+ c e)))
                       (< y (funapp f x)))))))))

;; divergence to minus infinity
(axiom
  def-divergence-to-minus-inf-as-x-tends-to-plus-inf
  (f)
  (<-> (= (limit f (tends-to-plus-inf)) (divergence-to-minus-inf))
       (forall (y)
         (exists (m)
            (forall (x)
               (-> (< m x)
                   (< (funapp f x) y)))))))

(axiom
  def-divergence-to-minus-inf-as-x-tends-to-minus-inf
  (f)
  (<-> (= (limit f (tends-to-minus-inf)) (divergence-to-minus-inf))
       (forall (y)
         (exists (m)
            (forall (x)
               (-> (< x m)
                   (< (funapp f x) y)))))))

(axiom
  def-divergence-to-minus-inf-as-x-tends-to-c-from-below
  (f c)
  (<-> (= (limit f (tends-to-from-left c)) (divergence-to-minus-inf))
       (forall (y)
         (exists (e)
            (&& (< 0 e)
                (forall (x)
                   (-> (&& (< (- c e) x)
                           (< x c))
                       (< (funapp f x) y))))))))

(axiom
  def-divergence-to-minus-inf-as-x-tends-to-c-from-above
  (f c)
  (<-> (= (limit f (tends-to-from-right c)) (divergence-to-minus-inf))
       (forall (y)
         (exists (e)
            (&& (< 0 e)
                (forall (x)
                   (-> (&& (< c x)
                           (< x (+ c e)))
                       (< (funapp f x) y))))))))

;; equality between limit values
;; Example 1: lim_{x->+inf} 1/x = lim_{x->-inf} -1/x (= 0)
;; Example 2: lim_{x->+inf} x = lim_{x->-inf} x^2 = (+infinity)
;; Example 3: lim_{x->+inf} -x = lim_{x->-inf} -x^2 = (-infinity)
;; Example 4: lim_{x->+inf} sin x =? lim_{x->+inf} cos x (undefined)
(axiom
  def-limit-value-eq
  (f1 tends-to-1 f2 tends-to-2)
  (<-> (= (limit f1 tends-to-1)
          (limit f2 tends-to-2))
       (|| (exists (c)
             (&& (= (limit f1 tends-to-1) (convergence-to c))
                 (= (limit f2 tends-to-2) (convergence-to c))))
           (&& (= (limit f1 tends-to-1) (divergence-to-plus-inf))
               (= (limit f2 tends-to-2) (divergence-to-plus-inf)))
           (&& (= (limit f1 tends-to-1) (divergence-to-minus-inf))
               (= (limit f2 tends-to-2) (divergence-to-minus-inf))))))

;;------------------------------------------------------------------------------
;; Equations
;;------------------------------------------------------------------------------

; is-equation :: Equation => Bool
(axiom
 def_is_equation
 (e)
 (is-equation e))

; has-real-solution :: Equation => Bool
(axiom
  def_has_real_solution
  (f)
  (<-> (has-real-solution (equation f))
       (exists (x)
               (= 0 (LamApp f x)))))

; is-solution-of :: R -> Equation => Bool)
(axiom
  def_is_solution_of
  (f x)
  (<-> (is-solution-of x (equation f))
       (= 0 (LamApp f x))))

; are-solutions-of :: (ListOf R) -> Equation => Bool
(axiom
 def_are_solutions_of_linear_eq
 (a b xs)
 (<-> (are-solutions-of xs (poly-equation (list-of b a)))
      (&& (! (= a 0))
          (= xs (list-of (/ b a))))))

(axiom
 def_are_solutions_of_quadra_eq
 (a b c xs)
 (<-> (are-solutions-of xs (poly-equation (list-of c b a)))
      (|| (&& (= a 0)
              (are-solutions-of xs (poly-equation (list-of c b))))
          (&& (! (= a 0))
              (= (- (^ b 2) (* 4 a c)) 0)
              (= xs (list-of (- (/ b (* 2 a))))))
          (&& (! (= a 0))
              (> (- (^ b 2) (* 4 a c)) 0)
              (let ((sol1 (/ (+ (- b) (sqrt (- (^ b 2) (* 4 a c)))) (* 2 a)))
                    (sol2 (/ (- (- b) (sqrt (- (^ b 2) (* 4 a c)))) (* 2 a))))
                (|| (= xs (list-of sol1 sol2))
                    (= xs (list-of sol2 sol1)))))
          (&& (! (= a 0))
              (< (- (^ b 2) (* 4 a c)) 0)
              (= xs (nil))))))

(axiom
 def_are_solutions_of
 (f xs)
 (<-> (are-solutions-of xs (equation f))
      (forall (x)
              (<-> (member x xs)
                   (= (LamApp f x) 0)))))

;; equlivalent to is-solution-of since we only consider R here
(axiom
 def_is_real_solution_of
 (eq x)
 (<-> (is-real-solution-of x eq)
      (is-solution-of x eq)))

;; equlivalent to are-solution-of since we only consider R here
(axiom
 def_are_real_solutions_of
 (eq xs)
 (<-> (are-real-solutions-of xs eq)
      (are-solutions-of xs eq)))

; is-equation-deg-of :: Z -> Equation => Bool
(axiom
 def_is_equation_deg_of
 (n f)
 (<-> (is-equation-deg-of n (equation f))
      (is-fun-deg-of n (fun f))))

;; Polynomial equations

; has-real-solution :: Equation => Bool
(axiom
  def_has_real_solution_poly
  (cs)
  (<-> (has-real-solution (poly-equation cs))
       (exists (x)
               (= 0 (poly-value cs x)))))

; is-solution-of :: R -> Equation => Bool)
(axiom
  def_is_solution_of_poly
  (cs x)
  (<-> (is-solution-of x (poly-equation cs))
       (= 0 (poly-value cs x))))

; are-solutions-of :: (ListOf R) -> Equation => Bool
(axiom
 def_are_solutions_of_poly
 (cs xs)
 (<-> (are-solutions-of xs (poly-equation cs))
      (forall (x)
              (<-> (member x xs)
                   (= 0 (poly-value cs x))))))

; is-equation-deg-of :: Z -> Equation => Bool
(axiom
 def_is_equation_deg_of_poly
 (n cs)
 (<-> (is-equation-deg-of n (poly-equation cs))
      (= n (poly-deg cs))))

;; determinant of quadratic equation
(axiom
  def-equation-determinant
  (a b c)
  (= (equation-determinant (poly-equation (list-of c b a)))
     (- (^ b 2) (* 4 a c))))

;;------------------------------------------------------------------------------
;; Min/Max of functions
;;------------------------------------------------------------------------------

(axiom
  def_fun_min
  (f r xm ym)
  (<-> (func-min (fun f) r xm ym)
       (&& (forall (x)
                   (-> (elem x r) (<= ym (LamApp f x))))
           (elem xm r)
           (= ym (LamApp f xm)))))
(axiom
  def_fun_max
  (f r xm ym)
  (<-> (func-max (fun f) r xm ym)
       (&& (forall (x)
                  (-> (elem x r) (>= ym (LamApp f x))))
          (elem xm r)
          (= ym (LamApp f xm)))))

(axiom
  def_fun_min_no_domain_restriction
  (f xm ym)
  (<-> (func-min (fun f) xm ym)
       (&& (forall (x)
                   (<= ym (LamApp f x)))
           (= ym (LamApp f xm)))))

(axiom
  def_fun_max_no_domain_restriction
  (f xm ym)
  (<-> (func-max (fun f) xm ym)
       (&& (forall (x)
                   (>= ym (LamApp f x)))
           (= ym (LamApp f xm)))))

(axiom
  def_func_maximal
  (f xm ym)
  (<-> (func-maximal f xm ym)
       (&& (= 0 (funapp (derivative f) xm))
           (exists (e) (&& (< 0 e)
                           (func-max f
                                     (range (ep-open (- xm e))
                                            (ep-open (+ xm e)))
                                     xm
                                     ym))))))

(axiom
  def_func_minimal
  (f xm ym)
  (<-> (func-minimal f xm ym)
       (&& (= 0 (funapp (derivative f) xm))
           (exists (e) (&& (< 0 e)
                           (func-min f
                                     (range (ep-open (- xm e))
                                            (ep-open (+ xm e)))
                                     xm
                                     ym))))))

(axiom
 def_func_extreme
 (f xm ym)
  (<-> (func-extreme f xm ym)
       (&& (= 0 (funapp (derivative f) xm))
           (exists (e) (&& (< 0 e)
                           (|| (func-min f
                                         (range (ep-open (- xm e))
                                                (ep-open (+ xm e)))
                                         xm
                                         ym)
                               (func-max f
                                         (range (ep-open (- xm e))
                                                (ep-open (+ xm e)))
                                         xm
                                         ym)))))))


(axiom
  def_func_even
  (f)
  (<-> (func-even (fun f))
       (forall (x) (= (LamApp f x)
                      (LamApp f (- x))))))


(axiom
  def_func_odd
  (f)
  (<-> (func-odd (fun f))
       (forall (x) (= (- (LamApp f x))
                      (LamApp f (- x))))))

;;------------------------------------------------------------------------------
;; coordinate of 1-dimentional space = id
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(axiom
  def-coordinate-of-1d
  (P)
  (= (coordinate-of P) P))

;;------------------------------------------------------------------------------
;; Ratio
;;------------------------------------------------------------------------------
(axiom
  def-ratio-equality
  (r1 r2)
  (<-> (= (ratio r1) (ratio r2))
       (exists (k)
          (&& (! (= k 0))
              (= r1 (map (Lam x (* k x)) r2))))))

;;------------------------------------------------------------------------------
;; nth-elem => int.nth-larest-elem, int.nth-smallest-elem
;;------------------------------------------------------------------------------
(import "axioms/IntegerTypes.lsp")
(axiom
   def-nth-elem-asc
   (x set k)
   (<-> (nth-elem x set (ascending-order) k)
        (int.nth-smallest-elem x set (Lam x x) k)))

(axiom
   def-nth-elem-desc
   (x set k)
   (<-> (nth-elem x set (descending-order) k)
        (int.nth-largest-elem x set (Lam x x) k)))

(axiom
   def-nth-elem-by-asc
   (x set eval-fun k)
   (<-> (nth-elem-by x set eval-fun (ascending-order) k)
        (int.nth-smallest-elem x set eval-fun k)))

(axiom
   def-nth-elem-by-desc
   (x set eval-fun k)
   (<-> (nth-elem-by x set eval-fun (descending-order) k)
        (int.nth-largest-elem x set eval-fun k)))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
   def-is-finite-decimal
   (x b)
   (<-> (is-finite-decimal x b)
        (exists (n k)
           (= x (/ (int->real n)
                   (int->real (int.^ b k)))))))
(axiom
   def-is-reccuring-decimal
   (x b)
   (<-> (is-recurring-decimal x b)
        (&& (is-rational x)
            (! (is-finite-decimal x b)))))

(axiom
   def-is-finite-decimal-base10
   (x)
   (<-> (is-finite-decimal x)
        (is-finite-decimal x 10)))

(axiom
   def-is-recurring-decimal-base10
   (x)
   (<-> (is-recurring-decimal x)
        (is-recurring-decimal x 10)))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
  def-order-rel-of
  (rel)
  (= (order-rel-of (order-rel rel))
     rel))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-fun __DONE__ :: a => a)

;;arctan
(axiom
  def-func-arctan
  (x s)
  (<-> (= s (arctan x))
       (&& ;(< (- 1) x)
         ;(< x 1)
         (< (- (/ (Pi) 2)) s)
         (< s (/ (Pi) 2))
         (= (/ (sin s) (cos s)) x))))
