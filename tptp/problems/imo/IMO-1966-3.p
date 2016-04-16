%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Prove: The sum of the distances of the vertices of a regular tetrahedron from
%% the center of its circumscribed sphere is less than the sum of the
%% distances of these vertices from any other point in space.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   1 equality;  31 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   59 (   0   ~;   0   |;   6   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   1 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_K: '3d.Shape',V_Kc: '3d.Point',V_P: '3d.Point'] :
      ( ( ( '3d.is-regular-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.sphere-type/1' @ V_K )
        & ( '3d.on/2' @ V_A @ V_K )
        & ( '3d.on/2' @ V_B @ V_K )
        & ( '3d.on/2' @ V_C @ V_K )
        & ( '3d.on/2' @ V_D @ V_K )
        & ( V_Kc
          = ( '3d.center-of/1' @ V_K ) ) )
     => ( $less @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Kc @ V_A ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Kc @ V_B ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Kc @ V_C ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Kc @ V_D ) ) ) ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_A ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_B ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_C ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_D ) ) ) ) ) ) ) )).

