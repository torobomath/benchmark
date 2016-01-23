%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1981, Problem 5
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Three congruent circles have a common point $O$ and lie inside a
%% given triangle. Each circle touches a pair of sides of the triangle. Prove
%% that the incenter and the circumcenter of the triangle and the point $O$ are
%% collinear.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   2 equality;  56 variable)
%            Maximal formula depth :   35 (  35 average)
%            Number of connectives :   95 (   0   ~;   0   |;  18   &;  76   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   10 (   1 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_K1: '2d.Shape',V_K2: '2d.Shape',V_K3: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_incenter: '2d.Point',V_circumcenter: '2d.Point',V_O: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '</2' @ 0 @ V_r )
        & ( '2d.is-incenter-of/2' @ V_incenter @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-circumcenter-of/2' @ V_circumcenter @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( ( '2d.radius-of/1' @ V_K1 )
          = ( '2d.radius-of/1' @ V_K2 ) )
        & ( ( '2d.radius-of/1' @ V_K2 )
          = ( '2d.radius-of/1' @ V_K3 ) )
        & ( '2d.point-inside-of/2' @ ( '2d.center-of/1' @ V_K1 ) @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ ( '2d.center-of/1' @ V_K2 ) @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ ( '2d.center-of/1' @ V_K3 ) @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.tangent/2' @ V_K1 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.tangent/2' @ V_K1 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.tangent/2' @ V_K2 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.tangent/2' @ V_K2 @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.tangent/2' @ V_K3 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.tangent/2' @ V_K3 @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_O @ ( '2d.intersection/1' @ ( 'cons/2' @ V_K1 @ ( 'cons/2' @ V_K2 @ ( 'cons/2' @ V_K3 @ 'nil/0' ) ) ) ) ) )
     => ( '2d.colinear/3' @ V_O @ V_incenter @ V_circumcenter ) ) )).
