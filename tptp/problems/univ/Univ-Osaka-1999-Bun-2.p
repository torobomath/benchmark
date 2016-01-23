%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 1999, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-16
%%
%% <PROBLEM-TEXT>
%% Let $l_1$ be the tangent to the parabola $C$ : $y =\frac{1}{2} x^2$
%% at the point $P$ (other than the origin), and let $l_2$ be the
%% straight line that passes through $P$ and is orthogonal to $l_1$. Let
%% $Q$ be the other intersection of $l_2$ and $C$, and let $l_3$ be the
%% tangent to $C$ at $Q$. Let $R$ be the intersection of $l_1$ and
%% $l_3$.
%%
%% (1) For the point $R(x, y)$, represent $y$ by a formula of $x$.
%%
%% (2) Find the range of the $x$ coordinate of the point $P$ such that
%% $PR\ge PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  160 (  10 equality;  74 variable)
%            Maximal formula depth :   33 (  20 average)
%            Number of connectives :  141 (   5   ~;   1   |;  38   &;  97   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   20 (   1 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.line-type/1' @ V_l3 )
        & ( V_P != '2d.origin/0' )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( V_P != V_Q )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.tangent/3' @ V_C @ V_l3 @ V_Q )
        & ( '2d.on/2' @ V_R @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l3 )
        & ( V_R
          = ( '2d.point/2' @ V_x @ V_y ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.line-type/1' @ V_l3 )
        & ( V_P != '2d.origin/0' )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( V_P != V_Q )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.tangent/3' @ V_C @ V_l3 @ V_Q )
        & ( '2d.on/2' @ V_R @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l3 )
        & ( '>=/2' @ ( '2d.distance/2' @ V_P @ V_R ) @ ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( V_x
          = ( '2d.x-coord/1' @ V_P ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_y_dot_0: 'R'] :
      ( ( V_x != 0 )
      & ( V_y_dot_0
        = ( '-/1' @ ( '+/2' @ ( '//2' @ 1 @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 2 ) ) ) @ 1 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '>=/2' @ V_x_dot_0 @ 2 )
      | ( '>=/2' @ ( '-/1' @ 2 ) @ V_x_dot_0 ) ) ),
    answer_to(p2_question,[])).
