%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    ZF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E042
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   4 equality;  20 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :   47 (   1   ~;   0   |;   4   &;  41   @)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   2   !;   3   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_S: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $product @ 10.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) @ ( $product @ ( $product @ V_k @ V_x_dot_0 ) @ V_y_dot_0 ) ) @ ( $product @ 2.0 @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) ) @ ( $product @ -9.0 @ V_x_dot_0 ) ) @ ( $product @ -4.0 @ V_y_dot_0 ) ) @ 2.0 ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_l1 != V_l2 )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_S )
          <=> ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.union/2' @ V_l1 @ V_l2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: $real] : ( V_k_dot_0 = 9.0 ) ),
    answer_to(p_question,[])).

