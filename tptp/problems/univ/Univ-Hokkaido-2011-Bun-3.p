%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2011, Humanities Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers, and define three straight lines on
%% the $x y$ plane as $l$: $x + y = 0$, $l_1$: $a x + y = 2 a + 2$, and
%% $l_2$: $b x + y = 2 b + 2$.
%%
%% (1) The straight line $l_1$ passes through the point $P$ independent
%% of the value of $a$. Find the coordinates of $P$.
%%
%% (2) Find the condition for $a$ and $b$ such that a triangle is formed
%% by $l$, $l_1$, and $l_2$.
%%
%% (3) When $a$ and $b$ satisfy the condition found in (2), find the
%% range of the values of $a$ and $b$ such that the point $(1, 1)$
%% exists inside the triangle described in (2), and draw the range on
%% the $a b$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  249 (  18 equality;  73 variable)
%            Maximal formula depth :   25 (  16 average)
%            Number of connectives :  214 (   3   ~;   0   |;  22   &; 188   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   32 (   0 sgn;   5   !;  21   ?;   6   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ! [V_a: 'R',V_b: 'R',V_l: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( ( V_l
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/2' @ 0 @ 1 ) @ 'nil/0' ) ) ) ) )
          & ( V_l1
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_a ) @ 'nil/0' ) ) ) ) )
          & ( V_l2
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_b ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_b ) @ 'nil/0' ) ) ) ) ) )
       => ( '2d.on/2' @ V_P @ V_l1 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ? [V_l: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape',V_P01: '2d.Point',V_P12: '2d.Point',V_P20: '2d.Point'] :
            ( ( V_l
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/2' @ 0 @ 1 ) @ 'nil/0' ) ) ) ) )
            & ( V_l1
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_a ) @ 'nil/0' ) ) ) ) )
            & ( V_l2
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_b ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_b ) @ 'nil/0' ) ) ) ) )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_l1 @ 'nil/0' ) ) @ V_P01 )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) @ V_P12 )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) @ V_P20 )
            & ( '2d.is-triangle/3' @ V_P01 @ V_P12 @ V_P20 ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ? [V_l: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape',V_P01: '2d.Point',V_P12: '2d.Point',V_P20: '2d.Point',V_T: '2d.Shape'] :
            ( ( V_l
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/2' @ 0 @ 1 ) @ 'nil/0' ) ) ) ) )
            & ( V_l1
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_a ) @ 'nil/0' ) ) ) ) )
            & ( V_l2
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_b ) @ 2 ) @ ( 'cons/2' @ ( '-/2' @ 0 @ V_b ) @ 'nil/0' ) ) ) ) )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_l1 @ 'nil/0' ) ) @ V_P01 )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) @ V_P12 )
            & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) @ V_P20 )
            & ( '2d.is-triangle/3' @ V_P01 @ V_P12 @ V_P20 )
            & ( V_T
              = ( '2d.triangle/3' @ V_P01 @ V_P12 @ V_P20 ) )
            & ( '2d.point-inside-of/2' @ ( '2d.point/2' @ 1 @ 1 ) @ V_T ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2 @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( V_a_dot_0 != 1 )
      & ( V_b_dot_0 != 1 )
      & ( V_a_dot_0 != V_b_dot_0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( '</2' @ ( '*/2' @ ( '+/2' @ V_a_dot_0 @ 1 ) @ ( '*/2' @ ( '-/2' @ V_a_dot_0 @ 1 ) @ ( '*/2' @ ( '+/2' @ V_b_dot_0 @ 1 ) @ ( '-/2' @ V_b_dot_0 @ 1 ) ) ) ) @ 0 ) ) ),
    answer_to(p3_question,[])).
