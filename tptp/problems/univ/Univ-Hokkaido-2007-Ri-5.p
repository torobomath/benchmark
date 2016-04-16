%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Science Course, Problem 5
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-09-27
%%
%% <PROBLEM-TEXT>
%% Consider the ellipse
%% $C_1 :\frac{x^2}{{\alpha}^2} +\frac{y^2}{{\beta}^2} = 1$ and
%% hyperbola $C_2 :\frac{x^2}{a^2} -\frac{y^2}{b^2} = 1$. If $C_1$ and
%% $C_2$ have the same focuses, prove that the tangents of $C_1$ and
%% $C_2$ intersect with each other perpendicularly at the intersection
%% of the two.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   7 equality;  37 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :   76 (   5   ~;   0   |;  15   &;  55   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;  11   !;   0   ?;   4   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_alpha: $real,V_beta: $real,V_a: $real,V_b: $real,V_C1: '2d.Shape',V_C2: '2d.Shape',V_p1: '2d.Point',V_p2: '2d.Point',V_p: '2d.Point',V_l: '2d.Shape',V_k: '2d.Shape'] :
      ( ( ( V_a != 0.0 )
        & ( V_b != 0.0 )
        & ( V_alpha != 0.0 )
        & ( V_beta != 0.0 )
        & ( V_C1
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $difference @ ( $sum @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_alpha @ 2.0 ) ) @ ( $quotient @ ( '^/2' @ V_y_dot_0 @ 2.0 ) @ ( '^/2' @ V_beta @ 2.0 ) ) ) @ 1.0 ) ) )
        & ( V_C2
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( $difference @ ( $difference @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_a @ 2.0 ) ) @ ( $quotient @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ 1.0 ) ) )
        & ( V_p1 != V_p2 )
        & ( '2d.is-focus-of/2' @ V_p1 @ V_C1 )
        & ( '2d.is-focus-of/2' @ V_p1 @ V_C2 )
        & ( '2d.is-focus-of/2' @ V_p2 @ V_C1 )
        & ( '2d.is-focus-of/2' @ V_p2 @ V_C2 )
        & ( '2d.intersect/3' @ V_C1 @ V_C2 @ V_p )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/3' @ V_C1 @ V_l @ V_p )
        & ( '2d.line-type/1' @ V_k )
        & ( '2d.tangent/3' @ V_C2 @ V_k @ V_p ) )
     => ( '2d.perpendicular/2' @ V_l @ V_k ) ) )).

