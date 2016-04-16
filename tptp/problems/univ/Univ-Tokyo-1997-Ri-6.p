%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number.
%%
%% (1) Find the range of $a$ such that there exist $2$ straight lines
%% that are in contact with both the curve $y=\frac{8}{27} x^3$ and the
%% parabola $y=(x+a)^2$, in addition to the $x$ axis.
%%
%% (2) When $a$ is in the range found in (1), represent the area $S$ of
%% the region enclosed by the $2$ tangents and the parabola $y=(x+a)^2$
%% using $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  142 (  14 equality;  49 variable)
%            Maximal formula depth :   24 (  13 average)
%            Number of connectives :  116 (   6   ~;   1   |;  22   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   1   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  12   ?;   8   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_G: '2d.Shape',V_H: '2d.Shape'] :
        ( ( V_G
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $product @ ( $quotient @ 8.0 @ 27.0 ) @ ( '^/2' @ V_x_dot_0 @ 3.0 ) ) ) ) )
        & ( V_H
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( '^/2' @ ( $sum @ V_x @ V_a ) @ 2.0 ) ) ) )
        & ? [V_l1: '2d.Shape',V_l2: '2d.Shape'] :
            ( ( V_l1 != V_l2 )
            & ( V_l1 != '2d.x-axis/0' )
            & ( V_l2 != '2d.x-axis/0' )
            & ( '2d.line-type/1' @ V_l1 )
            & ( '2d.line-type/1' @ V_l2 )
            & ( '2d.tangent/2' @ V_l1 @ V_G )
            & ( '2d.tangent/2' @ V_l1 @ V_H )
            & ( '2d.tangent/2' @ V_l2 @ V_G )
            & ( '2d.tangent/2' @ V_l2 @ V_H ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_H: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ V_H @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_H
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( '^/2' @ ( $sum @ V_x_dot_0 @ 'a/0' ) @ 2.0 ) ) ) )
        & ? [V_G: '2d.Shape',V_p1: '2d.Point',V_p2: '2d.Point',V_q1: '2d.Point',V_q2: '2d.Point'] :
            ( ( V_G
              = ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x: $real] :
                      ( $product @ ( $quotient @ 8.0 @ 27.0 ) @ ( '^/2' @ V_x @ 3.0 ) ) ) ) )
            & ( V_l1
              = ( '2d.line/2' @ V_p1 @ V_q1 ) )
            & ( V_l2
              = ( '2d.line/2' @ V_p2 @ V_q2 ) )
            & ( V_l1 != V_l2 )
            & ( V_l1 != '2d.x-axis/0' )
            & ( V_l2 != '2d.x-axis/0' )
            & ( '2d.tangent/2' @ V_l1 @ V_G )
            & ( '2d.tangent/2' @ V_l1 @ V_H )
            & ( '2d.tangent/2' @ V_l2 @ V_G )
            & ( '2d.tangent/2' @ V_l2 @ V_H ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ 0.0 ) )
      | ( $less @ 0.0 @ V_a_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 16.0 @ 3.0 ) @ ( '^/2' @ ( $sum @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) @ ( $quotient @ 3.0 @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

