Todai Robot Project Math Problem Library S-expression format
============================================================

# 1. Basic Syntax
-----------------

Formulas in the axiom and problems files are written in the following syntax:

    formula ::= (forall (var1 var2 ..) formula) ;; universal quantification
            |   (exists (var1 var2 ..) formula) ;; existential quantification
            |   (&& formula1 formula2 ...)  ;; conjunction
            |   (|| formula1 formula2 ...)  ;; disjunction
            |   (-> formula1 formula2)      ;; implication
            |   (<-> formula1 formula2)     ;; equivalence
            |   (! formula)                 ;; negation
            |   (symbol term1 term2 ..)

     term ::= variable
          |   number
          |   "string"
          |   (symbol)  ;; constant: e.g., (Pi)
          |   (symbol term1 term2 ..)
          |   (Lam var term)     ;; lambda abstraction over a term of type != Bool
          |   (PLam var formula) ;; lambda abstraction over a formula (of type Bool)

* `symbol` and `variable` can be any name that is allowed as an identifier in lisp
* Function application is represented by `LamApp` function and `PLamApp` predicate:

         (LamApp  (Lam x (+ x 1)) 3)  ;; ==> 4
         (PLamApp (PLam x (< x 3)) 1) ;; ==> True

   * `LamApp` is for function with return type other than `Bool`
   * `PLamApp` is for function with return type `Bool`


# 2. Definitions of Axioms
-------------------------

## 2.1 Type Definitions
New datatypes are created with `(def-type <type-name>)`.
Type names must start with capital letters.

Parametric polymorphism is supported.
One can use type variables (`a`, `b`, ...) in type names.


Example:

    (def-type MyType)
    (def-type (ListOf a)) ;; list of elements of type a


## 2.2 Type Declarations of Functions and Predicates
New predicates with a specified type are introduced by `(def-pred <predicate-name> :: <type>)`

New functions with a specified type are introduced with `(def-pred <function-name> :: <type>)`

Notice that types of functions and predicates are `type 1 -> type 2 -> ... type n => return type`;
The symbol before the return type is `=>`, not `->`.

The return type of predicates must be `Bool`.

Example:

    (def-fun plus :: R -> R => R) ;; addition of two reals
    (def-fun sum :: (ListOf R) => R) ;; summation of all elements in a list
    (def-pred even :: Z => Bool) ;; determine if a given number is even
    (def-pred member :: a -> (ListOf a) => Bool) ;; determine if the object of the first parameter is in the list of the second parameter
                                                 

## 2.3 Defining Functions and Predicates (Axioms)
Functions and predicated are defined with `axiom` macro.

The macro allows a formula of any form as an axiom:

    (axiom
       <name-of-axiom>
       (<var1> <var2> ...)
       <formula>)

* Any name is allowed for `<name-of-axiom>` as long as it can be an identifier in lisp though we recommend a name describes the content.

In the formula syntax, it corresponds to:

    (forall (<var1> <var2> ...) <formula>)

Example:

    ;; (even n) : n is a even number
    ;;
    (axiom
      def-even
      (n)
      (<-> (even n)
           (exists (m)
              (= n (int.* 2 m)))))

    ;; (sum xs) : returns the summation of the elements of the list xs
    ;;
    ;; definition of the base case
    (axiom
       def-sum-nil
       ()
       (= (sum (nil))
          0))
    ;;
    ;; definition of recursion step
    (axiom
       def-sum-cons
       (x xs)
       (= (sum (cons x xs))
          (+ x (sum xs))))

## 2.4 Name Space
---------------------
Every type, function and predicate belongs to a namespace.

Their namespace is determined by one that is effective
at the point of their definition.

Namespace `xyz` is effective right after a `(namespace xyz)`
declaration in a file and right before the next `(namespace ..)` 
declaration.

Outside of any namespace (i.e., before any `(namespace ..)`
declaration in a file), default namespace is effective.

Internally, all symbol names are prefixed by their namespaces.
The addition function for integer is hence called `int.+` internally,
and the addition function for rational number is `rat.+` etc.

When an namespace is effective in an axiom or problem file,
one can refer to a function in the same namespace without
the namespace prefix.
Hence `(+ 1 2)` in the `int` namespace refers `int.+`, not
the `+ :: R -> R => R` as in the default namespace.

When one needs to use a function `f` defined outside of 
the currently effective namespace, one can refer to it
by adding prefix to that symbol.
Thus one can use the addition function for `int` inside
the `rat` namespace as follows:
```
(namespace rat)

(= (rat2int (+ (ratio 3 2) (ratio 1 2)))
   (int.+ 1 1))
```

When you need a function defined in the default namespace
but it has the same unprefixed name with some function
in the currently effective namespace, just add `.` before
the unprefixed name; it refers to one defined in the default
namespace:
```
(namespace int)

(= (+ 2 3) ;; "+" refers to "int.+"
   (.+ (sqrt 9) 2)) ;; ".+" refers to "+ :: R -> R => R"
```

When you want to switch to the default name space, use
`(default-namespace)`. Thereafter, you are in the default
namespace.

# 3. Definition of Directives
---------------------------
Use `def-directive` to write a problem:

    (def-directive <problem-name> <directive>)

Three types of directives can be defined:

* `(Find (<var>) <formula>)` : find all possible values for `<var>` defined by `<formula>`
* `(Show <formula>)`         : prove <formula>
* `(Draw (<var>) <formula>)` : find a geometric object `<var>` defined by `<formula>`

Example:

    ;; Find the answer for x^2 = 1.
    (def-directive
       p1
       (Find (x) (= (^ x 2) 1)))

    ;; Let L be the graph of y = x + 1.
    ;; Find the foot P of the perpendicular line from (0, 0) to L.
    (def-directive
       p2
       (Find (P)
          (exists (L)
          (&& (= L (graph-of (poly-fun (list-of 1 1))))
              (on P L)
              (perpendicular (line (point 0 0) P) L)))))

     ;; Prove that there are infinitely many prime numbers
     (def-directive
       p3
       (Show
         (forall (n)
            (-> (is-natural-number n)
                (exists (p)
                   (&& (prime p)
                       (< n p)))))))

     ;; Draw the locus of points that are at distance 1 from the origin
     (def-directive
        p4
        (Draw (C)
           (= C (set-of-cfun (Lam x (PLam y (= (distance (origin) (point x y)) 1)))))))


# 4. Answer Definitions and Answer Checking
-------------------------

## 4.1 Answer Definition

### 4.1.1 Basics
Use `def-answer` to write answers for the problems with `Find` and `Draw`.

Example:

    (def-directive
       p1
       (Find (x) (= (+ x 1) 0)))
    
    (def-answer
       p1
       (PLam x (= x -1)))


The first parameter of `def-answer` must coincide with the name of the problem defined in `def-directive`.

The syntax of answer definitions is same as the one of problem definition.
Use `PLam` to write a necessary and sufficient condition for the object specified by `Find`.
Answers for `Find` directives on non-number types, e.g., `Shape`, can be defined in the same way as numbers.

    ;; Find the locus of a point equidistant from (0, 0) and (1, 0)
    (def-directive
       p2
       (Find (C)
        (= C (set-of-cfun (Lam x (PLam y 
               (= (distance (point x y) (point 0 0))
                  (distance (point x y) (point 1 0)))))))))
    
    ;; Answer: { x = 1/2 }
    (def-answer
       p2
       (PLam C (= C (set-of-cfun (Lam x (PLam y (= x (/ 1 2))))))))

The answer to `Draw` directive (which is suppose to be a single geometric object)
is given as the object itself, not as a singleton set (as for the above example):

    ;; Draw the locus of a point equidistant from (0, 0) and (1, 0)
    (def-directive
       p2
       (Draw (C)
        (= C (set-of-cfun (Lam x (PLam y 
               (= (distance (point x y) (point 0 0))
                  (distance (point x y) (point 1 0)))))))))
    
    ;; Answer: line "x = 1/2"
    (def-answer
       p2
       (set-of-cfun (Lam x (PLam y (= x (/ 1 2))))))
    

### 4.1.2 Answer with parameters
The answer for the problem "Express the length of ... with a, b" must contain
parameters (free variables).
In such a case, write `def-answer` with the same free variable
used in `def-directive`.


Example:

    (def-directive
      p3
      (Find (x) (= (+ x a) 0)))
    
    (def-answer
      p3
      (PLam x (= x (- a))))


If the free variables appeared in the answer are
constrained by certain conditions,
write it down explicitly in `def-answer`.

Example:

    (def-directive
      p4
      (Find (x) (&& (= (+ x a) 0)
                    (< 0 a))))
    
    (def-answer
      p4
      (PLam x (&& (= x (- a))
                  (< 0 a))))

Also one should write it down the implicit conditions (implied conditions)
for the free variables.

Example:

    (def-directive
      p5
      (Find (x) (&& (= (^ x 2) a))))
    
    (def-answer
      p5
      (PLam x (&& (|| (= x (sqrt a))
                      (= x (- (sqrt a))))
                  (<= 0 a))))

### 4.1.3 Answer for multiple variables
For a problem that asks to find multiple values,
write it as a problem to find a list of values.
In such a case, answers should be defined in the same way as the problems.


Example:

    (def-directive
      p5
      (Find (xy)
        (exists (x y)
          (&& (= xy (list-of x y))
              (= (+ x y) 1)
              (= (- x y) 0)))))
    
    (def-answer
      p5
      (PLam xy (= xy (list-of (/ 1 2) (/ 1 2)))))

It is same for problems with infinite solutions:

    (def-directive
      p5
      (Find (xy)
        (exists (x y)
           (= xy (list-of x y))
           (= (- x y) 0))))
    
    (def-answer
      p5
      (PLam xy (exists (k)
                 (= xy (list-of k k)))))

### 4.1.4 Answers for `Draw`
For `Draw` problems, answers should be `Shape` objects
which represent the region asked by the problem.

Example

    (def-directive
      p6
      (Draw (P) (<= (distance P (origin) 1))))
    
    (def-answer
      p6
      (set-of-cfun
         (Lam x (PLam y 
             (<= (+ (^ x 2) (^ y 2)) 1)))))

## 4.2 Answer Checking System
A solver is supposed to give an answer in the same format as `def-answer`.

Example

     (def-directive
        p
        (Find (x) (= (+ x 1) 2)))

     ---> Expected output: (PLam x (= x 1))

An answer is checked by proving the sentence

    (forall (x) 
       (<-> (PLamApp <solver-output> x)
            (PLamApp <defined-answer> x)))

If the problem includes free variables p1, p2, ...,
the answer check system tries to prove the universal closure
of the above sentence:

    (forall (p1 p2 .. x)
        (<-> (PLamApp <solver-output> x)
             (PLamApp <defined-answer> x)))
