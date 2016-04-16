%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2009, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-06
%%
%% <PROBLEM-TEXT>
%% Assume that the parabola $y = a x^2$ ( $a > 0$) and the circle
%% $(x - b)^2 +(y - 1)^2 = 1$ ( $b > 0$) are in contact with each other
%% at the point $P(p, q)$, where $0 < p < b$. Let $R$ be the
%% intersection of the $x$ axis and the perpendicular drawn from the
%% center $Q$ of this circle to the $x$ axis, and assume that
%% $\angle POR = 120^{\circ}$. Here, the fact the parabola and the
%% circle are in contact with each other at the point $P$ means that $P$
%% is a common point of the parabola and the circle, and the tangents to
%% the parabola at the point $P$ matches the tangent to the circle at
%% the point $P$.
%%
%% (1) Find the values of $a$ and $b$.
%%
%% (2) Find the area of the region enclosed by the $x$ axis, the
%% parabola, and the shorter one of the arcs connecting the points $P$
%% and $R$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  255 (   6 equality;  54 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  241 (   0   ~;   0   |;  18   &; 223   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_p: $real,V_q: $real] :
        ( ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_p )
        & ( $less @ V_p @ V_b )
        & ( ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_b @ 1.0 ) @ ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ '2d.x-axis/0' ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ 1.0 ) )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ 1.0 ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) ) )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_a: $real,V_b: $real,V_p: $real,V_q: $real] :
        ( ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_p )
        & ( $less @ V_p @ V_b )
        & ( ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_b @ 1.0 ) @ ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ '2d.x-axis/0' ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ 1.0 ) )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1.0 ) @ 1.0 ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) ) )
        & ( V_x
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.arc/4' @ ( '2d.point/2' @ V_b @ 1.0 ) @ 1.0 @ ( $product @ ( $quotient @ 150.0 @ 180.0 ) @ 'Pi/0' ) @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ 'Pi/0' ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
      ( V_ab_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $difference @ ( $product @ ( $quotient @ 9.0 @ 8.0 ) @ ( 'sqrt/1' @ 3.0 ) ) @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ 'Pi/0' ) ) ) ),
    answer_to(p2_question,[])).

