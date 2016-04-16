%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2009, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% On the coordinate plane, let $C_1$ be the circle with the center at
%% the origin and the radius $2$, and $C_2$, the circle with the center
%% at the point $(1, 0)$ and the radius $1$. Assume that the circle
%% $C_3$ with the center at the point $(a, b)$ and the radius $t$ is
%% inscribed in $C_1$ and circumscribed to $C_2$, where $b$ is a
%% positive real number.
%%
%% (1) Represent $a$ and $b$ using $t$. Find the range of the possible
%% value of $t$.
%%
%% (2) When $t$ moves in the range found in (1), find the maximum value
%% of $b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  153 (  15 equality;  46 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :  120 (   0   ~;   0   |;  22   &;  98   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   0   !;  18   ?;   7   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    2 func;    5 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(a1_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: $real,V_b: $real] :
        ( ( V_C1
          = ( '2d.circle/2' @ '2d.origin/0' @ 2.0 ) )
        & ( V_C2
          = ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ 1.0 ) )
        & ( V_C3
          = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ 't/0' ) )
        & ( $greater @ V_b @ 0.0 )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: $real,V_b: $real] :
        ( ( V_C1
          = ( '2d.circle/2' @ '2d.origin/0' @ 2.0 ) )
        & ( V_C2
          = ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ 1.0 ) )
        & ( V_C3
          = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_t ) )
        & ( $less @ 0.0 @ V_b )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_M: $real] :
      ? [V_b_set: ( 'SetOf' @ $real )] :
        ( ( 'maximum/2' @ V_b_set @ V_M )
        & ( V_b_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_b: $real] :
              ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: $real,V_t: $real] :
                ( ( V_C1
                  = ( '2d.circle/2' @ '2d.origin/0' @ 2.0 ) )
                & ( V_C2
                  = ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ 1.0 ) )
                & ( V_C3
                  = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_t ) )
                & ( $greater @ V_b @ 0.0 )
                & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
                & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 ) ) ) ) ) )).

thf(a1_1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_ab1: $real,V_ab2: $real] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( $less @ 't/0' @ 1.0 )
      & ( V_ab1
        = ( $difference @ 2.0 @ ( $product @ 3.0 @ 't/0' ) ) )
      & ( V_ab2
        = ( 'sqrt/1' @ ( $difference @ ( $product @ 8.0 @ 't/0' ) @ ( $product @ 8.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) )
      & ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_ab1 @ ( 'cons/2' @ $real @ V_ab2 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a1_1_question,[])).

thf(a1_2_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( ( $less @ 0.0 @ V_t_dot_0 )
      & ( $less @ V_t_dot_0 @ 1.0 ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_M_dot_0: $real] :
      ( V_M_dot_0
      = ( 'sqrt/1' @ 2.0 ) ) ),
    answer_to(a2_question,[])).

