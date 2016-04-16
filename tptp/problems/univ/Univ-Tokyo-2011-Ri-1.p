%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-02-18
%%
%% <PROBLEM-TEXT>
%% On the coordinate plane, let $C$ be the circle with the center at the
%% point $P(0, 1)$ and the radius $1$. Let $a$ be the real number that
%% satisfies $0<a<1$, and $Q$ and $R$, the intersections of the straight
%% lines $y=a(x + 1)$ and $C$.
%%
%% (1) Find the area $S(a)$ of $\triangle PQR$.
%%
%% (2) When $a$ moves in the range of $0<a<1$, find $a$ that gives the
%% maximum value of $S(a)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   74 (   6 equality;  19 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :   61 (   1   ~;   0   |;  12   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   1   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(a1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_P: '2d.Point',V_C: '2d.Shape',V_l: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( V_C
          = ( '2d.circle/2' @ V_P @ 1.0 ) )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( V_l
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ V_R @ V_C )
        & ( V_Q != V_R )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(a1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( V_S_dot_0
        = ( $quotient @ ( $product @ ( 'sqrt/1' @ ( $product @ 2.0 @ 'a/0' ) ) @ ( $difference @ 1.0 @ 'a/0' ) ) @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ 1.0 ) ) )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 ) ) ),
    answer_to(a1_question,[])).

