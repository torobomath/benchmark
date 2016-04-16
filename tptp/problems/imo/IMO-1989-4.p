%% DOMAIN:    Geometry, circle and other quadratic curves
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1989, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-19
%%
%% <PROBLEM-TEXT>
%% Let $ABCD$ be a convex quadrilateral such that the sides $AB$, $AD$, $BC$ satisfy
%% $AB = AD + BC$. There exists a point $P$ inside the quadrilateral at a distance
%% $h$ from the line $CD$ such that $AP = h + AD$ and $BP = h + BC$. Show that:
%% ¥[
%% ¥frac{1}{¥sqrt{h}} ¥ge ¥frac{1}{¥sqrt{AD}} + ¥frac{1}{¥sqrt{BC}}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   4 equality;  34 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   57 (   0   ~;   0   |;   5   &;  51   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_h: $real] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = ( $sum @ ( '2d.distance/2' @ V_A @ V_D ) @ ( '2d.distance/2' @ V_B @ V_C ) ) )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_h
          = ( '2d.point-shape-distance/2' @ V_P @ ( '2d.line/2' @ V_C @ V_D ) ) )
        & ( ( '2d.distance/2' @ V_A @ V_P )
          = ( $sum @ V_h @ ( '2d.distance/2' @ V_A @ V_D ) ) )
        & ( ( '2d.distance/2' @ V_B @ V_P )
          = ( $sum @ V_h @ ( '2d.distance/2' @ V_B @ V_C ) ) ) )
     => ( $greatereq @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ V_h ) ) @ ( $sum @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ ( '2d.distance/2' @ V_A @ V_D ) ) ) @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ ( '2d.distance/2' @ V_B @ V_C ) ) ) ) ) ) )).

