(default-namespace)
;;@-----------------------------------------------------------------------------
;;@ Basic types
;;@-----------------------------------------------------------------------------
;; Propositions
;;# DONT_EXPORT: translated to $o in the TPTP THF
(def-type Bool)

;;@ Integers
(def-type Z)

;;@ Rational numbers
(def-type Q)

;;@ Real numbers
(def-type R)

;;@ Character strings
(def-type String)

;;@-----------------------------------------------------------------------------

;;------------------------------------------------------------------------------
;; Function application
;; NOTE: both LamApp and PLamApp will be translated to '@' operation in the THF syntax
;;------------------------------------------------------------------------------
;;# DONT_EXPORT: LamApp(F, X) = F(X)
(def-fun LamApp :: (a -> b) -> a => b)

;; function application of a 1-place predicate type
;;# DONT_EXPORT: PLamApp(P, X) = P(X)
(def-pred PLamApp :: (a -> Bool) -> a => Bool)

;;------------------------------------------------------------------------------
;; equality
;;# DONT_EXPORT: translated to '=' in the THF syntax
;;------------------------------------------------------------------------------
(def-pred = :: a -> a => Bool)

;;------------------------------------------------------------------------------
;; Propositional constants
;;------------------------------------------------------------------------------
;;@ propositional constant True
(def-pred true :: => Bool)

;;@ propositional constant False
(def-pred false :: => Bool)

;;@-----------------------------------------------------------------------------

;; 2013/11/30/suzuki
;;@ repeated application of a function
;;@ repeat(0, F, X) = X
;;@ repeat(1, F, X) = F(X)
;;@ repeat(2, F, X) = F(F(X))
;;@ and so on
(def-fun repeat :: Z -> (a -> a) -> a => a) 

;; 2013/12/10 suzuki
;;@ repeat-p(0, F, X) = X
;;@ repeat-p(1, F, X) = F(X, 0)
;;@ repeat-p(2, F, X) = F(F(X, 0), 1)
;;@ repeat-p(3, F, X) = F(F(F(X, 0), 1), 2)
;;@ and so on
(def-fun repeat-p :: Z -> (a -> Z -> a) -> a => a)

;;@ Unit type: a special type that only includes a single constant '(_)'
(def-type Unit)

;;@ the singleton member of the Unit type
(def-fun _ :: => Unit)

;;@ Variable type: to represent first order terms in the logic
(def-type Var)

;;@ var("x") = variable with name 'x'
(def-fun var :: String => Var)

;;@ trivially true for any Var
(def-pred is-var :: Var => Bool)

;;@-----------------------------------------------------------------------------

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-pred comma :: (Unit -> Bool) -> (Unit -> Bool) => Bool)

;;@ 1-place predicate that is always true:
;;@ anything(x) <-> true
(def-pred anything :: a => Bool)


;;@-----------------------------------------------------------------------------
;;@ constants
;;@-----------------------------------------------------------------------------
;;@ Pi
(def-fun Pi :: => R)
;;@ the base of the natural logarithm
(def-fun Napier :: => R)
;;@ x * Degree() = (x * Pi/180) radian
(def-fun Degree :: => R)

;;------------------------------------------------------------------------------
;; Maple/Mathematica's undefined/Undefined
;;------------------------------------------------------------------------------
;;@ a special constant that represents undefined value
(def-fun undefined :: => a)

;;@-----------------------------------------------------------------------------
;;@ list operations
;;@-----------------------------------------------------------------------------
(define orig-cons cons) ;; to save 'cons' in the scheme language

;;@ Polymorphic list of elements of type a
(def-type (ListOf a))

;;@ list constructor
(def-fun cons :: a -> (ListOf a) => (ListOf a))

;;@ list terminator
(def-fun nil  :: => (ListOf a))

;;@ first element of a list
(def-fun car :: (ListOf a) => a)

;;@ second element of a list
(def-fun cadr :: (ListOf a) => a)

;;@ third element of a list
(def-fun caddr :: (ListOf a) => a)

;;@ fourth element of a list
(def-fun cadddr :: (ListOf a) => a)

;;@ tail of a list: cdr(cons(x, xs)) = xs
(def-fun cdr :: (ListOf a) => (ListOf a))

;;@ last(xs) = last element of list xs
(def-fun last :: (ListOf a) => a)

;;@ first (n-1) elements of a list of length n
(def-fun butlast :: (ListOf a) => (ListOf a))

;;@ replicate(n, a) = list [a, a, ..., a] of length n
(def-fun replicate :: Z -> a => (ListOf a))

;;2013/11/26 suzuki
;;@ nthcdr(n, xs) = all but the first n elements of list xs
(def-fun nthcdr :: Z -> (ListOf a) => (ListOf a))

;;@ nth(n, xs) = n-th element of list xs
(def-fun nth :: Z -> (ListOf a) => a)

;;@ equal(xs) <-> all the elements in xs are identical
;;TODO: change the name
(def-pred equal :: (ListOf a) => Bool)

;;@ member(x, xs) <-> x is a member of list xs
(def-pred member :: a -> (ListOf a) => Bool)

;;@ is-prefix-of(xs, ys) <-> list xs is a prefix of list ys
(def-pred is-prefix-of :: (ListOf a) -> (ListOf a) => Bool)

;;@ is-infix-of(xs, ys) <-> list xs is a consecutive subsequence of list ys
(def-pred is-infix-of :: (ListOf a) -> (ListOf a) => Bool)

;; For internal use: mark of the distribution of the arguments for a predicate
;;# DONT_EXPORT
(def-pred dmember :: a -> (ListOf a) => Bool)

;;@ map(f(*), [a1,...,an]) = the list [f(a1),...,f(an)]
(def-fun map :: (a -> b) -> (ListOf a) => (ListOf b))

;;@ foldr(f(*,*), b, [a1,...,an]) = f(an, f(an-1, ...f(a1,b)...))
(def-fun foldr  :: (a -> b -> b) -> b -> (ListOf a) => b)

;;@ foldr1(f(*,*), [a1,...,an]) = f(an, f(an-1, ...f(a2,a1)...))
(def-fun foldr1 :: (a -> a -> a) -> (ListOf a) => a)

;;@ all(P(*), [a1,...an]) <-> the conjunction P(a1) and ... and P(an) holds
(def-pred all :: (a -> Bool) -> (ListOf a) => Bool)

;;@ all2(P(*,*), [a1,...an], [b1,...,bn]) <-> the conjunction P(a1,b1) and ... and P(an,bn) holds
;;@ evaluated to false if the argument lists have different length
(def-pred all2 :: (a -> b -> Bool) -> (ListOf a) -> (ListOf b) => Bool)

;;@ combinatorial-all(P(*,*), [a1,...an]) <-> the conjunction of P(ai,aj) for i<j holds
(def-pred combinatorial-all :: (a -> a -> Bool) -> (ListOf a) => Bool)

;;@ combinatorial-some(P(*,*), [a1,...an]) <-> the disjunction of P(ai,aj) for i<j holds
(def-pred combinatorial-some :: (a -> a -> Bool) -> (ListOf a) => Bool)

;;@ cyclic-all(P(*,*,*), [a1,...,an]) <-> the conjunction P(an,a1,a2) and ... and P(an-1,an,a1) holds
(def-pred cyclic-all :: (a -> a -> a -> Bool) -> (ListOf a) => Bool)

;;@ cyclic-some(P(*,*,*), [a1,...,an]) <-> the disjunction P(an,a1,a2) or ... or P(an-1,an,a1) holds
(def-pred cyclic-some :: (a -> a -> a -> Bool) -> (ListOf a) => Bool)

;;@ some(P(*), [a1,...an]) <-> the disjunction P(a1) or ... or P(an) holds
(def-pred some :: (a -> Bool) -> (ListOf a) => Bool)

;;@ pairwise-distinct(list) <-> the members of list are pairwise-distinct
(def-pred pairwise-distinct :: (ListOf a) => Bool)

;;@ filter(P(*), [a1,...,an]) = the list of ai's such that P(ai) hold
;;@ preserves the original order of the input list
(def-fun filter :: (a -> Bool) -> (ListOf a) => (ListOf a))

;;@ remove-repetition([a1,...,an]) = the list of ai's of which occurrences after the first are ommited
;;@ preserves the original order of the input list
(def-fun remove-repetition :: (ListOf a) => (ListOf a))

;;@ list-len([a1,...,an]) = n
(def-fun list-len :: (ListOf a) => Z)

;;@ zip-with(f(*,*), [a1,...,an], [b1,...,bn]) = the list [f(a1,b1), ..., f(an,bn)]
;;@ ignore the rest members if the argument lists have different length
(def-fun zip-with :: (a -> b -> c) -> (ListOf a) -> (ListOf b) => (ListOf c))

;;@ append([a1,...an], [b1,...,bm]) = the list [a1,...,an,b1,...,bm]
(def-fun append :: (ListOf a) -> (ListOf a) => (ListOf a))

;;@ delete(a, lis) = the list which is constructed by omitting the first occurrence of a from lis
;;@ preserves the original order of the input list
(def-fun delete :: a -> (ListOf a) => (ListOf a)) 

;;@ remove(a, lis) = the list which is constructed by omitting all occurrences of a from lis
;;@ preserves the original order of the input list
(def-fun remove :: a -> (ListOf a) => (ListOf a)) 

;;@ remove([a1,...,an], lis) = the list which is constructed by omitting all occurrences of ai's from lis
;;@ preserves the original order of the input list
(def-fun remove-list :: (ListOf a) -> (ListOf a) => (ListOf a)) 

;;2013/12/13
;;@ list-number(a, lis) = the number of occurrences of a in lis
(def-fun list-number :: a -> (ListOf a) => Z)

;; (find-all (PLam x (pred x)) xs)
;;     <-> (member(x, xs) <-> (pred x))
;;# DONT_EXPORT
(def-pred find-all :: (a -> Bool) -> (ListOf a) => Bool)

;; logical connectives as predicates on formulas
;;@ conj1(P(*),Q(*)) = (P&&Q)(*)
(def-fun conj1 :: (a -> Bool) -> (a -> Bool) => (a -> Bool))

;;@ conj1(P(*,*),Q(*,*)) = (P&&Q)(*,*)
(def-fun conj2 :: (a -> b -> Bool) -> (a -> b -> Bool) => (a -> b -> Bool))

;;@ is-a-permutation-of(list1,list2) <-> all members of list1 and list2 are the same
(def-pred is-a-permutation-of :: (ListOf a) -> (ListOf a) => Bool)

;;@ is-subset-list-of(list1,list2) <-> all members of list1 are also the members of list2
(def-pred is-subset-list-of :: (ListOf a) -> (ListOf a) => Bool)


;; (ListOf R) only
;;@ is-increasing-list([r1,...,rn]) <-> ri<=ri+1 for all 1<=i<n
(def-pred is-increasing-list :: (ListOf R) => Bool)

;;@ is-increasing-list([r1,...,rn]) <-> ri>=ri+1 for all 1<=i<n
(def-pred is-decreasing-list :: (ListOf R) => Bool)

;;@ list definition by example
(def-fun list-from-to :: (ListOf a) -> (ListOf a) => (ListOf a))

;;@-----------------------------------------------------------------------------
;;@ other higher-order functions
;;@-----------------------------------------------------------------------------
(def-fun compose :: (a -> b) -> (b -> c) => (a -> c))

;;@------------------------------------------------------------------------------
;;@ tuples
;;@------------------------------------------------------------------------------
;;@ Polymorphic pair of type a and type b
(def-type (Pair a b))

;;@ Polymorphic triple of type a, type b and type c
(def-type (Triple a b c))

;;@ Polymorphic tuple of length 4 of type a, type b, type c and type d
(def-type (Tuple4 a b c d))

;; tuple constructors
;;@ pair constructor
(def-ctor pair :: a -> b => (Pair a b))

;;@ triple constructor
(def-ctor triple :: a -> b -> c => (Triple a b c))

;;@ tuple of length 4 constructor
(def-ctor tuple4 :: a -> b -> c -> d  => (Tuple4 a b c d))

;; preds for type inference
;;@ trivially true for any Pair
(def-pred is-pair   :: (Pair a b) => Bool)

;;@ trivially true for any Triple
(def-pred is-triple :: (Triple a b c) => Bool)

;;@ trivially true for any Tuple4
(def-pred is-tuple4 :: (Tuple4 a b c d) => Bool)

;; tuple operations
;;@ fst(pair) = first entry of pair
(def-fun fst :: (Pair a b) => a)

;;@ snd(pair) = second entry of pair
(def-fun snd :: (Pair a b) => b)

;;@ fst-of-3(triple) = first entry of triple
(def-fun fst-of-3   :: (Triple a b c) => a)

;;@ snd-of-3(triple) = second entry of triple
(def-fun snd-of-3   :: (Triple a b c) => b)

;;@ third-of-3(triple) = third entry of triple
(def-fun third-of-3 :: (Triple a b c) => c)

;;@ fst-of-4(tuple4) = first entry of tuple4
(def-fun fst-of-4    :: (Tuple4 a b c d) => a)

;;@ snd-of-4(tuple4) = second entry of tuple4
(def-fun snd-of-4    :: (Tuple4 a b c d) => b)

;;@ third-of-4(tuple4) = third entry of tuple4
(def-fun third-of-4  :: (Tuple4 a b c d) => c)

;;@ forth-of-4(tuple4) = forth entry of tuple4
(def-fun fourth-of-4 :: (Tuple4 a b c d) => d)

;;@ zip([a1,...,an],[b1,...,bn]) = [pair(a1,b1), ..., pair(an,bn)]
;;@ ignore the rest members if the argument lists have different length
(def-fun zip :: (ListOf a) -> (ListOf b) => (ListOf (Pair a b)))

;;@ uncurry(f(a,b)) = f(pair(a,b))
(def-fun uncurry :: (a -> b -> c) => ((Pair a b) -> c))

;;@ p-uncurry(P(a,b)) = P(pair(a,b))
(def-fun p-uncurry :: (a -> b -> Bool) => ((Pair a b) -> Bool))

;;@ all-pairs([a1,...,an]) = the list [pair(a1,a2),...,pair(a1,an), pair(a2,a3),...,pair(a2,an), ... , pair(an-1,an)]
(def-fun all-pairs :: (ListOf a) => (ListOf (Pair a a))) ;; [x_i] -> [(x_i, x_j)] (i < j)

;;@------------------------------------------------------------------------------
;;@ Set & set operations
;;@------------------------------------------------------------------------------
;;@ Polymorphic set of type a
(def-type (SetOf a))

;;@ set-by-def(P(*)) = set of all a's that satisfy P(a)
(def-fun set-by-def :: (a -> Bool) => (SetOf a))

;;@ finset(listofelems) = finite set of elements in listofelems
(def-fun finset :: (ListOf a) => (SetOf a))

;;@ elem(a, set) <-> a is an element of set
(def-pred elem :: a -> (SetOf a) => Bool)

;;@ trivially true for any SetOf a
(def-pred is-set :: (SetOf a) => Bool)

;;@ is-empty(set) <-> set is an empty set
(def-pred is-empty :: (SetOf a) => Bool)

;;@ is-singleton(set) <-> set contains exactly one element
(def-pred is-singleton :: (SetOf a) => Bool)

;;@ is-subset-of(set1, set2) <-> set1 is a subset of set2
(def-pred is-subset-of :: (SetOf a) -> (SetOf a) => Bool)

;;@ pairwise-disjoint(setofsets) <-> any two elements of setofsets are disjoint
(def-pred pairwise-disjoint :: (SetOf a) => Bool)

;;@ comlement-of-in(set1, set2) = the set difference of set2 minus set1
(def-fun complement-of-in :: (SetOf a) -> (SetOf a) => (SetOf a))

;;@ set-union(set1, set2) = the union of set1 and set2
(def-fun set-union :: (SetOf a) -> (SetOf a) => (SetOf a))

;;@ set-union(listofsets) = the union of all members in listofsets
(def-fun set-union :: (ListOf (SetOf a)) => (SetOf a))

;;@ set-intersection(set1, set2) = the intersection of set1 and set2
(def-fun set-intersection :: (SetOf a) -> (SetOf a) => (SetOf a))

;;@ set-intersection(listofsets) = the intersection of all members in listofsets
(def-fun set-intersection :: (ListOf (SetOf a)) => (SetOf a))

;; is-cardinality-of(n, set) <-> set contains exactly n elements
(def-pred is-cardinality-of :: Z -> (SetOf a) => Bool)

;;@ cardinality-of(set) = the number of elements in set
;;@ works correctly only for finite sets
(def-fun cardinality-of :: (SetOf a) => Z)

;;@ is-list-subset-of(list, set) <-> all members in list are an element of set
(def-pred is-list-subset-of :: (ListOf a) -> (SetOf a) => Bool)

;;------------------------------------------------------------------------------
;; for NLP: intentional interpretation of variable names
;;------------------------------------------------------------------------------
;;# DONT_EXPORT: Polymorphic intent set of type a
(def-type (IntentSetOf a))

;;# DONT_EXPORT
(def-fun intent-set :: a -> (a -> Bool) => (IntentSetOf a))

;;# DONT_EXPORT
(def-fun setify :: (IntentSetOf a) => (SetOf a))

;;# DONT_EXPORT
(def-fun extent-of :: (IntentSetOf a) => a)

;;------------------------------------------------------------------------------
;; for NLP: same as comma
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-fun icomma :: (IntentSetOf a) -> (IntentSetOf a) => (IntentSetOf a))

;;@------------------------------------------------------------------------------
;;@ if/cond/pcond
;;@------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;;   (if (x y ..) then-value else-value) 
;;------------------------------------------------------------------------------
;;@ if(cond, a, b) = a if cond holds, and b otherwise
(def-fun if :: (Unit -> Bool) -> a -> a => a)

;;------------------------------------------------------------------------------
;;     (cond
;;       ..
;;   (pred .. (cond (f1 t1) .. (fn tn)) ..)
;;   (|| (&& f1 (pred .. t1 ..))
;;       (&& (! f1) f2 (pred .. t1 ..))
;;       ...
;;       (&& (! f1) (! f2) .. fn (pred .. tn ..)))
;;------------------------------------------------------------------------------
;;@ cond([<cond1,a1>, ..., <condn,an>]) = a1 if cond1 holds, a2 if cond1 does not hold 
;;@ and cond2 holds, ..., and an if cond1,...,condn-1 do not hold and condn holds
;;@ a predicate containing cond([<cond1,a1>, ..., <condn,an>]) is evaluated to false 
;;@ if none of cond1, ..., condn holds
(def-fun cond :: (ListOf (Pair (Unit -> Bool) a)) => a)

;;------------------------------------------------------------------------------
;;    (pcond
;;     ...
;;     
;;  (pcond (f1 f1') ... (fn fn'))
;;  (|| (&& f1 f1')
;;      (&& (! f1) f2 f2')
;;      ...
;;      (&& (! f1) .. (! fn-1) fn fn'))
;;------------------------------------------------------------------------------
;;@ pcond([<cond1,p1>, ..., <condn,pn>]) <-> p1 if cond1 holds, p2 if cond1 does not 
;;@ hold and cond2 holds, ..., and pn if cond1,...,condn-1 do not hold and condn holds
;;@ pcond([<cond1,a1>, ..., <condn,an>]) is evaluated to false if none of cond1, ..., 
;;@ condn holds
(def-pred pcond :: (ListOf (Pair (Unit -> Bool) (Unit -> Bool))) => Bool)

;;------------------------------------------------------------------------------
;;
;;           (Lam x term(x)))
;;           (Lam x (Lam y term(x, y))))
;;   ...
;;
;;   phi( choice_n( (v1, (val11, val12, ...)),
;;                  ..., 
;;                  (v_n, (val_n1, val_n2, ...))
;;                  (Lam x1 .. (Lam x_n t(x1, .., x_n)) ) ) 
;;   [ v1 = val11 & ... & v_n = val_n1 & phi(t(val11, ..., val_n1)),
;;     v1 = val11 & ... & v_n = val_n2 & phi(t(val11, ..., val_n2)),
;;     ... ]
;;------------------------------------------------------------------------------
(def-fun choice1 :: (Pair Z (ListOf (Pair Z a))) -> (a -> b) => b)

(def-fun choice2 :: (Pair Z (ListOf (Pair Z a))) -> 
                    (Pair Z (ListOf (Pair Z b))) -> (a -> b -> c) => c)

(def-fun choice3 :: (Pair Z (ListOf (Pair Z a))) -> 
                    (Pair Z (ListOf (Pair Z b))) ->
                    (Pair Z (ListOf (Pair Z c))) -> (a -> b -> c -> d) => d)

(def-fun choice4 :: (Pair Z (ListOf (Pair Z a))) -> 
                    (Pair Z (ListOf (Pair Z b))) ->
                    (Pair Z (ListOf (Pair Z c))) ->
                    (Pair Z (ListOf (Pair Z d))) -> (a -> b -> c -> d -> e) => e)
;(def-fun choice1 :: (Pair Z (ListOf a)) -> (a -> b) => b)
;(def-fun choice2 :: (Pair Z (ListOf a)) -> 
;                    (Pair Z (ListOf b)) -> (a -> b -> c) => c)
;(def-fun choice3 :: (Pair Z (ListOf a)) -> 
;                    (Pair Z (ListOf b)) ->
;                    (Pair Z (ListOf c)) -> (a -> b -> c -> d) => d)
;(def-fun choice4 :: (Pair Z (ListOf a)) -> 
;                    (Pair Z (ListOf b)) ->
;                    (Pair Z (ListOf c)) ->
;                    (Pair Z (ListOf d)) -> (a -> b -> c -> d -> e) => e)

;;------------------------------------------------------------------------------
;;             (PLam x f(x)))
;;             (Lam x (PLam y f(x, y))))
;;   ...
;;------------------------------------------------------------------------------
(def-pred pchoice1 :: (Pair Z (ListOf a)) -> (a -> Bool) => Bool)
(def-pred pchoice2 :: (Pair Z (ListOf a)) -> 
                      (Pair Z (ListOf b)) -> (a -> b -> Bool) => Bool)
(def-pred pchoice3 :: (Pair Z (ListOf a)) -> 
                      (Pair Z (ListOf b)) ->
                      (Pair Z (ListOf c)) -> (a -> b -> c -> Bool) => Bool)
(def-pred pchoice4 :: (Pair Z (ListOf a)) -> 
                      (Pair Z (ListOf b)) ->
                      (Pair Z (ListOf c)) ->
                      (Pair Z (ListOf d)) -> (a -> b -> c -> d -> Bool) => Bool)

;;------------------------------------------------------------------------------
;;
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-fun no-tc :: a => b)

;;------------------------------------------------------------------------------

;(def-pred converge :: R2R -> R -> R => Bool)

;(def-fun max-of :: R -> (a -> Bool) -> (a -> Bool) => R) ;; max under a condition (3rd arg)
;(def-fun min-of :: R -> (a -> Bool) => R)
;(def-fun min-of :: R -> (a -> Bool) -> (a -> Bool) => R) ;; min under a condition (3rd arg)
;(def-fun maximizer-of :: R -> a -> (b -> Bool) => a) ;; (maximizer-of fun var formula)
;(def-fun maximizer-of :: R -> a -> (b -> Bool) -> (c -> Bool) => a) ;; (maximizer-of fun var cond formula)
;(def-fun minimizer-of :: R -> a -> (b -> Bool) => a) ;; (minimizer-of fun var formula)
;(def-fun minimizer-of :: R -> a -> (b -> Bool) -> (c -> Bool) => a) ;; (minimizer-of fun var cond formula)

;;@ trivially true for any SetOf a
(def-pred is-range :: (SetOf a) => Bool)

;;@------------------------------------------------------------------------------
;;@ Real arithmetic
;;@------------------------------------------------------------------------------

;; basic arithmetic operations
;; save the original definitions
(define orig+ +)
(define orig- -)
(define orig* *)
(define orig/ /)
(define orig=  =)
(define orig<= <=)
(define orig<  <)
(define orig>= >=)
(define orig>  >)
(define orig-sqrt sqrt)
(define orig-sin sin)
(define orig-cos cos)
(define orig-tan tan)
(define orig-abs abs)

;(define orig^ ^)
;;@ a + b = the sum of a and b in real numbers
(def-fun +  :: R -> R => R)

;;@ a - b = the difference of a and b in real numbers
(def-fun -  :: R -> R => R)

;;@ - a = the negation of a in real numbers
(def-fun -  :: R => R)

;;@ a * b = the product of a and b in real numbers
(def-fun *  :: R -> R => R)

;;@ a / b = the quotient of a and b in real numbers
(def-fun /  :: R -> R => R)

;;@ a ^ b = the power of a to b in real numbers
(def-fun ^  :: R -> R => R)


;;@ sqrt(a) = the positive square root of a
(def-fun sqrt :: R => R)

;;@ abs(a) = the absolute value of a
(def-fun abs :: R => R)

;;@ sign(a) = the sign of a
;;@ 0 if a is 0
(def-fun sign :: R => R) 

;;@ mean(a,b) = the arithmetic mean of a and b
(def-fun mean :: R -> R => R)

;;@ geom-mean(a,b) = the geometric mean of a and b
(def-fun geom-mean :: R -> R => R)

;;@ min(a,b) = a if a<=b holds, and b otherwise
(def-fun min :: R -> R => R)

;;@ max(a,b) = b if a<=b holds, and a otherwise
(def-fun max :: R -> R => R)

;;@ is-abs-of(x, a) <-> x is the absolute value of a
(def-pred is-abs-of :: R -> R => Bool)

;;@ a <= b <-> a is less than or equal to b
(def-pred <= :: R -> R => Bool)

;;@ a < b <-> a is less than b
(def-pred <  :: R -> R => Bool)

;;@ a >= b <-> a is greater than or equal to b
(def-pred >= :: R -> R => Bool)

;;@ a > b <-> a is greater than b
(def-pred >  :: R -> R => Bool)

;;@ are-triangle-edges(x,y,z) <-> x, y, z satisfy the triangle inequality
(def-pred are-triangle-edges :: R -> R -> R => Bool)

;;@------------------------------------------------------------------------------
;;@ Trigonometric functions
;;@------------------------------------------------------------------------------
;;@ sin(a) = the sine of a
(def-fun sin :: R => R)

;;@ cos(a) = the cosine of a
(def-fun cos :: R => R)

;;@ tan(a) = the tangent of a
(def-fun tan :: R => R)

;;@ csc(a) = the cosecant of a
(def-fun csc :: R => R)

;;@ sec(a) = the secant of a
(def-fun sec :: R => R)

;;@ cot(a) = the cotangent of a
(def-fun cot :: R => R)

;;@ arccsc(a) = the arccosecant of a
(def-fun arccsc :: R => R)

;;@ arc(a) = the arcsecant of a
(def-fun arcsec :: R => R)

;;@ arccot(a) = the arccotangent of a
(def-fun arccot :: R => R)

;;@ atctan(a) = the arctangent of a
(def-fun arctan :: R => R)

;;@------------------------------------------------------------------------------
;;@ Exponential and logarithm
;;@------------------------------------------------------------------------------
;;@ exp(a) = the exponetial of a
(def-fun exp :: R => R)

;;@ log(a, b) = the logarithm of a to the base of b
(def-fun log :: R -> R => R) 

;;@ ln(a) = the natural logarithm of a
(def-fun ln :: R => R) 

;;@------------------------------------------------------------------------------
;;@ Integrality
;;@------------------------------------------------------------------------------
;;@ floor(a) = the maximum integer not greater than a
(def-fun floor :: R => R)

;;@ ceil(a) = the minimum integer not less than a
(def-fun ceil :: R => R)

;;@ is-floor-of(n,a) = n is the maximum integer not greater than a
(def-pred is-floor-of :: Z -> R => Bool)

;;@ is-fractional-part-of(a) = the fractional part of a
(def-pred is-fractional-part-of :: R -> R => Bool)

;;2013/11/26 suzuki
;;@ is-someint(a) <-> a is an integer
(def-pred is-someint :: R => Bool)

;;@ is-rationa(a) <-> a is a rational number
(def-pred is-rational :: R => Bool)

;;@ is-irrational(a) <-> a is an irrational number
(def-pred is-irrational :: R => Bool)

;;@ trivially true for any real number
(def-pred constant  :: R => Bool)

;;@ trivially true for any real number
(def-pred real-number  :: R => Bool)

;;@ int->real(x) = x of the type of R
(def-fun int->real :: Z => R)

;;@ list-int->real([a1,...,an]) = the list [a1,...,an] of which members have the type R
(def-fun list-int->real :: (ListOf Z) => (ListOf R))

;;@------------------------------------------------------------------------------
;;@ Operations on sets and lists of R
;;@------------------------------------------------------------------------------
;;@ difference([a,b]) = the absolute value of a-b
;;@ not implemented for longer arrays
(def-fun difference :: (ListOf R) => R) ;; TODO: use tuple

;;@ sum([a1,...,an]) = the sum of a1,...,an in real numbers
(def-fun sum :: (ListOf R) => R)

;;@ product([a1,...,an]) = the product of a1,...,an in real numbers
(def-fun product :: (ListOf R) => R)

;;@ min(list) = the minimum member in list
(def-fun list-min :: (ListOf R) => R)

;;@ max(list) = the maximum member in list
(def-fun list-max :: (ListOf R) => R)

;;@ is-upper-bound-of(a, set) <-> a is an upper bound of set
(def-pred is-upper-bound-of :: R -> (SetOf R) => Bool)

;;@ is-lower-bound-of(a, set) <-> a is a lower bound of set
(def-pred is-lower-bound-of :: R -> (SetOf R) => Bool)

;;@ is-sup-of(a, set) <-> a is the supremum of set
(def-pred is-sup-of :: R -> (SetOf R) => Bool)

;;@ is-inf-of(a,set) <-> a is the infimum of set
(def-pred is-inf-of :: R -> (SetOf R) => Bool)

;;@------------------------------------------------------------------------------
;;@ R -> R functions
;;@------------------------------------------------------------------------------
;;@ Function from R to R
(def-type R2R)

;;@ fun(f) = function f of the type of R2R
(def-fun fun  :: (R -> R) => R2R)

;;@ trivially true for any function of type R2R
(def-pred is-function :: R2R => Bool)

;;@ is-constant-func(f) <-> f is a constant function
(def-pred is-constant-func :: R2R => Bool)

;;@ fun+(f,g) = the sum of f and g in the function space
(def-fun fun+ :: R2R -> R2R => R2R)

;;@ fun-(f,g) = the difference of f and g in the function space
(def-fun fun- :: R2R -> R2R => R2R)

;;@ fun-s*(a,f) = the scalar product of a and f in the function space
(def-fun fun-s* :: R -> R2R => R2R)

;;@ fun*(f,g) = the product of f and g in the function space
(def-fun fun* :: R2R -> R2R => R2R)

;;@ fun-sum(listoffuns) = the sum of members in listoffuns in the function space
(def-fun fun-sum :: (ListOf R2R) => R2R)

;;@ fun-product(listoffuns) = the product of members in listoffuns in the function space
(def-fun fun-product :: (ListOf R2R) => R2R)

;;@ fun-range(f) = the image of R by f
(def-fun fun-range :: R2R => (SetOf R))

;;@ funapp(f,a) = the value of f evaluated at a
(def-fun funapp :: R2R -> R => R)

;;@ derivative(f) = derivative of function f
(def-fun derivative :: R2R => R2R)

;;@ integration(f,a,b) = the definite integral of f from a to b
(def-fun integration :: R2R -> R -> R => R)

;;@ deriv(f) = derivative of function f
(def-fun deriv :: (R -> R) => (R -> R))
;;@ integral(f,a,b) = the definite integral of f from a to b
(def-fun integral :: (R -> R) -> R -> R => R)

;;@ func-even(f) <-> f is an even function
(def-pred func-even :: R2R => Bool)

;;@ func-odd(f) <-> f is an odd function
(def-pred func-odd  :: R2R => Bool)

;;@ is-fun-deg-of(n,f) <-> f is a univariate polynomial function and has degree n
(def-pred is-fun-deg-of :: Z -> R2R => Bool)

;;@ fun-deg(f) = the polynomial degree of f
;;@ effective only if f is a polynomial function
(def-fun func-deg :: R2R => Z)

;;@ fun-coefficients-of(f) = the list of coefficients of in the ascending order of the degrees
;;@ effective only if f is a polynomial function
(def-fun func-coefficients-of :: R2R => (ListOf R))

;; (func-max (fun f) (set-by-def r) x m)
;;@ func-max(f,S,x,m) = m=f(x) is the maximum value of f in S
(def-pred func-max :: R2R -> (SetOf R) -> R -> R => Bool)

;;@ func-min(f,S,x,m) = m=f(x) is the minimum value of f in S
(def-pred func-min :: R2R -> (SetOf R) -> R -> R => Bool)

;;@ func-max(f,x,m) = m=f(x) is the maximum value of f in R
(def-pred func-max :: R2R -> R -> R => Bool)

;;@ func-min(f,x,m) = m=f(x) is the minimum value of f in R
(def-pred func-min :: R2R -> R -> R => Bool)

;;@ func-maximal(f,x,y) <-> f takes maximal value y at x
(def-pred func-maximal :: R2R -> R -> R => Bool) 

;;@ func-minimal(f,x,y) <-> f takes minimal value y at x
(def-pred func-minimal :: R2R -> R -> R => Bool) 

;;@ func-extreme(f,x,y) <-> f takes extreme value y at x
(def-pred func-extreme :: R2R -> R -> R => Bool) 

;;@ monotonically-increasing(f) <-> f is monotonically nondecreasing
(def-pred monotonically-increasing :: R2R => Bool)

;;@ monotonically-decreasing(f) <-> f is monotonically nonincreasing
(def-pred monotonically-decreasing :: R2R => Bool)

;;@ increasing-at(f, a) <-> f is nondecreasing at a
(def-pred increasing-at :: R2R -> R => Bool)

;;@ decreasing-at(f, a) <-> f is nonincreasing at a
(def-pred decreasing-at :: R2R -> R => Bool)

;;@ fun-convex-downward(f, set) <-> f is downward convex on set
(def-pred fun-convex-downward :: R2R -> (SetOf R) => Bool)

;;@ fun-convex-upward(f, set) <-> f is upward convex on set
(def-pred fun-convex-upward :: R2R -> (SetOf R) => Bool)

;;@ fun-convex-downward(f) <-> f is downward convex on R
(def-pred fun-convex-downward :: R2R => Bool)

;;@ fun-convex-upward(f) <-> f is upward convex on R
(def-pred fun-convex-upward :: R2R => Bool)

;;@ converge(f,a,b) <-> the limit of f(x) as x approaches a is b
(def-pred converge :: R2R -> R -> R => Bool) ; (converge f x y) <-> lim(t->x) f(t)=y

;;@ converge-plus(f,a,b) <-> the limit of f(x) as x approaches a from above is b
(def-pred converge-plus :: R2R -> R -> R => Bool)

;;@ converge-minus(f,a,b) <-> the limit of f(x) as x approaches a from below is b
(def-pred converge-minus :: R2R -> R -> R => Bool)

;;@ converge-plus-inf(f,b) <-> the limit of f(x) as x approaches infinity is b
(def-pred converge-plus-inf :: R2R -> R => Bool)

;;@ converge-minus-inf(f,b) <-> the limit of f(x) as x approaches minus infinity is b
(def-pred converge-minus-inf :: R2R -> R => Bool)

;;@ limit value type
(def-type LimitValue)

;;@ divergence to +infinity
(def-fun divergence-to-plus-inf :: => LimitValue)

;;@ divergence to -infinity
(def-fun divergence-to-minus-inf :: => LimitValue)

;;@ convergence-to(c) = convergence to constant c
(def-fun convergence-to :: R => LimitValue)

;;@ not diverging and not converging
;;(def-fun no-limit-value :: => LimitValue)
;; (= (limit (Lam x (sin x)) (tends-to-plus-inf))
;;    (limit (Lam x (cos x)) (tends-to-plus-inf)))

;;@ the value to which the bound variable in lim_{x->a} f(x) notation approaches
(def-type TendsToValue)

;;@ x -> +inf
(def-fun tends-to-plus-inf :: => TendsToValue)

;;@ x -> -inf
(def-fun tends-to-minus-inf :: => TendsToValue)

;;@ x -> a-0
(def-fun tends-to-from-left :: R => TendsToValue)

;;@ x -> a+0
(def-fun tends-to-from-right :: R => TendsToValue)

;;@ x -> a
(def-fun tends-to :: R => TendsToValue)

;;@ limit(f,a) = the limit of f(x) as x tends to a
(def-fun limit :: R2R -> TendsToValue => LimitValue)

;;2013/12/23 suzuki
;;@ continuous(f,set) <-> f is continuous on set
(def-pred continuous :: R2R -> (SetOf R) => Bool)

;;2014/03/28 suzuki
;;@ differentiable(f,set) <-> f is differentiable on set
(def-pred differentiable :: R2R -> (SetOf R) => Bool)


;;@ poly-fun([a0,...,an]) = the polynomial function an x^n + ... + a0
(def-fun poly-fun   :: (ListOf R) => R2R)

;;@------------------------------------------------------------------------------
;;@ Intervals
;;@------------------------------------------------------------------------------
;;@ endpoint of intervals
(def-type EndPoint)

;;@ ep-close(a) = a of the type EndPoint expressing the point a is contained 
;;@ in the interval
(def-fun ep-close :: R => EndPoint)

;;@ ep-close(a) = a of the type EndPoint expressing the point a is not contained 
;;@ in the interval
(def-fun ep-open  :: R => EndPoint)

;;@ ep-inf = constant of the type EndPoint expressing infinity
(def-fun ep-inf   :: => EndPoint)

;;@ test-range-hi(x,a) <-> x is bounded by a from upper
(def-pred test-range-hi :: R -> EndPoint => Bool)

;;@ test-range-hi(x,a) <-> x is bounded by a from below
(def-pred test-range-lo :: EndPoint -> R => Bool)

;;@ range(a,b) = the interval expressed by a and b
(def-fun range :: EndPoint -> EndPoint => (SetOf R))

;(def-pred is-polynomial :: (R -> R) => Bool)

;;@------------------------------------------------------------------------------
;;@ min/max
;;@------------------------------------------------------------------------------
;;@ max-of(P) = the maximum value among those that satisfy P
(def-fun max-of :: (R -> Bool) => R)

;;@ min-of(P) = the minimum value among those that satisfy P
(def-fun min-of :: (R -> Bool) => R)

;;@ maximum(set, a) <-> a is the maximum value of set
(def-pred maximum :: (SetOf R) -> R => Bool)

;;@ minimum(set, a) <-> a is the minimum value of set
(def-pred minimum :: (SetOf R) -> R => Bool)

;;@ maximum(set, < ,a) <-> a is the maximum value of set with an order <
(def-pred maximum :: (SetOf a) -> (a -> a -> Bool) -> a => Bool) ;(maximum (set) (order predicate) (max value))

;;@ minimum(set, < ,a) <-> a is the minimum value of set with an order <
(def-pred minimum :: (SetOf a) -> (a -> a -> Bool) -> a => Bool) ;(maximum (set) (order predicate) (min value))

;;@------------------------------------------------------------------------------
;;@ Equations
;;@------------------------------------------------------------------------------
;;@ Equations
(def-type Equation)

;;@ equation(f) = the equation "f = 0"
(def-fun equation :: (R -> R) => Equation)

;;@ poly-equation([a0,...,an]) = the equation "an x^n + ... + a0 = 0" 
(def-fun poly-equation :: (ListOf R) => Equation)

;;@ trivially true for any equation of type Equation
(def-pred is-equation :: Equation => Bool)

;;@ has-real-solution(phi) <-> phi has a real solution
(def-pred has-real-solution :: Equation => Bool)

;;@ is-solution-of(a, phi) <-> a is a solution of phi in the domain
;;@ domain is either real numbers or complex numbers depending on problems
(def-pred is-solution-of :: R -> Equation => Bool)

;;@ are-solutions-of(list, phi) <-> list is the list of all solutions of phi in 
;;@ the domain; domain is either real numbers or complex numbers depending on problems
(def-pred are-solutions-of :: (ListOf R) -> Equation => Bool)

;;@ is-real-solution-of(a, phi) <-> a is a real solution of phi
(def-pred is-real-solution-of :: R -> Equation => Bool)

;;@ are-real-solutions-of(list, phi) <-> list is the list of all real solutions of phi
(def-pred are-real-solutions-of :: (ListOf R) -> Equation => Bool)

;;@ is-equation-deg-of(n, phi) <-> phi is a univariate polynomial equation and 
;;@ the polynomial has degree n.
(def-pred is-equation-deg-of :: Z -> Equation => Bool)

;;@ is-multiple-root-of(a, phi) <-> a is a multiple root of phi
(def-pred is-multiple-root-of :: R -> Equation => Bool)

;;@ is-n-multiple-root-of(n, a, phi) <-> a is a root of multiplicity n of phi
(def-pred is-n-multiple-root-of :: Z -> R -> Equation => Bool)

;;@ equation-determinant(phi) = the determinant of phi
;;@ effective only if phi is a quadratic equation
(def-fun equation-determinant :: Equation => R)

;;@ equation-deg(f) = the polynomial degree of f
;;@ effective only if f is a polynomial equation
(def-fun equation-deg :: Equation => Z)

;;@ equation-coefficients-of(f) = the list of coefficients of in the ascending order of the degrees
;;@ effective only if f is a polynomial equation
(def-fun equation-coefficients-of :: Equation => (ListOf R))

;;@------------------------------------------------------------------------------
;;@ Implementation of Real polynomials as a list
;;@------------------------------------------------------------------------------
;;@ poly+(f,g) = the sum of f and g in the polynomial space
(def-fun poly+ :: (ListOf R) -> (ListOf R) => (ListOf R))

;;@ poly-(f,g) = the difference of f and g in the polynomial space
(def-fun poly- :: (ListOf R) -> (ListOf R) => (ListOf R))

;;@ poly-s*(a,f) = the scalar product of a and f in the polynomial space
(def-fun poly-s* :: R -> (ListOf R) => (ListOf R))

;;@ poly*(f,g) = the product of f and g in the polynomial space
(def-fun poly* :: (ListOf R) -> (ListOf R) => (ListOf R))

;;@ poly^(f,n) = the power of f to n in the polynomial space
(def-fun poly^ :: (ListOf R) -> Z => (ListOf R)) 

;;@ poly-div(f,g) = quotient of f/g
(def-fun poly-div :: (ListOf R) -> (ListOf R) => (ListOf R)) 

;;@ poly-mod(f,g) = remainder of f/g
(def-fun poly-mod :: (ListOf R) -> (ListOf R) => (ListOf R)) 

;;@ poly-divmod(f,g,q,r) <-> q is the quotient and r is the remainder of polynomial 
;;@ division with remainder of f and g
(def-pred poly-divmod :: (ListOf R) -> (ListOf R) -> (ListOf R) -> (ListOf R) => Bool) 

;;@ poly-value(f,a) = the value of f evaluated at a
(def-fun poly-value :: (ListOf R) -> R => R)

;;@ poly-deg(f) = the degree of f
(def-fun poly-deg   :: (ListOf R) => Z)

;;@ poly-deriv(f) = derivative of polynomial f
(def-fun poly-deriv :: (ListOf R) => (ListOf R))

;;@ constant-term(f) = the constant coefficient of f
(def-fun constant-term :: (ListOf R) => R)

;;@ poly-equal(f,g) <-> f and g is the same polynomial
;;@ ignores the difference in higher degree terms with coefficient 0
(def-pred poly-equal :: (ListOf R) -> (ListOf R) => Bool)

;;@ poly-divisible-by(f,g) <-> f is divisible by g
(def-pred poly-divisible-by :: (ListOf R) -> (ListOf R) => Bool)

;;------------------------------------------------------------------------------
;; Interface of Real polynomials
;;------------------------------------------------------------------------------
;;@ Real Polynomial
(def-type Polynomial)

;;@ polynomial constructor
(def-ctor polynomial :: (ListOf R) => Polynomial)

;;@ trivially true for any polynomial of type Polynomial
(def-pred is-polynomial :: Polynomial => Bool)

;;@ polynomial+(f,g) = the sum of f and g in the polynomial space
(def-fun polynomial+ :: Polynomial -> Polynomial => Polynomial)

;;@ polynomial-(f,g) = the difference of f and g in the polynomial space
(def-fun polynomial- :: Polynomial -> Polynomial => Polynomial)

;;@ polynomial-s*(a,f) = the scalar product of a and f in the polynomial space
(def-fun polynomial-s* :: R -> Polynomial => Polynomial)

;;@ polynomial*(f,g) = the product of f and g in the polynomial space
(def-fun polynomial* :: Polynomial -> Polynomial => Polynomial)

;;@ polynomial^(f,n) = the power of f to n in the polynomial space
(def-fun polynomial^ :: Polynomial -> Z => Polynomial)

;;@ polynomial-div(f, g) = quotient of division f/g
(def-fun polynomial-div :: Polynomial -> Polynomial => Polynomial)

;;@ polynomial-mod(f, g) = remainder of division f/g
(def-fun polynomial-mod :: Polynomial -> Polynomial => Polynomial)

;;@ polynomial-divmod(f,g,q,r) <-> q is the quotient and r is the remainder 
;;@ of polynomial division with remainder of f and g
(def-pred polynomial-divmod :: Polynomial -> Polynomial -> Polynomial -> Polynomial => Bool)

;;@ polynomial-divisible-by(f,g) <-> f is divisible by g
(def-pred polynomial-divisible-by :: Polynomial -> Polynomial => Bool)

;;@ polynomial-value(f,a) = the value of f evaluated at a
(def-fun polynomial-value :: Polynomial -> R => R)

;;@ polynomial-deg(f) = the degree of f
(def-fun polynomial-deg :: Polynomial => Z)

;;@ polynomial-sum(list) = the sum of members in list in the polynomial space
(def-fun polynomial-sum :: (ListOf Polynomial) => Polynomial)

;;@ polynomial-product(list) = the product of members in list in the polynomial space
(def-fun polynomial-product :: (ListOf Polynomial) => Polynomial)

;;2013/11/26 suzuki
;;@ poly2list(f) = the list [f0,...,fn] of coefficient of f
(def-fun poly2list :: Polynomial => (ListOf R))

;;@ division operation
(def-type PolynomialDivision)
(def-fun polynomial-division :: Polynomial -> Polynomial => PolynomialDivision)
(def-fun polynomial-quot-of :: PolynomialDivision => Polynomial)
(def-fun polynomial-rem-of  :: PolynomialDivision => Polynomial)

;;@ list of coefficients (in the ascending order of the degrees)
(def-fun polynomial-coefficients-of :: Polynomial => (ListOf R))

;;@-------------------------------------------------------
;;@
;;@ Boolean formula expressed as a term
;;@
;;@-------------------------------------------------------
;;@ Proposition type: to represent a proposition as a term
(def-type Prop)

;;@ prop(^ [_: unit] : P) means 'P'
(def-fun prop :: (Unit -> Bool) => Prop)

;;@ hold(prop(^ [_: unit] P)) <-> P
(def-pred hold :: Prop => Bool)

;;@ trivially true for any Prop
(def-pred is-proposition :: Prop => Bool)

;;@ Logical connectives
(def-fun and   :: Prop -> Prop => Prop)
(def-fun or    :: Prop -> Prop => Prop)
(def-fun not   :: Prop => Prop)
(def-fun impl  :: Prop -> Prop => Prop)
(def-fun equiv :: Prop -> Prop => Prop)

;;------------------------------------------------------------------------------
;; Interface for Math II+B Solver
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-pred ciib-formula :: (Unit -> Bool) => Bool)

;;------------------------------------------------------------------------------
;; coordinate of 1-dimentional space
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-fun coordinate-of :: R => R) 

;;------------------------------------------------------------------------------
;; Problem type (only for language processing; do not appear in the semantic representation)
;;------------------------------------------------------------------------------
(def-type Problem)
(def-fun problem :: => Problem)
