%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2011, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a positive real number, let $b$ and $c$ be real numbers,
%% and let $C$ be the parabola $y = a x^2 + b x + c$ that passes through
%% the points $P(-1, 3)$ and $Q(1, 4)$. Let $l_1$ and $l_2$ be the
%% tangents to $C$ at the points $P$ and $Q$, respectively.
%%
%% (1) Find the value of $b$, and represent $c$ using $a$.
%%
%% (2) Represent the coordinates of the intersection of $l_1$ and $l_2$
%% using $a$.
%%
%% (3) Find the value of $a$ such that the area of the region enclosed
%% by the parabola $C$ and the tangents $l_1$ and $l_2$ is $1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  234 (  19 equality;  94 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  188 (   0   ~;   0   |;  42   &; 146   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   41 (   0 sgn;   0   !;  29   ?;   8   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_a: 'R',V_c: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( '-/1' @ 1 ) @ 3 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1 @ 4 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: 'R'] :
      ? [V_b: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( '-/1' @ 1 ) @ 3 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1 @ 4 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_U: '2d.Point'] :
      ? [V_b: 'R',V_c: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( '-/1' @ 1 ) @ 3 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1 @ 4 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) @ V_U ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_b: 'R',V_c: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( '-/1' @ 1 ) @ 3 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1 @ 4 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q )
        & ( 1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( V_b_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_c_dot_0: 'R'] :
      ( ( V_c_dot_0
        = ( '-/2' @ ( '//2' @ 7 @ 2 ) @ V_a ) )
      & ( '</2' @ 0 @ V_a ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_U_dot_0: '2d.Point'] :
    ? [V_Ux: 'R',V_Uy: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_U_dot_0
        = ( '2d.point/2' @ V_Ux @ V_Uy ) )
      & ( V_Ux = 0 )
      & ( V_Uy
        = ( '+/2' @ ( '*/2' @ -2 @ V_a ) @ ( '//2' @ 7 @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( V_a_dot_0
      = ( '//2' @ 3 @ 2 ) ) ),
    answer_to(p3_question,[])).
