%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P167
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   4 equality;  20 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :   52 (   0   ~;   1   |;   6   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   3   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ 8.0 )
                & ( $lesseq @ 0.0 @ V_y_dot_0 ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
              ? [V_p: $real,V_q: $real] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ V_S )
                & ( V_x
                  = ( $sum @ V_p @ V_q ) )
                & ( V_y
                  = ( $product @ V_p @ V_q ) ) ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
        ( ( $lesseq @ ( $difference @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) @ 4.0 ) @ V_y_dot_1 )
        & ( $lesseq @ V_y_dot_1 @ ( $product @ ( $quotient @ 1.0 @ 4.0 ) @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) )
        & ( ( $lesseq @ 0.0 @ V_x_dot_1 )
          | ( $lesseq @ V_y_dot_1 @ 0.0 ) ) ) ),
    answer_to(p_question,[])).

