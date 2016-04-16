;;@----------------------------------------------
;;@ additional definitions for ATP solvers
;;@----------------------------------------------
(import "axioms/DefaultTypes.lsp")
(default-namespace)

;;@----------------------------------------------
;;@ directives as fake predicates
;;@----------------------------------------------
(def-pred find :: (a -> Bool) => Bool)
(def-pred draw :: (a -> Bool) => Bool)

;;@----------------------------------------------
;;@ implementation of functions & predicates
;;@----------------------------------------------
(axiom
  def-if-true
  (then else)
  (= (if (true) then else)
     then))

(axiom
  def-if-else
  (then else)
  (= (if (false) then else)
     else))

(axiom
  def-abs
  (x)
  (= (abs x)
     (if (<= x 0)
         x
         (- x))))

(axiom
  def-sign
  (x)
  (= (sign x)
     (if (= x 0)
         0
         (if (< 0 x)
             1
             -1))))

(axiom
  def-sqrt
  (x)
  (forall (x)
     (-> (<= 0 x)
         (&& (<= 0 (sqrt x))
             (= (^ (sqrt x) 2) x)))))

(import "axioms/IntegerTypes.lsp")
(namespace int)

(axiom
  def-abs
  (x)
  (= (abs x)
     (if (<= x 0)
         x
         (- x))))

(axiom
  def-sign
  (x)
  (= (sign x)
     (if (= x 0)
         0
         (if (< 0 x)
             1
             -1))))

(def-fun eucitr :: Z -> Z => Z)

(axiom
   def-eucitr
   (m n)
   (= (eucitr m n)
      (if (< n m)
          (if (= n 0)
              m
              (eucitr n (mod m n)))
          (if (= m 0)
              n
              (eucitr m (mod n m))))))

(axiom
   def-gcd-base
   (n)
   (= (gcd (list-of n))
      (if (<= 0 n)
          n
          (- n))))

(axiom
  def-gcd-rec
  (m n ns)
  (= (gcd (cons m (cons n ns)))
     (gcd (cons (eucitr m n) ns))))

(axiom
   def-lcm-base
   (n)
   (= (lcm (list-of n))
      (if (<= 0 n)
          n
          (- n))))

(axiom
  def-lcm-rec
  (m n ns)
  (= (lcm (cons m (cons n ns)))
     (lcm (cons (div (* m n) (gcd m n)) ns))))

(axiom
   def-iota
   (m n)
   (= (iota m n)
      (if (= m n)
          (list-of m)
          (if (< m n)
              (cons m (iota (+ m 1) n))
              (cons m (iota (- m 1) n))))))

(axiom
  def-^
  (m k)
  (= (^ m k)
     (if (= k 0)
         1
         (* m (^ m (- k 1))))))

(axiom
  def-set-to-list-base
  ()
  (= (set-to-list (finset (nil)))
     (nil)))

(axiom
  def-set-to-list-rec
  (s)
  (forall (s)
     (-> (! (is-empty s))
         (exists (m)
            (&& (minimum s m)
                (= (set-to-list s)
                   (cons m (set-to-list (complement-of-in (finset (list-of m)) s)))))))))
