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

% Syntax   : Number of formulae    :    9 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  261 (  19 equality;  86 variable)
%            Maximal formula depth :   28 (  14 average)
%            Number of connectives :  215 (   0   ~;   0   |;  42   &; 173   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   37 (   0 sgn;   0   !;  29   ?;   8   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   1 pred;    5 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(a1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_a: $real,V_c: $real,V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( $less @ 0.0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( $uminus @ 1.0 ) @ 3.0 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_c: $real] :
      ? [V_b: $real,V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_P
          = ( '2d.point/2' @ ( $uminus @ 1.0 ) @ 3.0 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_U: '2d.Point'] :
      ? [V_b: $real,V_c: $real,V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_P
          = ( '2d.point/2' @ ( $uminus @ 1.0 ) @ 3.0 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'nil/0' @ '2d.Shape' ) ) ) @ V_U ) ) )).

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_b: $real,V_c: $real,V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( $less @ 0.0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ ( $uminus @ 1.0 ) @ 3.0 ) )
        & ( V_Q
          = ( '2d.point/2' @ 1.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_C @ V_l1 @ V_P )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_Q )
        & ( 1.0
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(a1_1_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( V_b_dot_0
      = ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(a1_1_question,[])).

thf(a1_2_answer,answer,(
    ^ [V_c_dot_0: $real] :
      ( ( V_c_dot_0
        = ( $difference @ ( $quotient @ 7.0 @ 2.0 ) @ 'a/0' ) )
      & ( $less @ 0.0 @ 'a/0' ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_U_dot_0: '2d.Point'] :
    ? [V_Ux: $real,V_Uy: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_U_dot_0
        = ( '2d.point/2' @ V_Ux @ V_Uy ) )
      & ( V_Ux = 0.0 )
      & ( V_Uy
        = ( $sum @ ( $product @ -2.0 @ 'a/0' ) @ ( $quotient @ 7.0 @ 2.0 ) ) ) ) ),
    answer_to(a2_question,[])).

thf(a3_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( $quotient @ 3.0 @ 2.0 ) ) ),
    answer_to(a3_question,[])).

