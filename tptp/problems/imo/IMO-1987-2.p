%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1987, Problem 2
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-11
%%
%% <PROBLEM-TEXT>
%% In an acute-angled triangle $ABC$ the interior bisector of the angle $A$
%% intersects $BC$ at $L$ and intersects the circumcircle of $ABC$ again at $N$. From
%% point $L$ perpendiculars are drawn to $AB$ and $AC$, the feet of these
%% perpendiculars being $K$ and $M$ respectively. Prove that the quadrilateral $AKNM$
%% and the triangle $ABC$ have equal areas.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   4 equality;  37 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   52 (   1   ~;   0   |;   8   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_L: '2d.Point',V_N: '2d.Point',V_K: '2d.Point',V_M: '2d.Point',V_Circle: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_L ) @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_L @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_Circle )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Circle )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_L ) @ V_Circle @ V_N )
        & ( V_A != V_N )
        & ( V_K
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_L @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( V_M
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_L @ ( '2d.line/2' @ V_A @ V_C ) ) ) )
     => ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        = ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_K @ V_N @ V_M ) ) ) ) )).

