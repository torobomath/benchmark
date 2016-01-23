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
%            Number of atoms       :   86 (   6 equality;  43 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :   70 (   0   ~;   0   |;  10   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( V_t
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.is-right-triangle/3' @ V_A @ V_B @ V_C )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_C ) )
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_C @ V_D ) @ ( '2d.vec/2' @ V_C @ V_A ) ) )
        & ( V_t
          = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_A @ V_D ) @ ( '2d.vec/2' @ V_A @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_t_dot_0 )
      & ( '<=/2' @ V_t_dot_0 @ 1 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p2_question,[])).
