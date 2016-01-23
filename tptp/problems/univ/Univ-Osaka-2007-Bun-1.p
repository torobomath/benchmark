%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2007, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% Let $C$ be the parabola $y = x^2$ on the $x y$ plane. Let $l$ be the
%% straight line $y = x + k$, where $k$ is a real number.
%%
%% (1) Find the condition that $k$ must satisfy in order that $C$
%% intersects with $l$ at two points in the range of $- 2 < x < 2$.
%%
%% (2) Assuming that $k$ satisfies the condition described in (1),
%% represent the sum $S$ of the areas of the $3$ regions enclosed by
%% $C$, $l$, and the straight lines $x = - 2$ and $x = 2$ by a formula
%% of $k$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   3 equality;  19 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   46 (   1   ~;   0   |;   9   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '^/2' @ V_x_dot_0 @ 2 ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '+/2' @ V_x @ V_k ) ) ) )
        & ( '</2' @ -2 @ ( '2d.x-coord/1' @ V_p ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_p ) @ 2 )
        & ( '</2' @ -2 @ ( '2d.x-coord/1' @ V_q ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_q ) @ 2 )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( V_p != V_q ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) @ V_k_dot_0 )
      & ( '</2' @ V_k_dot_0 @ 2 ) ) ),
    answer_to(p1_question,[])).
