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

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  124 (  15 equality;  49 variable)
%            Maximal formula depth :   37 (  15 average)
%            Number of connectives :   92 (   0   ~;   0   |;  16   &;  76   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   1   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  15   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_D: $real] :
      ? [V_A: '2d.Shape',V_A1: '2d.Point',V_A2: '2d.Point',V_A3: '2d.Point',V_A4: '2d.Point',V_A5: '2d.Point',V_A6: '2d.Point',V_O: '2d.Point',V_l: '2d.Shape',V_d1: $real,V_d2: $real,V_d3: $real,V_d4: $real,V_d5: $real,V_d6: $real] :
        ( ( V_D
          = ( $sum @ ( '^/2' @ V_d1 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_d2 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_d3 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_d4 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_d5 @ 2.0 ) @ ( '^/2' @ V_d6 @ 2.0 ) ) ) ) ) ) )
        & ( V_A
          = ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A1 @ ( 'cons/2' @ '2d.Point' @ V_A2 @ ( 'cons/2' @ '2d.Point' @ V_A3 @ ( 'cons/2' @ '2d.Point' @ V_A4 @ ( 'cons/2' @ '2d.Point' @ V_A5 @ ( 'cons/2' @ '2d.Point' @ V_A6 @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) )
        & ( '2d.is-regular-polygon/1' @ V_A )
        & ( 'r/0'
          = ( '2d.distance/2' @ V_O @ V_A1 ) )
        & ( 'r/0'
          = ( '2d.distance/2' @ V_O @ V_A2 ) )
        & ( 'r/0'
          = ( '2d.distance/2' @ V_O @ V_A3 ) )
        & ( 'r/0'
          = ( '2d.distance/2' @ V_O @ V_A4 ) )
        & ( 'r/0'
          = ( '2d.distance/2' @ V_O @ V_A5 ) )
        & ( 'r/0'
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
    ^ [V_D_dot_0: $real] :
      ( V_D_dot_0
      = ( $product @ 3.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

