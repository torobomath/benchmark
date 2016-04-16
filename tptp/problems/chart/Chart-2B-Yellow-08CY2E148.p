%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E148
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   42 (   4 equality;  12 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   32 (   0   ~;   0   |;   2   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( $product @ -4.0 @ V_x_dot_0 ) ) @ ( $product @ -6.0 @ V_y_dot_0 ) ) @ 9.0 ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $sum @ ( $product @ V_k @ V_x ) @ 2.0 ) ) ) )
        & ( '2d.intersect/2' @ V_C @ V_l ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( $lesseq @ ( $quotient @ -3.0 @ 4.0 ) @ V_k_dot_0 ) ),
    answer_to(p_question,[])).

