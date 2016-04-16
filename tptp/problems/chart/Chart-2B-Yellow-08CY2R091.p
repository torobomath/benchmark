%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R091
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  110 (   3 equality;  27 variable)
%            Maximal formula depth :   15 (  13 average)
%            Number of connectives :   98 (   0   ~;   0   |;   6   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    3 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $less @ ( $sum @ ( $sum @ V_x @ ( $product @ -3.0 @ V_y ) ) @ -9.0 ) @ 0.0 )
              & ( $less @ 0.0 @ ( $sum @ ( $sum @ ( $product @ 2.0 @ V_x ) @ ( $product @ 3.0 @ V_y ) ) @ -6.0 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ 9.0 )
              & ( $less @ ( $difference @ V_x @ V_y ) @ 3.0 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( $lesseq @ V_y @ ( $sum @ V_x @ 1.0 ) )
              & ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ -1.0 ) @ V_y ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $less @ ( $sum @ ( $sum @ V_x_dot_0 @ ( $product @ -3.0 @ V_y_dot_0 ) ) @ -9.0 ) @ 0.0 )
        & ( $less @ 0.0 @ ( $sum @ ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ ( $product @ 3.0 @ V_y_dot_0 ) ) @ -6.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ 9.0 )
        & ( $less @ ( $difference @ V_x_dot_0 @ V_y_dot_0 ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $lesseq @ V_y_dot_0 @ ( $sum @ V_x_dot_0 @ 1.0 ) )
        & ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ -1.0 ) @ V_y_dot_0 ) ) ),
    answer_to(p3_question,[])).

