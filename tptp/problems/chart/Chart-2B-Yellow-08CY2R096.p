%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R096
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   7 equality;  20 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   44 (   0   ~;   1   |;   3   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   4   ?;  10   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $product @ ( $product @ 2.0 @ V_k ) @ V_x ) @ V_y ) @ ( '^/2' @ V_k @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 1.0 @ -8.0 ) @ V_l ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_k: $real,V_l: '2d.Shape',V_D: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $product @ ( $product @ 2.0 @ V_k ) @ V_x ) @ V_y ) @ ( '^/2' @ V_k @ 2.0 ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '2d.on/2' @ V_P @ V_l ) ) )
        & ( '2d.on/2' @ V_Q @ V_D ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( V_k_dot_0 = 2.0 )
      | ( V_k_dot_0 = -4.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $lesseq @ V_y_dot_0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

