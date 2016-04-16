%% DOMAIN:    Geometry, circle
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1979, Problem 3
%% SCORE:     7
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% Two circles in a plane intersect. Let $A$ be one of the points of
%% intersection. Starting simultaneously from $A$ two points move with constant
%% speeds, each point travelling along its own circle in the same sense. The two
%% points return to $A$ simultaneously after one revolution. Prove that there is
%% a fixed point $P$ in the plane such that, at any time, the distances from $P$ to
%% the moving points are equal.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   76 (   4 equality;  34 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :   68 (   1   ~;   0   |;   6   &;  60   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   7   !;   1   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    1 (   0 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_C1: '2d.Shape',V_C2: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_theta1: $real,V_theta2: $real] :
      ( ( ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( '2d.intersect/3' @ V_C1 @ V_C2 @ V_A )
        & ( '2d.intersect/3' @ V_C1 @ V_C2 @ V_B )
        & ( V_A != V_B )
        & ( V_A
          = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ V_C1 ) @ ( '2d.sv*/2' @ ( '2d.radius-of/1' @ V_C1 ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ V_theta1 ) @ ( 'sin/1' @ V_theta1 ) ) ) ) )
        & ( V_A
          = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ V_C2 ) @ ( '2d.sv*/2' @ ( '2d.radius-of/1' @ V_C2 ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ V_theta2 ) @ ( 'sin/1' @ V_theta2 ) ) ) ) ) )
     => ? [V_P: '2d.Point'] :
        ! [V_theta: $real] :
          ( ( '2d.distance/2' @ V_P @ ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ V_C1 ) @ ( '2d.sv*/2' @ ( '2d.radius-of/1' @ V_C1 ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( $sum @ V_theta1 @ V_theta ) ) @ ( 'sin/1' @ ( $sum @ V_theta1 @ V_theta ) ) ) ) ) )
          = ( '2d.distance/2' @ V_P @ ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ V_C2 ) @ ( '2d.sv*/2' @ ( '2d.radius-of/1' @ V_C2 ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( $sum @ V_theta2 @ V_theta ) ) @ ( 'sin/1' @ ( $sum @ V_theta2 @ V_theta ) ) ) ) ) ) ) ) )).

