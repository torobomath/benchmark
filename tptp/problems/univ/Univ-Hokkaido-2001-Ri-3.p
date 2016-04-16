%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2001, Science Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-26
%%
%% <PROBLEM-TEXT>
%% Draw two tangents to the circle $x^2 + y^2 = 1$ on the $x y$ plane
%% from the point $P(a, b)$ outside the circle. Let $A$ be the points of
%% contact, and let $Q$ be the middle point of the line segment $AB$.
%%
%% (1) Represent the coordinates of the point $Q$ using $a$ and $b$.
%%
%% (2) When the point $P$ moves on the circle $(x - 3)^2 + y^2 = 1$,
%% find the locus of the point $Q$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  160 (  10 equality;  43 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :  138 (   2   ~;   0   |;  22   &; 114   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  10   ?;   6   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    5 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ 'a/0' @ 'b/0' ) )
        & ( '2d.point-outside-of/2' @ V_P @ '2d.unit-circle/0' )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_A != V_B )
        & ( '2d.tangent/3' @ V_l @ '2d.unit-circle/0' @ V_A )
        & ( '2d.tangent/3' @ V_m @ '2d.unit-circle/0' @ V_B )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_P @ V_m )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ 'a/0' @ 'b/0' ) )
        & ( '2d.point-outside-of/2' @ V_P @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ V_P
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( $sum @ ( '^/2' @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ 3.0 ) @ 2.0 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2.0 ) )
                = 1.0 ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_A != V_B )
        & ( '2d.tangent/3' @ V_l @ '2d.unit-circle/0' @ V_A )
        & ( '2d.tangent/3' @ V_m @ '2d.unit-circle/0' @ V_B )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_P @ V_m )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( ( '2d.point-outside-of/2' @ ( '2d.point/2' @ 'a/0' @ 'b/0' ) @ '2d.unit-circle/0' )
      & ( V_Q_dot_0
        = ( '2d.point/2' @ ( $quotient @ 'a/0' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ ( $quotient @ 'b/0' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( ( '2d.point-outside-of/2' @ ( '2d.point/2' @ 'a/0' @ 'b/0' ) @ '2d.unit-circle/0' )
      & ( '2d.on/2' @ ( '2d.point/2' @ 'a/0' @ 'b/0' )
        @ ( '2d.shape-of-cpfun/1'
          @ ^ [V_p_dot_0: '2d.Point'] :
              ( ( $sum @ ( '^/2' @ ( $difference @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3.0 ) @ 2.0 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 2.0 ) )
              = 1.0 ) ) )
      & ( ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_Q_dot_0 ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '2d.y-coord/1' @ V_Q_dot_0 ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( $product @ ( $quotient @ 3.0 @ 4.0 ) @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) ) @ ( $quotient @ 1.0 @ 8.0 ) ) ) )
        = 0.0 ) ) ),
    answer_to(p2_question,[])).

