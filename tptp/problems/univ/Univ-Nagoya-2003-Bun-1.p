%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-30
%%
%% <PROBLEM-TEXT>
%% Let $P$ be the intersection of the side $AB$ and the bisector of the
%% vertex angle $\angle O$ of $\triangle OAB$, and let $Q$ be the foot
%% of the perpendicular drawn from the point $P$ to the straight line
%% $OA$. In the following, define $\vec{a} =\vec{OA}$ and
%% $\vec{b} =\vec{OB}$.
%%
%% (1) Prove that $P$ is the point that internally divides the line
%% segment $AB$ in a ratio of $|\vec{a}| : |\vec{b}|$.
%%
%% (2) Represent the length $OQ$ of the line segment using $\vec{a}$ and
%% $\vec{b}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  108 (   9 equality;  53 variable)
%            Maximal formula depth :   21 (   8 average)
%            Number of connectives :   87 (   0   ~;   0   |;  12   &;  74   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   4   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   4   !;   9   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    3 func;    0 numbers)

include('axioms.ax').

thf('ax/0_type',type,(
    'ax/0': $real )).

thf('ay/0_type',type,(
    'ay/0': $real )).

thf('bx/0_type',type,(
    'bx/0': $real )).

thf('by/0_type',type,(
    'by/0': $real )).

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) )
     => ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_oq: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( V_Q
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_a
          = ( '2d.vec2d/2' @ 'ax/0' @ 'ay/0' ) )
        & ( V_b
          = ( '2d.vec2d/2' @ 'bx/0' @ 'by/0' ) )
        & ( V_oq
          = ( '2d.distance/2' @ V_O @ V_Q ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_oq_dot_0: $real] :
    ? [V_a_dot_0: '2d.Vector',V_b_dot_0: '2d.Vector'] :
      ( ( V_a_dot_0
        = ( '2d.vec2d/2' @ 'ax/0' @ 'ay/0' ) )
      & ( V_b_dot_0
        = ( '2d.vec2d/2' @ 'bx/0' @ 'by/0' ) )
      & ( V_oq_dot_0
        = ( $quotient @ ( $sum @ ( $product @ ( '2d.radius/1' @ V_a_dot_0 ) @ ( '2d.radius/1' @ V_b_dot_0 ) ) @ ( '2d.inner-prod/2' @ V_a_dot_0 @ V_b_dot_0 ) ) @ ( $sum @ ( '2d.radius/1' @ V_a_dot_0 ) @ ( '2d.radius/1' @ V_b_dot_0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

