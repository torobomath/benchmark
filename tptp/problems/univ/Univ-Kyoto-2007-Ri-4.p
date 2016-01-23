%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2007, Science Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Let $\triangle ABC$ be a triangle inscribed in a circle centered at
%% the point $O$, and let $P$, $Q$, and $R$ be the points that
%% internally divide the three sides $AB$, $BC$, and $CA$ of
%% $\triangle ABC$ in a ratio of $2:3$, respectively. When the
%% circumcenter of $\triangle PQR$ is at the point $O$, find what
%% triangle $\triangle ABC$ is.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   2 equality;  23 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :   42 (   0   ~;   0   |;   7   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_x
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ? [V_O: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_O )
            & ( ( '2d.center-of/1' @ V_O )
              = '2d.origin/0' )
            & ( '2d.is-inscribed-in/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
            & ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) @ 2 @ 3 )
            & ( '2d.divide-internally/4' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) @ 2 @ 3 )
            & ( '2d.divide-internally/4' @ V_R @ ( '2d.seg/2' @ V_C @ V_A ) @ 2 @ 3 )
            & ( '2d.is-circumcenter-of/2' @ '2d.origin/0' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( '2d.is-equilateral-triangle/1' @ V_x_dot_0 ) ),
    answer_to(p1_question,[])).
