%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R096
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  124 (   3 equality;  27 variable)
%            Maximal formula depth :   15 (  13 average)
%            Number of connectives :  112 (   0   ~;   0   |;   6   &; 106   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $less @ 0.0 @ ( $sum @ V_x @ V_y ) )
              & ( $less @ 0.0 @ ( $sum @ ( $product @ 2.0 @ V_x ) @ ( $sum @ ( $uminus @ V_y ) @ 2.0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $less @ ( $sum @ V_x @ ( $sum @ ( $product @ 2.0 @ V_y ) @ 2.0 ) ) @ 0.0 )
              & ( $lesseq @ 4.0 @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $lesseq @ 1.0 @ ( $sum @ ( '^/2' @ ( $difference @ V_x @ 2.0 ) @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) )
              & ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ 4.0 ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $less @ 0.0 @ ( $sum @ V_x_dot_0 @ V_y_dot_0 ) )
        & ( $less @ 0.0 @ ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ ( $sum @ ( $uminus @ V_y_dot_0 ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $less @ ( $sum @ V_x_dot_0 @ ( $sum @ ( $product @ 2.0 @ V_y_dot_0 ) @ 2.0 ) ) @ 0.0 )
        & ( $lesseq @ 4.0 @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $lesseq @ 1.0 @ ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 2.0 ) @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) )
        & ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ 4.0 ) ) ),
    answer_to(p3_question,[])).

