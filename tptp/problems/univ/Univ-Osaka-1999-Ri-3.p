%% DOMAIN:    Trigonometric Functions
%% THEORY:    RCF
%% SOURCE:    Osaka University, 1999, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-20
%%
%% <PROBLEM-TEXT>
%% There is a regular hexagon on a plane whose center is at the point
%% $O$ and whose vertices are at the points
%% $A_1, A_2, A_3, A_4, A_5, A_6$. Let $l$ be the straight line that
%% passes through $O$ on the same plane, and let $d_k$ be the distance
%% between each $A_k$ and $l$. Prove that
%% $D = d_1^2 + d_2^2 + d_3^2 + d_4^2 + d_5^2 + d_6^2$ is constant
%% independent of $l$, and find the value of it, where $O A_k = r$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (  15 equality;  56 variable)
%            Maximal formula depth :   37 (  22 average)
%            Number of connectives :   84 (   0   ~;   0   |;  16   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   19 (   1 sgn;   0   !;  15   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_D: 'R'] :
      ? [V_A: '2d.Shape',V_A1: '2d.Point',V_A2: '2d.Point',V_A3: '2d.Point',V_A4: '2d.Point',V_A5: '2d.Point',V_A6: '2d.Point',V_O: '2d.Point',V_l: '2d.Shape',V_d1: 'R',V_d2: 'R',V_d3: 'R',V_d4: 'R',V_d5: 'R',V_d6: 'R'] :
        ( ( V_D
          = ( '+/2' @ ( '^/2' @ V_d1 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_d2 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_d3 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_d4 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_d5 @ 2 ) @ ( '^/2' @ V_d6 @ 2 ) ) ) ) ) ) )
        & ( V_A
          = ( '2d.polygon/1' @ ( 'cons/2' @ V_A1 @ ( 'cons/2' @ V_A2 @ ( 'cons/2' @ V_A3 @ ( 'cons/2' @ V_A4 @ ( 'cons/2' @ V_A5 @ ( 'cons/2' @ V_A6 @ 'nil/0' ) ) ) ) ) ) ) )
        & ( '2d.is-regular-polygon/1' @ V_A )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A1 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A2 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A3 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A4 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A5 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_O @ V_A6 ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_O @ V_l )
        & ( V_d1
          = ( '2d.point-shape-distance/2' @ V_A1 @ V_l ) )
        & ( V_d2
          = ( '2d.point-shape-distance/2' @ V_A2 @ V_l ) )
        & ( V_d3
          = ( '2d.point-shape-distance/2' @ V_A3 @ V_l ) )
        & ( V_d4
          = ( '2d.point-shape-distance/2' @ V_A4 @ V_l ) )
        & ( V_d5
          = ( '2d.point-shape-distance/2' @ V_A5 @ V_l ) )
        & ( V_d6
          = ( '2d.point-shape-distance/2' @ V_A6 @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_D_dot_0: 'R'] :
      ( V_D_dot_0
      = ( '*/2' @ 3 @ ( '^/2' @ V_r @ 2 ) ) ) ),
    answer_to(p1_question,[])).
