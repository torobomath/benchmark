DONE complex.quad-equation complex.is-quad-equation
DONE line   line-type
DONE 2d.line2d 2d.line-type
DONE 2d.circle 2d.circle-type
DONE 2d.disk   2d.disk-type
DONE 2d.semicircle   2d.semicircle-type
DONE 2d.arc 2d.arc-type

DONE triangle triangle-type
DONE seg segment-type
DONE 2d.circular-sector 2d.circular-sector-type
DONE 2d.ellipse 2d.ellipse-type
DONE 2d.hyperbola 2d.hyperbola-type
DONE 2d.parabola 2d.parabola-type
DONE square -> square-type
DONE polygon -> polygon-type
poly-fun -> 無理
DONE half-line -> half-line-type
DONE angle -> angle-type

DONE 3d.line3d 3d.line3d-type
DONE 3d.plane plane-type
DONE 3d.plane1 -> plane1-type
DONE 3d.plane2/2 -> plane2-type
DONE 3d.plane2/1 -> plane2-type
DONE 3d.plane/1 -> plane-type

DONE tetrahedron -> tetrahedron-type
DONE sphere -> spehre-type 
DONE cuboid -> cuboid-type
DONE cube -> cube-type
DONE square-pyramid -> square-pyramid-type
DONE octahedron -> octahedron-type
DONE cone -> cone-type
DONE right-cone -> right-cone-type
DONE cylinder -> cylinder-type
DONE pyramid -> pyramid-type
DONE prism -> prism-type
DONE 3d.circle -> 3d.circle-type
DONE 3d.disk -> 3d.disk-type
DONE 3d.arc -> 3d.arc-type
DONE 3d.circular-sector -> 3d.circular-sector-type

多角形その他Shapeの constructor は
引数の順番も含めた equality を考える．
seg と line は例外

-------------------
not defined:
-------------------
^
exp
log
ln
sin, cos, ...

-------------------
should be defined
-------------------
if
cond -> export しない
pcond -> export しない
abs
sign
sqrt
int.sign
int.abs
int.gcd
int.lcm
int.iota
int.^
int.integer-division -> export しない
int.set-to-list
rat.ratio -> $rat -> コードで done

-------------------
inconsistent
-------------------
normal-vector-of(plane)
normal-vector-of(disk)
normal-vector-of(arc)
normal-vector-of(major-arc)
normal-vector-of(minor-arc)
normal-vector-of(circular-sector)
    --> is-normal-vector に変更

local-system-of(arc)
local-system-of(major-arc)
local-system-of(minor-arc)
local-system-of(circular-sector)

vertices-of
sides-of
faces-of
base-of
an-inner-point-of

direction-vec(line)

vertices-of(triangle)
vertices-of(square)
vertices-of(polygon)

end-points-of(seg)
end-points-of(arc)
