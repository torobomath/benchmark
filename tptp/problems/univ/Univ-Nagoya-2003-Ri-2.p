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

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   78 (   3 equality;  17 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :   71 (   1   ~;   0   |;   8   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    2 func;    4 numbers)

include('axioms.ax').

thf('d/0_type',type,(
    'd/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_max: $real] :
      ? [V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( $less @ 0.0 @ 'd/0' )
        & ( $less @ 'd/0' @ 1.0 )
        & ( '2d.intersect/3' @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'd/0' @ ( 'nil/0' @ $real ) ) ) ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'd/0' @ ( 'nil/0' @ $real ) ) ) ) @ V_Q )
        & ( V_P != V_Q )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_st: $real] :
              ? [V_R: '2d.Point',V_S: '2d.Point'] :
                ( ( $less @ 'd/0' @ ( '2d.y-coord/1' @ V_R ) )
                & ( '2d.on/2' @ V_R @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) )
                & ( '2d.intersect/3' @ ( '2d.seg/2' @ '2d.origin/0' @ V_R ) @ ( '2d.seg/2' @ V_P @ V_Q ) @ V_S )
                & ( V_st
                  = ( '2d.distance/2' @ V_S @ ( '2d.foot-of-perpendicular-line-from-to/2' @ V_R @ ( '2d.line/2' @ V_P @ V_Q ) ) ) ) ) )
          @ V_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: $real] :
      ( V_max_dot_0
      = ( '^/2' @ ( $difference @ 1.0 @ ( '^/2' @ 'd/0' @ ( $quotient @ 2.0 @ 3.0 ) ) ) @ ( $quotient @ 3.0 @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

