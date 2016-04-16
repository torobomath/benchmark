%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 6
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% In the interior of sides $BC$, $CA$, $AB$ of triangle $ABC$, any points $K$, $L$, $M$,
%% respectively, are selected. Prove that the area of at least one of the
%% triangles $AML$, $BKM$, $CLK$ is less than or equal to one quarter of the area
%% of triangle $ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   76 (   6 equality;  42 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   69 (   6   ~;   2   |;   9   &;  51   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_K: '2d.Point',V_L: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_K @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_L @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( V_M != V_A )
        & ( V_M != V_B )
        & ( V_K != V_B )
        & ( V_K != V_C )
        & ( V_L != V_C )
        & ( V_L != V_A ) )
     => ( ( $lesseq @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_M @ V_A @ V_L ) ) @ ( $quotient @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) @ 4.0 ) )
        | ( $lesseq @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_K @ V_B @ V_M ) ) @ ( $quotient @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) @ 4.0 ) )
        | ( $lesseq @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_L @ V_C @ V_K ) ) @ ( $quotient @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) @ 4.0 ) ) ) ) )).

