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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   6 equality;  34 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   79 (   0   ~;   0   |;   9   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xe: 'R'] :
      ? [V_a: '2d.Vector',V_b: '2d.Vector',V_e: '2d.Vector',V_x: '2d.Vector'] :
        ( ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ ( '//2' @ 1 @ 2 ) )
        & ( '2d.is-unit-vec/1' @ V_e )
        & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '-/2' @ 1 @ V_t ) @ V_a ) @ ( '2d.sv*/2' @ V_t @ V_b ) )
          = V_e )
        & ( ( '2d.sv*/2' @ ( '-/2' @ 1 @ V_t ) @ ( '2d.v+/2' @ V_a @ V_e ) )
          = ( '2d.sv*/2' @ V_t @ ( '2d.v+/2' @ V_b @ V_e ) ) )
        & ( ( '2d.inner-prod/2' @ ( '2d.v-/2' @ V_x @ V_a ) @ ( '2d.v-/2' @ V_x @ V_b ) )
          = 0 )
        & ( ( '*/2' @ ( '2d.radius/1' @ ( '2d.v-/2' @ V_x @ V_a ) ) @ ( '-/2' @ 1 @ V_t ) )
          = ( '*/2' @ ( '2d.radius/1' @ ( '2d.v-/2' @ V_x @ V_b ) ) @ V_t ) )
        & ( V_xe
          = ( '2d.inner-prod/2' @ V_x @ V_e ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xe_dot_0: 'R'] :
      ( ( V_xe_dot_0
        = ( '//2' @ ( '*/2' @ 2 @ ( '*/2' @ V_t @ ( '-/2' @ 1 @ V_t ) ) ) @ ( '+/2' @ 1 @ ( '+/2' @ ( '*/2' @ -2 @ V_t ) @ ( '*/2' @ 2 @ ( '^/2' @ V_t @ 2 ) ) ) ) ) )
      & ( '</2' @ 0 @ V_t )
      & ( '</2' @ V_t @ ( '//2' @ 1 @ 2 ) ) ) ),
    answer_to(p_question,[])).
