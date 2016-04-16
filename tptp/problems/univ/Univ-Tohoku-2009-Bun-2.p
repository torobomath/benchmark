%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Consider the triangle $\triangle ABC$ of which the length of the side
%% $AB$ is $1$, and $\angle A$ is the right angle. Consider the point
%% $D$ that moves on the side $BC$ from the point $C$ to the point $B$,
%% and let $t$ be the inner product $\vec{AD}\cdot\vec{AB}$. Answer the
%% following questions:
%%
%% (1) Find the moving range of $t$.
%%
%% (2) When $\vec{AD}\cdot\vec{AC} =\vec{CD}\cdot\vec{CA}$ is true, find
%% the value of $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   88 (   6 equality;  43 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :   72 (   0   ~;   0   |;  10   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( V_t
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.is-right-triangle/3' @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_C ) )
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_C @ V_D ) @ ( '2d.vec/2' @ V_C @ V_A ) ) )
        & ( V_t
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ V_t_dot_0 )
      & ( $lesseq @ V_t_dot_0 @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

