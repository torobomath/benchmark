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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (   7 equality;  39 variable)
%            Maximal formula depth :   22 (  15 average)
%            Number of connectives :   96 (   2   ~;   0   |;  13   &;  81   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   21 (   4 sgn;   0   !;  10   ?;   5   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ~ ( '2d.on/2' @ V_P @ '2d.unit-circle/0' )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.tangent/3' @ V_l @ '2d.unit-circle/0' @ V_A )
        & ( '2d.tangent/3' @ V_m @ '2d.unit-circle/0' @ V_B )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ~ ( '2d.on/2' @ V_P @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ V_P
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '+/2' @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ 3 ) @ 2 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2 ) )
                = 1 ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.tangent/3' @ V_l @ '2d.unit-circle/0' @ V_A )
        & ( '2d.tangent/3' @ V_m @ '2d.unit-circle/0' @ V_B )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( V_Q_dot_0
      = ( '2d.point/2' @ ( '//2' @ V_a @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '//2' @ V_b @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_Q_dot_0 ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.y-coord/1' @ V_Q_dot_0 ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 3 @ 4 ) @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) ) @ ( '//2' @ 1 @ 8 ) ) ) )
      = 0 ) ),
    answer_to(p2_question,[])).
