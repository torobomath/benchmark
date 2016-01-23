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
%            Number of atoms       :  222 (   6 equality;  54 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  208 (   0   ~;   0   |;  18   &; 190   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_p: 'R',V_q: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ V_b )
        & ( ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_b @ 1 ) @ ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_b @ 1 ) @ '2d.x-axis/0' ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1 ) @ 1 ) )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1 ) @ 1 ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) ) )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_p: 'R',V_q: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ V_b )
        & ( ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_b @ 1 ) @ ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_b @ 1 ) @ '2d.x-axis/0' ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1 ) @ 1 ) )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ V_b @ 1 ) @ 1 ) @ V_l @ ( '2d.point/2' @ V_p @ V_q ) ) )
        & ( V_x
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) @ ( 'cons/2' @ '2d.x-axis/0' @ ( 'cons/2' @ ( '2d.arc/4' @ ( '2d.point/2' @ V_b @ 1 ) @ 1 @ ( '*/2' @ ( '//2' @ 150 @ 180 ) @ 'Pi/0' ) @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ 'Pi/0' ) ) @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( V_ab_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( 'sqrt/1' @ 3 ) ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '-/2' @ ( '*/2' @ ( '//2' @ 9 @ 8 ) @ ( 'sqrt/1' @ 3 ) ) @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ 'Pi/0' ) ) ) ),
    answer_to(p2_question,[])).
