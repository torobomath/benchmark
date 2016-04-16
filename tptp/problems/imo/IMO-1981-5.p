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

% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  104 (   2 equality;  55 variable)
%            Maximal formula depth :   36 (  19 average)
%            Number of connectives :   99 (   0   ~;   0   |;  18   &;  80   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   1   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   1 pred;    0 func;    1 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf(p,conjecture,(
    ! [V_K1: '2d.Shape',V_K2: '2d.Shape',V_K3: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_incenter: '2d.Point',V_circumcenter: '2d.Point',V_O: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( $less @ 0.0 @ 'r/0' )
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
        & ( '2d.on/2' @ V_O @ ( '2d.intersection/1' @ ( 'cons/2' @ '2d.Shape' @ V_K1 @ ( 'cons/2' @ '2d.Shape' @ V_K2 @ ( 'cons/2' @ '2d.Shape' @ V_K3 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
     => ( '2d.colinear/3' @ V_O @ V_incenter @ V_circumcenter ) ) )).

