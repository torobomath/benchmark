(import "axioms/DefaultTypes.lsp")

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Plane Geometry
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(namespace 2d)

;; overloaded symbols in 2D/3D geometry
(include "axioms/geom-common-head.lsp")

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Points
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-ctor point :: R -> R => Point)

;;@ point-rotate-around-origin(p,a) = the point which is p rotated around origin by angle a in radian
(def-fun point-rotate-around-origin :: Point -> R => Point)

;;@ vec-rotate-around-origin(p,a) = the vector which is p rotated around origin by angle a in radian
(def-fun vec-rotate-around-origin :: Vector -> R => Vector)

;;@ point-rotate-around-origin(p,q,a) = the point which is p rotated around q by angle a in radian
(def-fun point-rotate-around :: Point -> Point -> R => Point)

;;@ in-counter-clockwise-direction(list) <-> the points in list are in counter clockwise order
(def-pred in-counter-clockwise-direction :: (ListOf Point) => Bool)

;;@ x-coord(p) = the x-coordinate of p
(def-fun x-coord :: Point => R)

;;@ x-coord(p) = the x-coordinate of p
(def-fun y-coord :: Point => R)

;;@ x-coord(v) = the x-coordinate of v
(def-fun vec-x-coord :: Vector => R)

;;@ y-coord(v) = the y-coordinate of v
(def-fun vec-y-coord :: Vector => R)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Vectortors
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ vec3d(a,b) = the vector of components a and b
(def-ctor vec2d :: R -> R => Vector)

;;@ vec-to-point(v) =  transform vector v to point (to use vector(but type is point) operate)
(def-fun vec-to-point :: Vector => Point)

;;@ outer-prod(u,v) = the value u1v2 - v1u2, where u=(u1,u2) and v=(v1,v2)
(def-fun outer-prod :: Vector -> Vector => R)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ 2x2 Matrices
;;@ (matrix a11 a12 
;;@         a21 a22)
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ matrix(a11,a12,a21,a22) = the matrix (aij)
(def-ctor matrix :: R -> R -> R -> R => Matrix)

;;@ set-of-cfun(phi(*,*)) = the shape of which characteristic function is phi
(def-fun set-of-cfun :: (R -> R -> Bool) => Shape)

;;@ graph-of(f(*)) = the shape of the graph of y = f(x)
(def-fun graph-of :: R2R => Shape) 

;;@ graph-of-implicit-function(f(*,*)) = the shape of the graph of f(x,y) = 0
(def-fun graph-of-implicit-function :: (R -> R -> R) => Shape) 

;;@ shape-rotate-around-origin(shape,a) = the shape which is shape rotated around origin by angle a in radian
(def-fun shape-rotate-around-origin :: Shape -> R => Shape)

;;@ shape-rotate-around-origin(shape,p,a) = the shape which is shape rotated around p by angle a in radian
(def-fun shape-rotate-around :: Shape -> Point -> R => Shape)


;;@ is-symmetry-axis-of(shape1,shape2) <-> shape1 is a symmetry axis of shape2
;;@ effective only if shape1 is a line
(def-pred is-symmetry-axis-of :: Shape -> Shape => Bool)

;;@ trivially true for any Shape
(def-pred is-graph :: Shape => Bool)

;;@ trivially true for any Shape
(def-pred is-curve :: Shape => Bool)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Lines
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ line2d(a,b,c) = the line ax + by = c
(def-fun line2d :: R -> R -> R => Line)

;;@ is-slope-of(a,line) <-> the slope of line is a
(def-pred is-slope-of :: R -> Line => Bool)

;;@ is-x-intercept-of(a,line) <-> the x-intercept of line is a
(def-pred is-x-intercept-of :: R -> Line => Bool)

;;@ is-y-intercept-of(a,line) <-> the y-intercept of line is a
(def-pred is-y-intercept-of :: R -> Line => Bool)

;;@ line-parameter(line) = the list [a,b,c], where line is expressed by ax + by = c
;;@ the expression of line is restricted to b = -1 or b = 0 and a = -1
(def-fun line-parameter :: Line => ListOf R)

;;@ upper-area-of(line) = the shape of the upper area of line
;;@ the shape of the left area of line for the line x = c
(def-fun upper-area-of :: Line => Shape)

;;@ lower-area-of(line) = the shape of the lower area of line
;;@ the shape of the right area of line for the line x = c
(def-fun lower-area-of :: Line => Shape)

;;@ polyline([p1,...,pn]) = the shape of the union of the segments p1p2, ..., pn-1pn
(def-fun polyline :: (ListOf Point) => Shape)

;;@ points-same-side(line, list) <-> all the points in list are on the same side of line
(def-pred points-same-side :: Line -> (ListOf Point) => Bool)

;;@ shapes-same-side(line, list) <-> all the shapes in list are included in the same side of line 
(def-pred shapes-same-side :: Line -> (ListOf Shape) => Bool)

;;@ points-opp-side(line,p,q) <-> p and q are on the opposite side of line
(def-pred points-opp-side  :: Line -> Point -> Point => Bool)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Triangles
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ is-excircle-of(S,T,p) <-> circle S is the excircle of triangle T tangent to the opposite side of p
;;@ effective only if p is a vertex of triangle T
(def-pred is-excircle-of :: Shape -> Shape -> Point => Bool)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Polygon
;;@ not implemented
;;@ regular-n-polygon(n,p,q) = the regular n polygon one of whose segment is pq 
(def-fun regular-n-polygon :: Z -> Point -> Point => Shape)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Angles
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ angle-in-counterclockwise(u,v) = the angle in radian between p and q in counterclockwise direction
(def-fun angle-in-counterclockwise :: Vector -> Vector => R)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ Circles and arcs
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ unit-circle() = the circle of which center is the origin and radius 1
(def-fun unit-circle :: => Circle)

;;@ circle(p,a) = the circle of which center is p and radius a
(def-fun circle :: Point -> R => Circle)

;;@ disk(p,a) = the disk of which center is p and radius a
(def-fun disk :: Point -> R => Circle)

;;@ arc(p,r,a,b) = the arc of which center is p, radius r, initial angle a, and final angle b
(def-fun arc :: Point -> R -> R -> R => Arc) 

;;@ is-radius-of(seg, circle) <-> seg is a radius of circle
(def-fun is-radius-of :: Seg -> Circle => Bool)

;; @ is-diameter-of(seg, circle) <-> seg is a diameter of circle
;(def-fun is-diameter-of :: Seg -> Circle => Bool)

;;@ is-chord-of(seg, circle) <-> seg is a chord of circle
(def-fun is-chord-of :: Seg -> Circle => Bool)

;;@ concircular(list) <-> all the points in list lie on a common circle
(def-pred concircular :: (ListOf Point) => Bool)

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ circular sectors and semicircle
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ circular-sector(p,r,a,b) = the circular sector of which center is p, radius r, initial angle a, and final angle b
(def-fun circular-sector :: Point -> R -> R -> R => Shape) 

;;@ semicircle(p,r,a) = the semicircle of which center is p, radius r, and initial angle a
(def-fun semicircle :: Point -> R -> R => Shape) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ellipses
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-pred ellipse-type :: Shape => Bool)
(def-fun ellipse :: Point -> Point -> R => Shape)
(def-fun major-radius :: Shape => R)
(def-fun minor-radius :: Shape => R)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hyperbola
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-pred hyperbola-type :: Shape => Bool)
(def-fun hyperbola :: Point -> Point -> R => Shape)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; parabola
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def-pred parabola-type :: Shape => Bool)
(def-fun parabola :: Point -> Point => Shape)
(def-fun directrix :: Shape => Shape)


;(def-pred axis-of :: Shape -> R => Bool) ; need Axis or Line type?
;;@ trivially true for any Shape
(def-pred graph     :: Shape => Bool)
;;@ parabola(shape) <-> shape is the parabola expressed by y = ax^2 + bx +c
(def-pred parabola  :: Shape => Bool)

;;@ move-along-counter-clockwise-len(circle,p,q,a) <-> q is p moved along circle by len in counter clockwise direction
(def-pred move-along-counter-clockwise-len :: Shape -> Point -> Point -> R => Bool)

;;@ trivially true for any Shape
(def-pred region :: Shape => Bool)

;;@ circle-type(shape) <-> shape is a circle
(def-pred circle-type :: Shape => Bool)

;;@ disk-type(shape) <-> shape is a disk
(def-pred disk-type :: Shape => Bool)

;;@ semicircle-type(shape) <-> shape is a semicircle
(def-pred semicircle-type :: Shape => Bool)

;;@ arc-type(shape) <-> shape is an arc
(def-pred arc-type :: Shape => Bool)


;;;; area of a region enclosed by a set of curves
;;(def-fun enclosed-area :: (ListOf Shape) => R)

;;@ convex-upward(shape, set) <-> shape is upward convex on set
(def-pred convex-upward :: Shape -> (SetOf R) => Bool)

;;@ convex-downward(shape, set) <-> shape is downward convex on set
(def-pred convex-downward :: Shape -> (SetOf R) => Bool)

;;@ 1st-quadrant() = the first quadrant
(def-fun 1st-quadrant :: => Shape)

;;@ 2nd-quadrant() = the second quadrant
(def-fun 2nd-quadrant :: => Shape)

;;@ 3rd-quadrant() = the third quadrant
(def-fun 3rd-quadrant :: => Shape)

;;@ 4th-quadrant() = the fourth quadrant
(def-fun 4th-quadrant :: => Shape)

;;@ is-focus-of(p,shape) <-> p is a focus of shape
;;@ effective only if shape is an ellipse, parabola or a hyperbola
(def-pred is-focus-of :: Point -> Shape => Bool)
(def-pred are-foci-of :: (ListOf Point) -> Shape => Bool)
(def-pred is-asymptote-of :: Shape -> Shape => Bool)
