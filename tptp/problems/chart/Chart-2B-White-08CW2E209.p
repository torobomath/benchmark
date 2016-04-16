%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E209
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   3 equality;  23 variable)
%            Maximal formula depth :   15 (  11 average)
%            Number of connectives :   74 (   0   ~;   1   |;   2   &;  71   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $lesseq @ V_y @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $less @ ( $sum @ ( $uminus @ ( '^/2' @ V_x @ 2.0 ) ) @ 1.0 ) @ V_y ) ) ) )).

thf(p3_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $less @ ( $product @ ( $sum @ ( $sum @ V_x @ V_y ) @ -2.0 ) @ ( $sum @ V_y @ ( $uminus @ ( '^/2' @ V_x @ 2.0 ) ) ) ) @ 0.0 ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $lesseq @ V_y_dot_0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $less @ ( $sum @ ( $uminus @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) @ 1.0 ) @ V_y_dot_0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $less @ 0.0 @ ( $sum @ V_x_dot_0 @ ( $sum @ V_y_dot_0 @ -2.0 ) ) )
          & ( $greater @ 0.0 @ ( $difference @ V_y_dot_0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) )
        | ( ( $greater @ 0.0 @ ( $sum @ V_x_dot_0 @ ( $sum @ V_y_dot_0 @ -2.0 ) ) )
          & ( $less @ 0.0 @ ( $difference @ V_y_dot_0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) ) ),
    answer_to(p3_question,[])).

