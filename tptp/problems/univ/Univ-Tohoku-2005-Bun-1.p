%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $0 < t <\frac{1}{2}$, and assume that the planar vectors
%% $\vec{a}$, $\vec{b}$, and the unit vector $\vec{e}$ satisfy (i)
%% $(1 - t)\vec{a} + t\vec{b} =\vec{e}$(ii)
%% $(1 - t)(\vec{a} +\vec{e})= t(\vec{b} +\vec{e})$. Also, for the
%% planar vector $\vec{x}$, assume that $\vec{x} -\vec{a}$ and
%% $\vec{x} -\vec{b}$ are perpendicular to each other and the ratio of
%% the lengths of them. Represent the inner product
%% $\vec{x}\cdot\vec{e}$ using $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   94 (   6 equality;  20 variable)
%            Maximal formula depth :   20 (  11 average)
%            Number of connectives :   80 (   0   ~;   0   |;   9   &;  71   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   1   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_xe: $real] :
      ? [V_a: '2d.Vector',V_b: '2d.Vector',V_e: '2d.Vector',V_x: '2d.Vector'] :
        ( ( $less @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( '2d.is-unit-vec/1' @ V_e )
        & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $difference @ 1.0 @ 't/0' ) @ V_a ) @ ( '2d.sv*/2' @ 't/0' @ V_b ) )
          = V_e )
        & ( ( '2d.sv*/2' @ ( $difference @ 1.0 @ 't/0' ) @ ( '2d.v+/2' @ V_a @ V_e ) )
          = ( '2d.sv*/2' @ 't/0' @ ( '2d.v+/2' @ V_b @ V_e ) ) )
        & ( ( '2d.inner-prod/2' @ ( '2d.v-/2' @ V_x @ V_a ) @ ( '2d.v-/2' @ V_x @ V_b ) )
          = 0.0 )
        & ( ( $product @ ( '2d.radius/1' @ ( '2d.v-/2' @ V_x @ V_a ) ) @ ( $difference @ 1.0 @ 't/0' ) )
          = ( $product @ ( '2d.radius/1' @ ( '2d.v-/2' @ V_x @ V_b ) ) @ 't/0' ) )
        & ( V_xe
          = ( '2d.inner-prod/2' @ V_x @ V_e ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xe_dot_0: $real] :
      ( ( V_xe_dot_0
        = ( $quotient @ ( $product @ 2.0 @ ( $product @ 't/0' @ ( $difference @ 1.0 @ 't/0' ) ) ) @ ( $sum @ 1.0 @ ( $sum @ ( $product @ -2.0 @ 't/0' ) @ ( $product @ 2.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) ) )
      & ( $less @ 0.0 @ 't/0' )
      & ( $less @ 't/0' @ ( $quotient @ 1.0 @ 2.0 ) ) ) ),
    answer_to(p_question,[])).

