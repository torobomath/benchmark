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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (   6 equality;  70 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :  150 (   0   ~;   1   |;   7   &; 142   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_X: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_X
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '>/2' @ V_c @ 0 )
        & ( ( '2d.distance/2' @ V_A @ V_C )
          = V_c )
        & ( ( '2d.distance^2/2' @ V_B @ ( '2d.midpoint-of/2' @ V_A @ V_C ) )
          = ( '*/2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_X_dot_0: '2d.Shape'] :
    ? [V_alpha: 'R',V_beta: 'R',V_c0: 'R',V_c1: 'R'] :
      ( ( ( '+/2' @ ( '^/2' @ V_alpha @ 2 ) @ ( '^/2' @ V_beta @ 2 ) )
        = 1 )
      & ( '>/2' @ V_c @ 0 )
      & ( ( V_X_dot_0
          = ( '2d.triangle/3' @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '-/1' @ ( '//2' @ V_c @ 2 ) ) @ 0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '//2' @ V_c @ 2 ) @ 0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 4 ) @ V_c ) @ ( '//2' @ V_c @ 4 ) ) ) ) ) )
        | ( V_X_dot_0
          = ( '2d.triangle/3' @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '-/1' @ ( '//2' @ V_c @ 2 ) ) @ 0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '//2' @ V_c @ 2 ) @ 0 ) ) ) @ ( '2d.vec-translate/2' @ ( '2d.point/2' @ V_c0 @ V_c1 ) @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_alpha @ ( '-/1' @ V_beta ) @ V_beta @ V_alpha ) @ ( '2d.vec2d/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 4 ) @ V_c ) ) @ ( '//2' @ V_c @ 4 ) ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).
