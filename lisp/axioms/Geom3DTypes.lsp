(import "axioms/DefaultTypes.lsp")
(import "axioms/Geom2DTypes.lsp")

;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;@ 3D Geometry
;;@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(namespace 3d)

;; overloaded symbols in 2D/3D geometry
(include "axioms/geom-common-head.lsp")

;;@ point constructor
(def-ctor point :: R -> R -> R => Point)

;;@ vec3d(a,b,c) = the vector of components a, b, and c
(def-ctor vec3d :: R -> R -> R => Vector)

;;@ outer-prod(u,v) = the outer product of u and v
(def-fun outer-prod :: Vector -> Vector => Vector)

;;@ x-coord(p) = the x-coordinate of p
(def-fun x-coord :: Point => R)

;;@ u-coord(p) = the y-coordinate of p
(def-fun y-coord :: Point => R)

;;@ z-coord(p) = the z-coordinate of p
(def-fun z-coord :: Point => R)

;;@ x-coord(v) = the x-coordinate of v
(def-fun vec-x-coord :: Vector => R)

;;@ y-coord(v) = the y-coordinate of v
(def-fun vec-y-coord :: Vector => R)

;;@ z-coord(v) = the z-coordinate of v
(def-fun vec-z-coord :: Vector => R)

;; (matrix a11 a12 a13
;;         a21 a22 a23
;;@ matrix(a11,a12,a13,a21,a22,a23,a31,a32,a33) = the matrix (aij)
(def-ctor matrix :: R -> R -> R -> R -> R -> R -> R -> R -> R => Matrix)

;;@ matrix-by-columns(u,v,w) = the matrix (u v w)
(def-fun matrix-by-columns :: Vector -> Vector -> Vector => Matrix)

;;@ set-of-cfun(phi(*,*,*)) = the shape of which characteristic function is phi
(def-fun set-of-cfun :: (R -> R -> R -> Bool) => Shape)

;;@ cpfun-to-cfun(phi(*)) = the formula psi of the form phi(point(x,y,z)) with variables x ,y ,and z
(def-fun cpfun-to-cfun :: (Point -> Bool) => R -> R -> R -> Bool)

;;@ cfun-to-cpfun(phi(*,*,*)) = the formula psi of the form phi(x-coord(p), y-coord(p), z-coord(p)) with variable p
(def-fun cfun-to-cpfun :: (R -> R -> R -> Bool) => Point -> Bool)

;;@ are-skew-lines(l1,l2) <-> l1 and l2 are skew lines
(def-pred are-skew-lines :: Line -> Line => Bool)

;;@ plane(a,b,c,d) = the plane ax + by + cz = d
(def-fun plane :: R -> R -> R -> R => Plane) ;;ax + by + cz = d

;;@ plane1(p,q,r) = the plane passing through three points p, q, r
(def-fun plane1 :: Point -> Point -> Point => Plane) 

;;@ plane2(p,v) = the plane passing through point p and perpendicular to v
(def-fun plane2 :: Point -> Vector => Plane) 

;;@ plane2(plane) = plane in the expression of a point and a normal vector
;;@ effective only if plane is expressed by three points
(def-fun plane2 :: Plane => Plane) ;plane1 => plane2

;;@ plane(plane) = plane in the expression of equation
;;@ effective only if plane is expressed by three points or by a point and a normal vector
(def-fun plane :: Plane => Plane) ;plane1, plane2 => plane

;;@ is-plane(p,q,r) <-> three points p, q, r determine a plane
(def-pred is-plane :: Point -> Point -> Point => Bool)

;;@ is-plane(p,v) <-> point p and vector v determine a plane
(def-pred is-plane :: Point -> Vector => Bool)

;;@ a-point-on(plane) = a point on plane
(def-fun a-point-on :: Plane => Point) 

;;@ orthographic-projection(shape, plane) = the shape of the orthogonal projection of shape to plane
(def-fun orthographic-projection :: Shape -> Plane => Shape) 

;;@ perpendicular-plane-including(p,shape) = the plane passing through p and perpendicular to shape
;;@ effective only if shape is a line
(def-fun perpendicular-plane-including :: Point -> Shape => Plane) 

;;@ distance-between-parallel-planes(plane1, plane 2) = the distance of plane1 and plane 2
;;@ effective only if plane1 and plane2 are parallel
(def-fun distance-between-parallel-planes :: Plane -> Plane => R)

;;@ distance^2-between-parallel-planes(plane1, plane 2) = the square of the distance of plane1 and plane 2
;;@ effective only if plane1 and plane2 are parallel
(def-fun distance^2-between-parallel-planes :: Plane -> Plane => R)

;;@ z-axis() = the z-axis
(def-fun z-axis :: => Line)


;;@ yz-plane() = the yz-plane
(def-fun yz-plane :: => Plane)

;;@ zx-plane() = the zx-plane
(def-fun zx-plane :: => Plane)

;;@ unit-sphere() = the sphere of which center is the origin and radius 1
(def-fun unit-sphere :: => Sphere)

;(def-pred plane-parallel :: Shape -> Shape => Bool)

;;@ is-square-pyramid(p,a,b,c,d) <-> five points p, a, b, c, d form a square pyramid p-abcd
(def-pred is-square-pyramid :: Point -> Point -> Point -> Point -> Point => Bool)

;;@ is-sphere(shape) <-> shape is a sphere
(def-pred is-sphere :: Shape => Bool)

;; 2013-02-28 suzuki
;;(def-fun rotation-around :: Shape => Shape)

;;@ not implemented
;;@ rotation-around(S, L) = the shape obtained by rotating S around line L
(def-fun rotation-around :: Shape -> Shape => Shape)

;;@ sphere(p,a) = the sphere of which center is p and radius a
(def-fun sphere :: Point -> R => Shape)

;;@ tetrahedron(a,b,c,d) = the tetrahedron abcd
(def-fun tetrahedron :: Point -> Point -> Point -> Point => Shape)

;;@ cuboid(a,b,c,d,e,f,g,h) = the cuboid abcd-efgh
(def-fun cuboid :: Point -> Point -> Point -> Point -> Point -> Point -> Point -> Point => Shape)

;;@ cube(a,b,c,d,e,f,g,h) = the cube abcd-efgh
(def-fun cube :: Point -> Point -> Point -> Point -> Point -> Point -> Point -> Point => Shape)

;;@ square-pyramid(p,a,b,c,d) = the square pyramid p-abcd
(def-fun square-pyramid :: Point -> Point -> Point -> Point -> Point => Shape)

;;@ is-tetrahedron(a,b,c,d) <-> four points a, b, c, d form a tetrahedron
(def-pred is-tetrahedron :: Point -> Point -> Point -> Point => Bool)

;;@ is-regular-tetrahedron(a,b,c,d) <-> four points a, b, c, d form a regular tetrahedron
(def-pred is-regular-tetrahedron :: Point -> Point -> Point -> Point => Bool)

;;@ octahedron(p,a,b,c,d,q) = the octahedron p-abcd-q
(def-fun octahedron :: Point -> Point -> Point -> Point -> Point -> Point => Shape)

;;@ is-octahedron(p,a,b,c,d,q) <-> six points p, a, b, c, d, q form an octahedron p-abcd-q
(def-pred is-octahedron :: Point -> Point -> Point -> Point -> Point -> Point => Bool)

;;@ is-regular-octahedron(p,a,b,c,d,q) <-> six points p, a, b, c, d, q form a regular octahedron p-abcd-q
(def-pred is-regular-octahedron :: Point -> Point -> Point -> Point -> Point -> Point => Bool)

;;@ is-parallelopiped(a,b,c,d,e,f,g,h) <-> eight points a, b, c, d, e, f, g, h form a parallelopiped abcd-efgh
(def-pred is-parallelopiped ::
	Point -> Point -> Point -> Point -> 
	Point -> Point -> Point -> Point => Bool)

;;@ is-parallelopiped(a,b,c,d,e,f,g,h) <-> eight points a, b, c, d, e, f, g, h form a cuboid
;;@ same as is-cuboid
(def-pred is-rectangular-parallelopiped ::
	Point -> Point -> Point -> Point -> 
	Point -> Point -> Point -> Point => Bool)

;;@ is-cuboid(a,b,c,d,e,f,g,h) <-> eight points a, b, c, d, e, f, g, h form a cuboid
;;@ same as is-rectangular-parallelopiped
(def-pred is-cuboid ::
	Point -> Point -> Point -> Point -> 
	Point -> Point -> Point -> Point => Bool)

;;@ is-cube(a,b,c,d,e,f,g,h) <-> eight points a, b, c, d, e, f, g, h form a cube
(def-pred is-cube ::
	Point -> Point -> Point -> Point -> 
	Point -> Point -> Point -> Point => Bool)

;;@ faces-of(shape) = the list of faces of shape
(def-fun faces-of :: Shape => (ListOf Shape))

;;@ is-face-of(shape1, shape2) <-> shape1 is a face of shape2
(def-pred is-face-of :: Shape -> Shape => Bool)

;;@ is-pyramid(shape) <-> shape is a pyramid
(def-pred is-pyramid :: Shape -> Point => Bool)

;;@ circle(p,a,v) = the circle perpendicular to v of which center is p and radius a
(def-fun circle :: Point -> R -> Vector => Shape)

;;@ disk(p,a,v) = the disk perpendicular to v of which center is p and radius a
(def-fun disk :: Point -> R -> Vector => Shape)

;;@ arc(p,q,a,v) = the arc perpendicular to v of which center is p, initial point q, and central angle a
(def-fun arc :: Point -> Point -> R -> Vector  => Shape) 

;;@ circular-sector(p,q,a,v) = the circular sector perpendicular to v of which center is p, initial point q, and central angle a
(def-fun circular-sector :: Point -> Point -> R -> Vector => Shape) 

;;@ cone(shape,p) = the cone of which base is shape and vertex p
;;@ effective only if shape is a disk
(def-fun cone :: Shape -> Point => Shape) 

;;@ conical-surface(shape,p) = the conical surface of which base is shape and vertex p
;;@ effective only if shape is a circle
(def-fun conical-surface :: Shape -> Point => Shape) 

;;@ right-cone(shape,p) = the right cone of which base is shape and vertex p
(def-fun right-cone :: Shape -> Point => Shape) 

;;@ right-conical-surface(shape,p) = the right conical surface of which base is shape and vertex p
(def-fun right-conical-surface :: Shape -> Point => Shape) 

;;@ cylinder(shape1,shape2) = the cylinder of bottom shape1 and of top shape2
;;@ effective only if shape1 and shape2 are disks
(def-fun cylinder :: Shape -> Shape => Shape) 

;;@ cylindrical-surface(shape1,shape2) = the cylindrical surface of bottom shape1 and of top shape2
;;@ effective only if shape1 and shape2 are circles
(def-fun cylindrical-surface :: Shape -> Shape => Shape) 

;;@ base-of(shape) = the base of shape
(def-fun base-of :: Shape => Shape)

;;@ vertice-of(shape) = the vertex of shape
;;@ effective only if shape is a cone, a right cone, a conical surface, or a right conical surface
(def-fun vertice-of :: Shape => Point)

;;@ height-of(shape) = the height of shape
(def-fun height-of :: Shape => R)

;;@ side-of(shape) = the side of shape
;;@ effective only if shape is a cone, a right cone, or a cylinder
(def-fun side-of :: Shape => Shape) 

;;@ pyramid(shape,p) = the pyramid of base shape and of vertex p
(def-fun pyramid :: Shape -> Point => Shape)

;;@ prism(shape,v) = the prism of which base is shape, which is perpendicular to v, and of which height is the magnitude of v
(def-fun prism :: Shape -> Vector => Shape)

;;@ upper-region-of(shape) = the upper region of shape, of which projection along the z-axis passes shape
(def-fun upper-region-of :: Shape => Shape)

;;@ lower-region-of(shape) = the lower region of shape, of which projection along the z-axis passes shape
(def-fun lower-region-of :: Shape => Shape)

;;@ volume-of(shape) = the volume of shape
(def-fun volume-of :: Shape => R)

;;@ line3d(a,b,c,d,e,f) = the line (x,y,z) = t(a,b,c) + (d,e,f)
(def-fun line3d :: R -> R -> R -> R -> R -> R => Shape)

(def-fun import-2d-point :: 2d.Point => Point)

;;@ import-2d-shape(shape) = shape embedded on the xy-plane
(def-fun import-2d-shape :: 2d.Shape => Shape)

;;@ solid-of-revolution(shape1,shape2) = the shape of shape1 rotated arond shape2
;;@ effective only if shape2 is a line
(def-fun solid-of-revolution :: Shape -> Shape => Shape)

;;@ plane-symmetry(p,q,plane) <-> p and q are symmetric with respect to plane
(def-pred plane-symmetry :: Point -> Point -> Shape => Bool)

;; typing triggers
;;@ sphere-type(shape) <-> shape is a sphere
(def-pred sphere-type :: Shape => Bool)

;;@ plane-type(shape) <-> shape is a plane
(def-pred plane-type :: Shape => Bool)

;;@ tetrahedron-type(shape) <-> shape is a tetrahedron
(def-pred tetrahedron-type :: Shape => Bool)

;;@ cuboid-type(shape) <-> shape is a cuboid
(def-pred cuboid-type :: Shape => Bool)

;;@ cube-type(shape) <-> shape is a cube
(def-pred cube-type :: Shape => Bool)

;;@ square-pyramid-type(shape) <-> shape is a square pyramid
(def-pred square-pyramid-type :: Shape => Bool)

;;@ circle-type(shape) <-> shape is a circle
(def-pred circle-type :: Shape => Bool)

;;@ disk-type(shape) <-> shape is a disk
(def-pred disk-type :: Shape => Bool)

;;@ arc-type(shape) <-> shape is an arc
(def-pred arc-type :: Shape => Bool)

;;@ circular-sector-type(shape) <-> shape is a circular sector
(def-pred circular-sector-type :: Shape => Bool)

;;@ cone-type(shape) <-> shape is a cone
(def-pred cone-type :: Shape => Bool)

;;@ right-cone-type(shape) <-> shape is a right-cone
(def-pred right-cone-type :: Shape => Bool)

;;@ cylinder-type(shape) <-> shape is a cylinder
(def-pred cylinder-type :: Shape => Bool)

;;@ pyramid-type(shape) <-> shape is a pyramid
(def-pred pyramid-type :: Shape => Bool)
