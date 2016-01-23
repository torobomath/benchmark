%% DOMAIN:    Geometry, elementary geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2009, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let ABC be a triangle with circumcentre O. The points P and Q are interior
%% points of the sides CA and AB, respectively. Let K, L and M be the midpoints
%% of the segments BP, CQ and PQ, respectively, and let Gamma be the circle
%% passing through K, L and M. Suppose that the line PQ is tangent to the circle
%% Gamma. Prove that OP = OQ.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   8 equality;  44 variable)
%            Maximal formula depth :   30 (  30 average)
%            Number of connectives :   57 (   4   ~;   0   |;  15   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_K: '2d.Point',V_L: '2d.Point',V_M: '2d.Point',V_Gamma: '2d.Shape'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( V_P != V_C )
        & ( V_P != V_A )
        & ( V_Q != V_A )
        & ( V_Q != V_B )
        & ( V_K
          = ( '2d.midpoint-of/2' @ V_B @ V_P ) )
        & ( V_L
          = ( '2d.midpoint-of/2' @ V_C @ V_Q ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_P @ V_Q ) )
        & ( '2d.circle-type/1' @ V_Gamma )
        & ( '2d.on/2' @ V_K @ V_Gamma )
        & ( '2d.on/2' @ V_L @ V_Gamma )
        & ( '2d.on/2' @ V_M @ V_Gamma )
        & ( '2d.tangent/2' @ V_Gamma @ ( '2d.line/2' @ V_P @ V_Q ) ) )
     => ( ( '2d.distance/2' @ V_O @ V_P )
        = ( '2d.distance/2' @ V_O @ V_Q ) ) ) )).
