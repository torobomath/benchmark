%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1988, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% $ABC$ is a triangle right-angled at $A$, and D is the foot of the altitude from
%% $A$. The straight line joining the incenters of the triangles $ABD$, $ACD$
%% intersects the sides $AB$, $AC$ at the points $K$, $L$ respectively. $S$ and $T$
%% denote the areas of the triangles $ABC$ and $AKL$ respectively.
%% Show that $S ¥ge 2T$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   3 equality;  42 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   62 (   0   ~;   0   |;  11   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Ln: '2d.Shape',V_O1: '2d.Point',V_O2: '2d.Point',V_S: 'R',V_T: 'R',V_K: '2d.Point',V_L: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_B @ V_A @ V_C )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_A ) @ ( '2d.line/2' @ V_C @ V_A ) )
        & ( V_D
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( '2d.is-incenter-of/2' @ V_O1 @ ( '2d.triangle/3' @ V_A @ V_B @ V_D ) )
        & ( '2d.is-incenter-of/2' @ V_O2 @ ( '2d.triangle/3' @ V_A @ V_C @ V_D ) )
        & ( '2d.line-type/1' @ V_Ln )
        & ( '2d.on/2' @ V_O1 @ V_Ln )
        & ( '2d.on/2' @ V_O2 @ V_Ln )
        & ( '2d.intersect/3' @ V_Ln @ ( '2d.seg/2' @ V_A @ V_B ) @ V_K )
        & ( '2d.intersect/3' @ V_Ln @ ( '2d.seg/2' @ V_A @ V_C ) @ V_L )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
        & ( V_T
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_K @ V_L ) ) ) )
     => ( '>=/2' @ V_S @ ( '*/2' @ 2 @ V_T ) ) ) )).
