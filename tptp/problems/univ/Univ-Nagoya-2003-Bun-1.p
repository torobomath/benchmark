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

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (   9 equality;  61 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :   86 (   0   ~;   0   |;  12   &;  73   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   23 (   8 sgn;   4   !;   9   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) )
     => ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_oq: 'R'] :
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
          = ( '2d.vec2d/2' @ V_ax @ V_ay ) )
        & ( V_b
          = ( '2d.vec2d/2' @ V_bx @ V_by ) )
        & ( V_oq
          = ( '2d.distance/2' @ V_O @ V_Q ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_oq_dot_0: 'R'] :
    ? [V_a_dot_0: '2d.Vector',V_b_dot_0: '2d.Vector'] :
      ( ( V_a_dot_0
        = ( '2d.vec2d/2' @ V_ax @ V_ay ) )
      & ( V_b_dot_0
        = ( '2d.vec2d/2' @ V_bx @ V_by ) )
      & ( V_oq_dot_0
        = ( '//2' @ ( '+/2' @ ( '*/2' @ ( '2d.radius/1' @ V_a_dot_0 ) @ ( '2d.radius/1' @ V_b_dot_0 ) ) @ ( '2d.inner-prod/2' @ V_a_dot_0 @ V_b_dot_0 ) ) @ ( '+/2' @ ( '2d.radius/1' @ V_a_dot_0 ) @ ( '2d.radius/1' @ V_b_dot_0 ) ) ) ) ) ),
    answer_to(p2_question,[])).
