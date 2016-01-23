;;------------------------------------------------------------------------------
;; Geometry; common definitions for 2D & 3D & Complex
;;------------------------------------------------------------------------------

(def-type Point)

;;@ shapes in R^2 or R^3 or C
(def-type Shape)

;;@ angles of the shape angle(A,B,C)
(def-type Angle)

(def-type Vector)

;; alias
(def-alias Line Shape)
(def-alias Seg Shape)
(def-alias Triangle Shape)
(def-alias Square Shape)
(def-alias Circle Shape)
(def-alias Arc Shape)
(def-alias Plane Shape)
(def-alias Sphere Shape)

;;@ trivially true for any Shape
(def-pred is-shape :: Shape => Bool)

;;# DONT_EXPORT
(def-fun coordinate-of :: Point => Point)

;; coordinate-list-of(P) <-> the list of x- and y- (and z-) coordinates of P
(def-fun coordinate-list-of :: Point => (ListOf R))

;;@ equidistant(A,B,C) <-> the lengths AC and BC are equal
(def-pred equidistant :: Point -> Point -> Point => Bool)

;;@ equidistant(list, A) <-> all the distances between members of list and A are equal
(def-pred equidistant :: (ListOf Point) -> Point => Bool)

;;@------------------------------------------------------------------------------
;;@ Vectors & Matrices
;;@------------------------------------------------------------------------------
;;@ Matrices
(def-type Matrix) 

;;2013/12/10 suzuki
;(def-ctor matrix :: R -> R -> R -> R => Matrix)

;;@ trivially true for any vectors
(def-pred is-vector :: Vector => Bool)

;;@ zero vector
(def-fun zero-vector :: => Vector)

;;@ component-list-of(v) = the list of the x- and y- (and z-) components of v
(def-fun component-list-of :: Vector => (ListOf R))

;;@ vec(A,B) = the vector from A to B
;;use by translate point to vec
(def-fun vec :: Point -> Point => Vector)

;;@ vec->point(v) = the vector (x,y) is translated to the point (x,y)
(def-fun vec->point :: Vector => Point)

;;@ v+(u,v) = the sum of vectors u and v
(def-fun v+  :: Vector -> Vector => Vector)

;;@ vec-translate(p,v) = 
(def-fun vec-translate :: Point -> Vector => Point)

;;@ v-sum(list) = the sum of vectors in list
(def-fun v-sum :: (ListOf Vector) => Vector) 

;;@ v-(u,v) = the difference of vectors u and v
(def-fun v-  :: Vector -> Vector => Vector)

;;@ sv*(a,v) = the scalar product of a and vector v
(def-fun sv* :: R -> Vector => Vector)

;;@ inner-prod(u,v) = the inner product of u and v
(def-fun inner-prod :: Vector -> Vector => R)

;;@ angle-of-vectors(u,v) = the formed angle of u and v
(def-fun angle-of-vectors :: Vector -> Vector => Angle)

;;@ vec-perpendicular(u,v) <-> vectors u and v are perpendicular
(def-pred vec-perpendicular :: Vector -> Vector => Bool)

;;@ vec-parallel(u,v) <-> vectors u and v are parallel
(def-pred vec-parallel :: Vector -> Vector => Bool)

;;@ vec-same-direction(u,v) <-> vectors u and v have the same direction i.e. u and v are parallel and their inner product is positive
(def-pred vec-same-direction :: Vector -> Vector => Bool)

;;@ vec-opp-direction(u,v) <-> vectors u and v have the opposite direction i.e. u and v are parallel and their inner product is negative
(def-pred vec-opp-direction :: Vector -> Vector => Bool)

;;@ is-unit-vec(v) <-> the magnitude of v is 1
(def-pred is-unit-vec :: Vector => Bool)

;;@ normalize(v) <-> the vector of the magnitude 1 and of the same direction
(def-fun normalize :: Vector => Vector)

;;@ m+(u,v) = the sum of matrices u and v
(def-fun m+ :: Matrix -> Matrix => Matrix) 

;;@ m-sum(list) = the sum of matrices in list
(def-fun m-sum :: (ListOf Matrix) => Matrix) 

;;@ m-(A,B) = the difference of matrices A and B
(def-fun m-  :: Matrix -> Matrix => Matrix)   

;;@ m-(A) = the negation of matrix A
(def-fun m-  :: Matrix => Matrix)

;;@ sm*(a,A) = the scalar product of a and matrix A
(def-fun sm* :: R -> Matrix => Matrix)       

;;@ m*(A,B) = the product of a and matrices A and B
(def-fun m*  :: Matrix -> Matrix => Matrix)  

;;@ m-prod(list) = the product of matrices in list
(def-fun m-prod :: (ListOf Matrix) => Matrix) 

;;@ mv*(A,v) = the product of matrix A and vector v
(def-fun mv* :: Matrix -> Vector => Vector)     

;;@ m^(A,n) = the power of matrix A to n
(def-fun m^  :: Matrix -> Z => Matrix)     

;;@ identity-matrix() = the identity matrix
(def-fun identity-matrix :: => Matrix) 

;;@ zero-matrix() = the zero matrix
(def-fun zero-matrix :: => Matrix)     

;;@ det(A) = the determinant of matrix A
(def-fun det :: Matrix => R)

;;@ mat-shape*(A, shape) = the image of linear map A of shape
(def-fun mat-shape* :: Matrix -> Shape => Shape) 

;;@ is-non-singular(A) = A is a regular matrix
(def-pred is-non-singular :: Matrix => Bool)

;;@ inverse-of(A) = the inverse matrix of A
;;@ works correctly for only regular matrices
(def-fun inverse-of :: Matrix => Matrix) 

;;@ is-inverse-of(A,B) <-> B is the inverse matrix of A
(def-pred is-inverse-of :: Matrix -> Matrix => Bool) 

;;@ trivially true for any Matrix
(def-pred is-matrix :: Matrix => Bool) 

;;@ transposed-matrix(A) = the transposed matrix of A
(def-fun transposed-matrix :: Matrix => Matrix) 

;;@ is-orthogonal-matrix(A) <-> A is an orthogonal matrix
(def-pred is-orthogonal-matrix :: Matrix => Bool) 

;;@------------------------------------------------------------------------------
;;@ Angle
;;@------------------------------------------------------------------------------
;;@ angle constructor
(def-ctor angle :: Point -> Point -> Point => Angle)

;;@ cos-of-angle(a) = the cosine of the degree of a
(def-fun cos-of-angle :: Angle => R)

;;@ sin-of-angle(a) = the sine of the degree of a
(def-fun sin-of-angle :: Angle => R)

;;@ tan-of-angle(a) = the tangent of the degree of a
(def-fun tan-of-angle :: Angle => R)

;;@ rad-of-angle(a) = degree of a in radian
(def-fun rad-of-angle :: Angle => R)

;;@ formed-angle-of(shape1,shape2) = the formed angle of shape1 and shape2
(def-fun formed-angle-of :: Shape -> Shape => Angle)

;;@ same-angle(a,b) = the degrees of a and b are the same
;;@ remark: angle(a,b,c) = angle(A,B,C) <-> a=A, b=B, and c=C
(def-pred same-angle  :: Angle -> Angle => Bool)

;;@ is-right(a) = a is the right angle
(def-pred is-right :: Angle => Bool) 

;;@ is-acute(a) = a is an acute angle
(def-pred is-acute :: Angle => Bool) 

;;@ is-obtuse(a) = a is an obtuse angle
(def-pred is-obtuse :: Angle => Bool) 

;;@ trivially true for any Angle
(def-pred is-angle :: Angle => Bool)

;;@ is-interior-angle(a,shape) <-> a is an interior angle of shape
;;@ effective only if shape is a triangle or a square
(def-pred is-interior-angle :: Angle -> Shape => Bool)

;;@ is-angle-bisector(line, a) <-> line is the angle bisector of a
(def-pred is-angle-bisector :: Line -> Angle => Bool)

;; line
;;@ is-normal-vector-of(v,shape) <-> v is a normal vector of shape
;;@ effective only if shape is a line or a plane
(def-pred is-normal-vector-of :: Vector -> Shape => Bool) 

;;@ normal-vector-of(shape) = a normal vector of shape
;;@ effective only if shape is a plane
(def-fun normal-vector-of :: Shape => Vector)

;;@ normal-vector-to(shape, p) = the normal vector of shape from a point on shape to p
;;@ effective only if shape is a line or a plane
(def-fun normal-vector-to :: Shape -> Point => Vector)

;;@ lines-intersect-at(list, p) <-> p is on all lines in list
(def-pred lines-intersect-at :: (ListOf Line) -> Point => Bool)

;;@ lines-intersect-at-one(list) <-> there is a point on all lines in list
(def-pred lines-intersect-at-one :: (ListOf Line) => Bool)

;;@ is-diameter-of(seg,shape) <-> seg is a diameter of shape
;;@ effective only if shape is a circle, a disk, or a sphere
(def-pred is-diameter-of :: Seg -> Shape => Bool) 

;;@ direction-vec(line) = a direction vector of line
(def-fun  direction-vec :: Line => Vector)

;;@ is-perp-bisector(line,seg) <-> line is an perpendicular bisector of seg
(def-pred is-perp-bisector :: Line -> Seg => Bool)

;;@ divided-region-including(shape, p) = the region divided by shape including p
;;@ effective only if shape is a line or a plane
(def-fun divided-region-including :: Shape -> Point => Shape) 

;;@ exterior-angle-of(angle(A,B,C)) = an exterior angle of angle ABC
(def-fun exterior-angle-of :: Angle => Angle)

;;@ is-vertex-of(p, shape) <-> p is a vertex of shape
(def-pred is-vertex-of :: Point -> Shape => Bool)

;;@ are-vertices-of(list,shape) <-> list enumerates all vertices of shape
(def-pred are-vertices-of :: (ListOf Point) -> Shape => Bool)

;;@ triangle-opposite(T,p,s) <-> vertex p is opposite from side s in triangle T
(def-pred triangle-opposite :: Triangle -> Point -> Seg => Bool)

;;@ triangle-opposite-angle(T,a,s) <-> angle a is opposite from side s in triangle T
(def-pred triangle-opposite-angle :: Triangle -> Angle -> Seg => Bool)

;;@ is-incenter-of(p,T) <-> p is the incenter of triangle T
(def-pred is-incenter-of     :: Point -> Triangle => Bool) 

;;@ is-circumcenter-of(p,T) <-> p is the circumcenter of triangle T
(def-pred is-circumcenter-of :: Point -> Triangle => Bool) 

;;@ is-orthocenter-of(p,T) <-> p is the orthocenter of triangle T
(def-pred is-orthocenter-of  :: Point -> Triangle => Bool) 

;;@ is-center-of-gravity-of(p,T) <-> p is the center of gravity of triangle T
(def-pred is-center-of-gravity-of :: Point -> Shape => Bool)

;;@ is-diagonal-of(seg,S) <-> seg is a diagonal of square S
(def-pred is-diagonal-of :: Seg -> Square => Bool)

;;@ square-opposite-side(S,s1,s2) <-> side s1 is opposite from side s2 in square S
(def-pred square-opposite-side :: Square -> Seg -> Seg => Bool)

;;@ square-opposite-angle(S,a1,a2) <-> angle a1 is opposite from angle a2 in square S
(def-pred square-opposite-angle :: Square -> Angle -> Angle => Bool)



;;@ arc(c,p,q) = the arc of which center is c, and initial point p, and end point q
;;@ effective only if the lengths cp and cq are equal
;;@ arc(c,p,q) represents the minor arc pq by default
(def-fun arc :: Point -> Point -> Point => Shape)

;;@ major-arc(arc(c,p,q)) = the major arc of which center is c, and initial point p, and end point q
;;@ effective only if the lengths cp and cq are equal
(def-fun major-arc :: Shape => Shape)

;;@ minor-arc(arc(c,p,q)) = the minor arc of which center is c, and initial point p, and end point q
;;@ effective only if the lengths cp and cq are equal
(def-fun minor-arc :: Shape => Shape)

;;@ arc-ini-point(arc) = the initial point of arc
(def-fun arc-ini-point :: Arc => Point)

;;@ arc-end-point(arc) = the end point of arc
(def-fun arc-end-point :: Arc => Point)

;;@ is-arc-node(p,arc) <-> p is either the initial point or the end point of arc
(def-pred is-arc-node :: Point -> Arc => Bool)

;;@ chord-of-arc(arc) = the chord of arc
(def-fun chord-of-arc :: Arc => Seg)

;;@ arc-central-angle(arc) = the central angle of arc
(def-fun arc-central-angle :: Arc => R)

;;@ arc-inscribed-angle(arc) = the inscribed angle of arc
(def-fun arc-inscribed-angle :: Arc => R)

;;@ circular-sector-ini-point(sector) = the initial point of sector
(def-fun circular-sector-ini-point :: Shape => Point)

;;@ circular-sector-end-point(sector) = the end point of sector
(def-fun circular-sector-end-point :: Shape => Point)

;;@ is-circular-sector-node(sector) = p is either the initial point or the end point of sector
(def-pred is-circular-sector-node :: Point -> Shape => Bool)

;;@ chord-of-circular-sector(sector) = the chord of sector
(def-fun chord-of-circular-sector :: Shape => Seg)

;;@ circular-sector-central-angle(sector) = the central angle of sector
(def-fun circular-sector-central-angle :: Shape => R)

;;@ circular-sector-inscribed-angle(sector) = the inscribed angle of arc
(def-fun circular-sector-inscribed-angle :: Shape => R)

;;@ arc-of(s) = the arc of circular sector s
(def-fun arc-of :: Shape => Shape)

;; geometric objects
;;@ line(p,q) = the line passing through p and q
(def-fun line :: Point -> Point => Shape)

;;@ seg(p,q) = the segment from p to q
(def-fun seg  :: Point -> Point => Shape)

;;@ half-line(p,q) = the half line from p passing through q
(def-fun half-line :: Point -> Point => Shape) 

;;@ triangle(a,b,c) = triangle abc
(def-fun triangle :: Point -> Point -> Point => Shape)

;;@ square(a,b,c,d) = square abcd
(def-fun square   :: Point -> Point -> Point -> Point => Shape) 

;;@ polygon(list) = the polygon of which vertices are the members of list
(def-fun polygon :: (ListOf Point) => Shape)

;; quantities/attributes
;;@ distance(p,q) = the distance between p and q
(def-fun distance    :: Point -> Point => R) ; |vec1 - vec2|

;;@ distance^2(p,q) = the square of the distance between p and q
(def-fun distance^2  :: Point -> Point => R) ; |vec1 - vec2|^2

;;@ point-shape-distance(p,shape) = the distance between p and shape
(def-fun point-shape-distance :: Point -> Shape => R)

;;@ point-shape-distance^2(p,shape) = the square of the distance between p and shape
(def-fun point-shape-distance^2 :: Point -> Shape => R)

;;@ line-line-distance(l1,l2) = the distance between line l1 and line l2
(def-fun line-line-distance :: Line -> Line => R)

;;@ line-line-distance^2(l1,l2) = the square of the distance between line l1 and line l2
(def-fun line-line-distance^2 :: Line -> Line => R)

;;@ shape-shape-distance(shape1,shape2) = the distance between shape1 and shape2
;;@ effective only if shape1 and shape2 are both either a line or a plane
(def-fun shape-shape-distance :: Shape -> Shape => R)

;;@ shape-shape-distance^2(shape1,shape2) = the square of the distance between shape1 and shape2
;;@ effective only if shape1 and shape2 are both either a line or a plane
(def-fun shape-shape-distance^2 :: Shape -> Shape => R)

;;@ area-of(shape) = the area of shape
(def-fun area-of     :: Shape => R)

;;@ centroid-of(T) = the center of gravity of triangle T
(def-fun centroid-of :: Triangle => Point)

;;@ radius(v) = the magnitude of v
;(def-fun radius      :: Point => R) ; |v| notation
(def-fun radius      :: Vector => R) 

;;@ radius^2(v) = the square of the magnitude of v
;(def-fun radius^2    :: Point => R)
(def-fun radius^2    :: Vector => R)

;;@ length-of(shape) = the length of shape
;;@ effective only if shape is a circle, an arc, a segment, a triangle, a square, or a polygon
(def-fun length-of   :: Shape => R)

;;@ midpoint-of(p,q) = the midpoint of p and q
(def-fun midpoint-of :: Point -> Point => Point)

;;@ internally-dividing-point(p,q,r) = the point that divides segment pq internally in the ratio of r:1-r
(def-fun internally-dividing-point :: Point -> Point -> R => Point)

;;@ center-of(shape) = the center of shape
;;@ effective only if shape is a circle, a disk, an arc, a circular sector, a semicircle, or a sphere
(def-fun center-of   :: Shape => Point)

;;@ radius-of(shape) = the radius of shape
;;@ effective only if shape is a circle, a disk, an arc, a circular sector, a semicircle, or a sphere
(def-fun radius-of   :: Shape => R)

;(def-fun seg-ini :: Shape => Point)
;(def-fun seg-end :: Shape => Point)

;;@ seg-midpoint-of(seg) = the midpoint of segment seg
(def-fun seg-midpoint-of :: Seg => Point)

;;@ seg-extension-of(seg) = the line including seg
(def-fun seg-extention-of :: Seg => Line)

;;@ half-line-extension-of(h) = the line including half line h
(def-fun half-line-extension-of :: Shape => Shape)

(def-fun end-points-of :: Shape => (ListOf Point))
;(def-fun medians-of :: Triangle => (ListOf Seg))

;;@ is-end-point-of(p,s) <-> p is an end point of s
;;@ effective only if s is a segment or a half line
(def-fun is-end-point-of :: Point -> Seg => Bool)

;;@ vertices-of(shape) = the list of vertices of shape
(def-fun vertices-of :: Shape => (ListOf Point))

;;@ opposite-vertice-of(s,S) = a vetex of S that is not a vertex of side/face s
;;@ effective only if used as follows:
;;@ opposite-vertice-of(side, polygon), where member(side (sides-of polygon)) holds, or
;;@ opposite-vertice-of(face, polyhedron), where member(face (faces-of polyhedron)) holds
(def-fun opposite-vertice-of :: Shape -> Shape => Point) 

;;@ extend-to-plane(shape) = the plane that contains shape
(def-fun extend-to-plane :: Shape => Plane) 

;;@ local-system-of(arc, [v1,v2(,v3)]) = the orthogonal coordinate system [v1,v2(,v3)] of which v1 is a unit vector parallel to the vector from the center of arc and the initial point of arc
(def-fun local-system-of :: Shape => (ListOf Vector)) 

;;@ two-sides-of-rectangle(PQRS) = the pair of the sides PQ and QR of square PQRS
(def-fun two-sides-of-rectangle :: Shape => (Pair Shape Shape))

;;@ shape-inside-of(shape) = the shape of the inner part of shape
(def-fun shape-inside-of :: Shape => Shape)

;;@ shape-inside-of(shape) = the shape of the outer part of shape
(def-fun shape-outside-of :: Shape => Shape)

;;@ inner-part-of(shape) = the shape of the inner part of shape
(def-fun inner-part-of :: Shape => Shape)

;;@ with-boundary(shape) = the shape of the inner part and the boundary of shape
(def-fun with-boundary :: Shape => Shape)

;;@ boundary-of(shape) = the shape of the boundary of shape
(def-fun boundary-of :: Shape => Shape)

;;@ foot-of-perpendicular-line-from-to(p,shape) = the foot of the perpendicular line from p to shape
;;@ effective only if shape is a line or a plane
(def-fun foot-of-perpendicular-line-from-to :: Point -> Shape => Point)

;; constant
;;@ origin() = the origin
(def-fun origin :: => Point)

;;@ x-axis() = the x-axis
(def-fun x-axis :: => Line)

;;@ y-axis() = the y-axis
(def-fun y-axis :: => Line)

;; xy-plane() = the xy-plane
(def-fun xy-plane :: => Plane)

;; predicates
;;@ is-empty(shape) <-> shape is empty
(def-pred is-empty :: Shape => Bool)

;;@ on(p,shape) <-> p is on shape
(def-pred on :: Point -> Shape => Bool)

;;@ perpendicular(s1,s2) <-> s1 and s2 are perpendicular
(def-pred perpendicular :: Shape -> Shape => Bool)

;;@ parallel(s1,s2) <-> s1 and s2 are parallel
(def-pred parallel :: Shape -> Shape => Bool)

;;@ colinear(p,q,r) <-> three points p, q, r are on the line
(def-pred colinear      :: Point -> Point -> Point => Bool)

;;@ points-colinear(list) <-> all points in list are on the line
(def-pred points-colinear :: (ListOf Point) => Bool)

;;@ coplanar(p,q,r,s) <-> four points p, q, r, s are on the plane
(def-pred coplanar      :: Point -> Point -> Point -> Point => Bool)

;;@ points-coplanar(list) <-> all points in list are on the same plane
(def-pred points-coplanar :: (ListOf Point) => Bool)

;;@ points-with-equal-interval([p1,...,pn]) = the distances p1p2, ..., pnp1 are equal
(def-pred points-with-equal-interval :: (ListOf Point) => Bool)

;;@ points-bending-by-equal-angle([p1,...,pn]) = the angles pnp1p2, ..., pn-1pnp1 are equal
(def-pred points-bending-by-equal-angle :: (ListOf Point) => Bool)

;;@ points-bending-to-same-side([p1,...,pn]) = the outer products of vectors (pipi+1 x pi+1pi+2) are of the same direction for all 1<=i<=n ,where pn+i=pi
(def-pred points-bending-to-same-side :: (ListOf Point) => Bool)

;;@ point-inside-of(p,shape) <-> p is a point inside of shape
(def-pred point-inside-of :: Point -> Shape => Bool)

;;@ inside-of(shape1,shape2) <-> shape1 is contained by the inside of shape2
(def-pred inside-of     :: Shape -> Shape => Bool)

;;@ point-outside-of(p,shape) <-> p is a point outside of shape
(def-pred point-outside-of :: Point -> Shape => Bool)

;;@ outside-of(shape1,shape2) <-> shape1 is contained by the outside of shape2
(def-pred outside-of    :: Shape -> Shape => Bool)

;;@ is-triangle(p,q,r) <-> three points p, q, r form a triangle
(def-pred is-triangle   :: Point -> Point -> Point => Bool)

;;@ is-right-triangle(p,q,r) <-> three points p, q, r form a right triangle
(def-pred is-right-triangle :: Point -> Point -> Point => Bool) 

;;@ is-right-triangle(T) <-> T is a right triangle
(def-pred is-right-triangle :: Shape => Bool) 

;;@ is-isosceles-triangle(p,q,r) <-> three points p, q, r form an isosceles triangle
(def-pred is-isosceles-triangle :: Point -> Point -> Point => Bool) 

;;@ is-isosceles-triangle(T) <-> T is an isosceles triangle
(def-pred is-isosceles-triangle :: Shape => Bool) 

;;@ is-acute-triangle(p,q,r) <-> three points p, q, r form an acute triangle
(def-pred is-acute-triangle :: Point -> Point -> Point => Bool) 

;;@ is-acute-triangle(T) <-> T is an acute triangle
(def-pred is-acute-triangle :: Shape => Bool) 

;;@ is-obtuse-triangle(p,q,r) <-> three points p, q, r form an obtuse triangle
(def-pred is-obtuse-triangle :: Point -> Point -> Point => Bool) 

;;@ is-obtuse-triangle(T) <-> T is an obtuse triangle
(def-pred is-obtuse-triangle :: Shape => Bool) 

;;@ is-equilateral-triangle(p,q,r) <-> three points p, q, r form an equilateral triangle
(def-pred is-equilateral-triangle :: Point -> Point -> Point => Bool) 

;;@ is-equilateral-triangle(T) <-> T is an equilateral triangle
(def-pred is-equilateral-triangle :: Shape => Bool) 

;;@ is-square(p,q,r,s) <-> four points p, q, r, s form a convex square
(def-pred is-square    :: Point -> Point -> Point -> Point => Bool) 

;;@ is-regular-square(p,q,r,s) <-> four points p, q, r, s form a regular square
(def-pred is-regular-square :: Point -> Point -> Point -> Point => Bool)  

;;@ is-rectangle(S) <-> S is a regular square
(def-pred is-regular-square :: Shape => Bool) 

;;@ is-rectangle(p,q,r,s) <-> four points p, q, r, s form a rectangle
(def-pred is-rectangle :: Point -> Point -> Point -> Point => Bool) 

;;@ is-rectangle(S) <-> S is a rectangle
(def-pred is-rectangle :: Shape => Bool) 

;;@ is-rhombus(p,q,r,s) <-> four points p, q, r, s form a rhombus
(def-pred is-rhombus   :: Point -> Point -> Point -> Point => Bool) 

;;@ is-rhombus(S) <-> S is a rhombus
(def-pred is-rhombus   :: Shape => Bool) 

;;@ is-trapezoid(p,q,r,s) <-> four points p, q, r, s form a trapezoid
(def-pred is-trapezoid :: Point -> Point -> Point -> Point => Bool) 

;;@ is-trapezoid(S) <-> S is a trapezoid
(def-pred is-trapezoid :: Shape => Bool) 

;;@ is-parallelogram(p,q,r,s) <-> four points p, q, r, s form a parallelogram
(def-pred is-parallelogram :: Point -> Point -> Point -> Point => Bool)

;;@ is-parallelogram(S) <-> S is a parallelogram
(def-pred is-parallelogram :: Shape => Bool)

;;@ is-polygon(list) <-> the points in list form a polygon
(def-pred is-polygon :: (ListOf Point) => Bool)

;;@ is-regular-polygon(S) <-> S is a regular polygon
(def-pred is-regular-polygon :: Shape => Bool)

;;@ is-convex-shape(S) <-> S is a convex shape
;;@ effective only if S is a polygon
(def-pred is-convex-shape :: Shape => Bool)

;;@ tangent(shape1,shape2,p) <-> shape1 is tangent to shape2 at p
(def-pred tangent   :: Shape -> Shape -> Point => Bool)

;;@ tangent(shape1,shape2,p) <-> shape1 is tangent to shape2 at some point
(def-pred tangent   :: Shape -> Shape => Bool)

;;@ tangent-to-all(shape, list) <-> shape is tangent to all shapes in list
(def-pred tangent-to-all :: Shape -> (ListOf Shape) => Bool)

;;@ normal-line(line, curve, p) <-> line is the normal line of curve at p
(def-pred normal-line :: Shape -> Shape -> Point => Bool)

;;@ translate(shape1,v,a,shape2) <-> shape1 coincides shape2 by parallel shift by av
;(def-pred translate :: Shape -> Point -> R -> Shape => Bool)
(def-pred translate :: Shape -> Vector -> R -> Shape => Bool)

;;@ translate(shape,v) <-> the shape which is shape shifted by v
(def-fun translate :: Shape -> Vector => Shape) 

;;@ intersect(shape1, shape2, p) <-> shape1 intersects shape2 at p
(def-pred intersect :: Shape -> Shape -> Point => Bool)

;;@ intersect(shape1, shape2) <-> shape1 intersects shape2 at some point
(def-pred intersect :: Shape -> Shape => Bool)

;;@ are-intersection-points-of([a1,...,am], [s1,...,sn]) <-> list of points [a1,...,am] enumarates all the points of the intersection of si's
(def-pred are-intersection-points-of :: (ListOf Point) -> (ListOf Shape) => Bool)

;;@ is-inscribed-in(shape1,shape2) <-> shape1 is inscribed in shape2
(def-pred is-inscribed-in     :: Shape -> Shape => Bool)

;;@ is-circumscribed-about(shape1,shape2) <-> shape1 is circumscribed about shape2
;;@ effective only if shape1 and shape2 are circles
(def-pred is-circumscribed-about :: Shape -> Shape => Bool)

;;@ similar(shape1,shape2) <-> shape1 and shape2 are similar
(def-pred similar :: Shape -> Shape => Bool)

;;@ ordered-similar(shape1,shape2) <-> shape1 and shape2 are similar in the given order of vertices
;;@ effective only if shape1 and shape2 are both triangles or squares
(def-pred ordered-similar :: Shape -> Shape => Bool)

;;@ congruent(shape1,shape2) <-> shape1 and shape2 are congruent
(def-pred congruent :: Shape -> Shape => Bool)

;;@ ordered-congruent(shape1,shape2) <-> shape1 and shape2 are congruent in the given order of vertices
;;@ effective only if shape1 and shape2 are both triangles or squares
(def-pred ordered-congruent :: Shape -> Shape => Bool)

;;@ divide-internally(p,seg,r1,r2) <-> p divides seg internally in the ratio r1:r2
(def-pred divide-internally :: Point -> Seg -> R -> R => Bool)

;;@ divide-externally(p,seg,r1,r2) <-> p divides seg externally in the ratio r1:r2
(def-pred divide-externally :: Point -> Seg -> R -> R => Bool)

;;@ determine(list, shape) <-> shape is determined by list
;;@ effective only if list consists of three points and shape is a plane
(def-pred determine :: (ListOf Point) -> Shape => Bool)

;;@ form(list,shape) <-> the points in list form shape
;;@ effective only if list consists of three points and shape is a triangle
(def-pred form      :: (ListOf Point) -> Shape => Bool)

;;@ form-by-shapes(list,shape) <-> the shapes in list form shape
;;@ effective only if list consists of three lines and shape is a triangle
(def-pred form-by-shapes :: (ListOf Shape) -> Shape => Bool)

;;@ point-symmetry(p1,p2,q) <-> p1 and p2 are symmetric with respect to point q
(def-pred point-symmetry :: Point -> Point -> Point => Bool)

;;@ point-symmetry-shape(shape,p) <-> shape is symmetric with respect to point p
(def-pred point-symmetry-shape :: Shape -> Point => Bool)

;;@ point-symmetry-shapes(shape1,shape2,p) <-> shape1 and shape2 are symmetric with respect to point q
(def-pred point-symmetry-shapes :: Shape -> Shape -> Point => Bool)

;;@ line-symmetry(p1,p2,l) <-> p1 and p2 are symmetric with respect to line l
(def-pred line-symmetry :: Point -> Point -> Line => Bool)

;;@ line-symmetry-shape(shape,l) <-> shape is symmetric with respect to line l
(def-pred line-symmetry-shape :: Shape -> Line => Bool)

;;@line-symmetry-shapes(shape1,shape2,l) <-> shape1 and shape2 are symmetric with respect to line l
(def-pred line-symmetry-shapes :: Shape -> Shape -> Line => Bool)

;;@ connect(shape,list) <-> shape connects the points in list
;;@ effective only if shape is a segment and list consists of two points
(def-pred connect :: Shape -> (ListOf Point) => Bool)

;;@ is-a-side-of(shape1,shape2) <-> shape1 is a side of shape2
(def-pred is-a-side-of :: Shape -> Shape => Bool) 

;;@ are-the-sides-of(list,shape) <-> list enumerates all sides of shape
(def-pred are-the-sides-of :: (ListOf Shape) -> Shape => Bool) 

;;@ is-base-of(shape1,shape2) <-> shape1 is the base of shape2
;;@ effective only if shape1 is a segment and shape2 is an isosceles triangle
(def-pred is-base-of :: Shape -> Shape => Bool) 

;;@ sides-of(shape) = the list of the sides of shape
(def-fun sides-of :: Shape => (ListOf Shape)) 

;;@ converge-point([an], p) <-> the sequence of points [an] converges to p
(def-pred converge-point :: (Z -> Point) -> Point => Bool)

;;@ is-interior-angle-of(a,shape) <-> a is the degree in radian of an interior angle of shape
;;@ effective only if shape is a triangle
(def-pred is-interior-angle-of :: R -> Shape => Bool)

;;@ are-interior-angles-of(list) <-> list enumerates all the degrees in radian of interior angles of shape
;;@ effective only if shape is a triangle
(def-pred are-interior-angles-of :: (ListOf R) -> Shape => Bool)

;;@ lines-intersect-angle(l1,l2,a) <-> l1 and l2 intersect at degree a
(def-pred lines-intersect-angle :: Shape -> Shape -> R => Bool)

;;@ convex-upward(shape) <-> shape is upward convex
(def-pred convex-upward :: Shape => Bool)

;;@ convex-downward(shape) <-> shape is downward convex
(def-pred convex-downward :: Shape => Bool)

;; Shape definition by a characteristic function on Point
;;@ shape-of-cpfun(phi) = the shape of which characteristic function is phi
(def-fun shape-of-cpfun :: (Point -> Bool) => Shape)

;;@ char-fun-of(shape) = the characteristic function of shape
(def-fun char-fun-of :: Shape => Point -> Bool)

;; convert a set of points to shape
;;@ set-as-shape(set) = the shape of which underlying set is set
(def-fun set-as-shape :: (SetOf Point) => Shape)

;;@ shape-as-set(shape) = the set of points on shape
(def-fun shape-as-set :: Shape => (SetOf Point))

;;@ is-opposite-of-wrt(p,q,shape) <-> p and q are on opposite sides with respect to shape
;;@ effective only if shape is a segment or a line
(def-pred is-opposite-of-wrt :: Point -> Point -> Shape => Bool)

;; maybe useless
;;@ trivially true for any Point
(def-pred is-point :: Point => Bool)

;; set operations on the Shapes
;;@ intersection(shape1,shape2) = the intersection of shape1 and shape2
(def-fun intersection :: Shape -> Shape => Shape)

;;@ intersection(list) = the intersection of all shapes in list
(def-fun intersection :: (ListOf Shape) => Shape)

;;@ union(shape1,shape2) = the union of shape1 and shape2
(def-fun union :: Shape -> Shape => Shape)

;;@ union(list) = the union of all shapes in list
(def-fun union :: (ListOf Shape) => Shape)

;;@ complement(shape) = the complement of shape in R^2 or R^3
(def-fun complement :: Shape => Shape)

;;@ shape-(shape1,shape2) = the defference of shape1 and shape2
(def-fun shape- :: Shape -> Shape => Shape)


;; a shape enclosed by a set of curves or surfaces
;;@ shape-enclosed-by(list) = the shape enclosed by the shapes in list
(def-fun shape-enclosed-by :: (ListOf Shape) => Shape)

;; typing triggers
;;@ line-type(shape) <-> shape is a line
(def-pred line-type :: Shape => Bool)

;;@ half-line-type(shape) <-> shape is a half line
(def-pred half-line-type :: Shape => Bool)

;;@ segment-type(shape) <-> shape is a segment
(def-pred segment-type :: Shape => Bool)

;;@ triangle-type(shape) <-> shape is a triangle
(def-pred triangle-type :: Shape => Bool)

;;@ equilateral-triangle-type(shape) <-> shape is an equilateral triangle
(def-pred equilateral-triangle-type :: Shape => Bool)

;;@ acute-triangle-type(shape) <-> shape is an acute triangle
(def-pred acute-triangle-type :: Shape => Bool)

;;@ right-triangle-type(shape) <-> shape is a right triangle
(def-pred right-triangle-type :: Shape => Bool)

;;@ obtuse-triangle-type(shape) <-> shape is a obtuse triangle
(def-pred obtuse-triangle-type :: Shape => Bool)

;;@ isosceles-triangle-type(shape) <-> shape is an isosceles triangle
(def-pred isosceles-triangle-type :: Shape => Bool)

;;@ square-type(shape) <-> shape is a square
(def-pred square-type :: Shape => Bool)

;;@ rectangle-type(shape) <-> shape is a rectangle
(def-pred rectangle-type :: Shape => Bool)

;;@ regular-square-type(shape) <-> shape is a regular square
(def-pred regular-square-type :: Shape => Bool)

;;@ regular-pentagon-type(shape) <-> shape is a regular pentagon
(def-pred regular-pentagon-type :: Shape => Bool)

;;@ regular-hexagon-type(shape) <-> shape is a regular hexagon
(def-pred regular-hexagon-type :: Shape => Bool)

;;@ rhombus-type(shape) <-> shape is a rhombus
(def-pred rhombus-type :: Shape => Bool)

;;@ trapezoid-type(shape) <-> shape is a trapezoid
(def-pred trapezoid-type :: Shape => Bool)

;;@ parallelogram-type(shape) <-> shape is a parallelogram
(def-pred parallelogram-type :: Shape => Bool)

;;@ polygon-type(shape) <-> shape is a polygon
(def-pred polygon-type :: Shape => Bool)

;;@-------------------------------------------
;;@ Axis of coordinates (as a special object)
;;@-------------------------------------------
(def-type Axis)
(def-fun axis-along :: Vector => Axis)
(def-fun direction-of :: Axis => Vector)

