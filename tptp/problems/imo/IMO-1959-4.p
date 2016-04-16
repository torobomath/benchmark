%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 4
%% SCORE:     5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Construct a right triangle with given hypotenuse $c$ such that the median
%% drawn to the hypotenuse is the geometric mean of the two legs
%% of the triangle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  165 (   6 equality;  59 variable)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :  151 (   0   ~;   1   |;   7   &; 143   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('c/0_type',type,(
    'c/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_X: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_X
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( $greater @ 'c/0' @ 0.0 )
        & ( ( '2d.distance/2' @ V_A @ V_C )
          = 'c/0' )
        & ( ( '2d.distance^2/2' @ V_B @ ( '2d.midpoint-of/2' @ V_A @ V_C ) )
          = ( $product @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_X_dot_0: '2d.Shape'] :
    ? [V_alpha: $real,V_beta: $real,V_c0: $real,V_c1: $real] :
      ( ( ( $sum @ ( '^/2' @ V_alpha @ 2.0 ) @ ( '^/2' @ V_beta @ 2.0 ) )
        = 1.0 )
      & ( $greater @ 'c/0' @ 0.0 )
      & ( ( V_X_dot_0
          = ( '2d.triangle/3' @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $uminus @ ( $quotient @ 'c/0' @ 2.0 ) ) @ 0.0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $quotient @ 'c/0' @ 2.0 ) @ 0.0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 4.0 ) @ 'c/0' ) @ ( $quotient @ 'c/0' @ 4.0 ) ) ) ) ) )
        | ( V_X_dot_0
          = ( '2d.triangle/3' @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $uminus @ ( $quotient @ 'c/0' @ 2.0 ) ) @ 0.0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $quotient @ 'c/0' @ 2.0 ) @ 0.0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( $uminus @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( $uminus @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 4.0 ) @ 'c/0' ) ) @ ( $quotient @ 'c/0' @ 4.0 ) ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

