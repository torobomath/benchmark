%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E191
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   4 equality;  16 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   53 (   0   ~;   0   |;   0   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   20 (   4 sgn;   0   !;   0   ?;  20   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   4 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $less @ ( $difference @ 2.0 @ ( $product @ 3.0 @ V_x ) ) @ V_y ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $lesseq @ 0.0 @ ( $sum @ ( $sum @ ( $product @ 3.0 @ V_x ) @ ( $uminus @ V_y ) ) @ -5.0 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $less @ V_y @ 3.0 ) ) ) )).

thf(p4_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( $lesseq @ -1.0 @ V_x ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $greater @ V_y_dot_0 @ ( $difference @ 2.0 @ ( $product @ 3.0 @ V_x_dot_0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $greatereq @ ( $difference @ ( $difference @ ( $product @ 3.0 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 5.0 ) @ 0.0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $less @ V_y_dot_0 @ 3.0 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $greatereq @ V_x_dot_0 @ -1.0 ) ),
    answer_to(p4_question,[])).

