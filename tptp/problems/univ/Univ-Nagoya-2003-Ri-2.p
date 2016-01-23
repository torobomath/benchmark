%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2003, Science Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-04
%%
%% <PROBLEM-TEXT>
%% Let $P$ and $Q$ be the intersections of the circumference $A$:
%% $x^2 + y^2 = 1$ with a radius of $1$ and the straight line $l$:
%% $y = d$ ( $0 < d < 1$) on the coordinate plane with the origin $O$.
%% The point $R(x, y)$ on the circumference $A$ moves in the range of
%% $y > d$. Let $S$ be the intersection of the line segments $OR$ and
%% $PQ$, and let $T$ be the foot of the perpendicular drawn from the
%% point $R$ to the line segment $PQ$, then represent the maximum length
%% of the line segment $ST$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   3 equality;  23 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :   65 (   1   ~;   0   |;   8   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :    9 (   1 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'R'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( '</2' @ 0 @ V_d )
        & ( '</2' @ V_d @ 1 )
        & ( '2d.intersect/3' @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) @ V_Q )
        & ( V_P != V_Q )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_st: 'R'] :
              ? [V_R: '2d.Point',V_S: '2d.Point'] :
                ( ( '</2' @ V_d @ ( '2d.y-coord/1' @ V_R ) )
                & ( '2d.on/2' @ V_R @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) )
                & ( '2d.intersect/3' @ ( '2d.seg/2' @ '2d.origin/0' @ V_R ) @ ( '2d.seg/2' @ V_P @ V_Q ) @ V_S )
                & ( V_st
                  = ( '2d.distance/2' @ V_S @ ( '2d.foot-of-perpendicular-line-from-to/2' @ V_R @ ( '2d.line/2' @ V_P @ V_Q ) ) ) ) ) )
          @ V_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: 'R'] :
      ( V_max_dot_0
      = ( '^/2' @ ( '-/2' @ 1 @ ( '^/2' @ V_d @ ( '//2' @ 2 @ 3 ) ) ) @ ( '//2' @ 3 @ 2 ) ) ) ),
    answer_to(p1_question,[])).
