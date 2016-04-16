%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-13
%%
%% <PROBLEM-TEXT>
%% Let $M$ be the middle point of the side $BC$ of the acute triangle
%% $\triangle ABC$, and let $AH$ be the perpendicular drawn from $A$ to
%% the side $BC$. Let the point $P$ be on the line segment $MH$, then
%% prove that $AB^2+AC^2\ge 2 AP^2+BP^2+CP^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   4 equality;  32 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   48 (   1   ~;   1   |;   6   &;  39   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_H: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_H @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_H ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( ( ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_M @ V_H ) )
            & ( V_M != V_H ) )
          | ( ( V_M = V_H )
            & ( V_P = V_M ) ) ) )
     => ( $greatereq @ ( $sum @ ( '2d.distance^2/2' @ V_A @ V_B ) @ ( '2d.distance^2/2' @ V_A @ V_C ) ) @ ( $sum @ ( $product @ 2.0 @ ( '2d.distance^2/2' @ V_A @ V_P ) ) @ ( $sum @ ( '2d.distance^2/2' @ V_B @ V_P ) @ ( '2d.distance^2/2' @ V_C @ V_P ) ) ) ) ) )).

