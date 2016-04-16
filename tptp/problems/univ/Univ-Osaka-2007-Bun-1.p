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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  155 (  10 equality;  41 variable)
%            Maximal formula depth :   28 (  14 average)
%            Number of connectives :  133 (   2   ~;   0   |;  20   &; 111   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   1   :;   0   =)
%            Number of variables   :   20 (   2 sgn;   0   !;   8   ?;  12   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('k/0_type',type,(
    'k/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $sum @ V_x @ V_k ) ) ) )
        & ( $less @ -2.0 @ ( '2d.x-coord/1' @ V_p ) )
        & ( $less @ ( '2d.x-coord/1' @ V_p ) @ 2.0 )
        & ( $less @ -2.0 @ ( '2d.x-coord/1' @ V_q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_q ) @ 2.0 )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( V_p != V_q ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: $real] :
                  ( '^/2' @ V_x_dot_2 @ 2.0 ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: $real] :
                  ( $sum @ V_x_dot_1 @ 'k/0' ) ) ) )
        & ( $less @ -2.0 @ ( '2d.x-coord/1' @ V_p ) )
        & ( $less @ ( '2d.x-coord/1' @ V_p ) @ 2.0 )
        & ( $less @ -2.0 @ ( '2d.x-coord/1' @ V_q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_q ) @ 2.0 )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( V_p != V_q )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape' @ V_C
                @ ( 'cons/2' @ '2d.Shape' @ V_l
                  @ ( 'cons/2' @ '2d.Shape'
                    @ ( '2d.set-of-cfun/1'
                      @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] : ( V_x_dot_0 = -2.0 ) )
                    @ ( 'cons/2' @ '2d.Shape'
                      @ ( '2d.set-of-cfun/1'
                        @ ^ [V_x: $real,V_y: $real] : ( V_x = 2.0 ) )
                      @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ V_k_dot_0 )
      & ( $less @ V_k_dot_0 @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ 'k/0' )
      & ( $less @ 'k/0' @ 2.0 )
      & ( V_S_dot_0
        = ( $sum @ ( $quotient @ 16.0 @ 3.0 ) @ ( $sum @ ( $uminus @ ( $product @ 4.0 @ 'k/0' ) ) @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ ( 'sqrt/1' @ ( '^/2' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'k/0' ) ) @ 3.0 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

