%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P123
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   7 equality;  26 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :   54 (   1   ~;   1   |;   5   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   1   !;   4   ?;   6   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( $product @ 2.0 @ V_x_dot_0 ) ) @ ( $product @ -4.0 @ V_y_dot_0 ) ) @ 1.0 ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $difference @ ( $product @ 2.0 @ V_x ) @ V_k ) ) ) )
        & ? [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( V_P != V_Q )
            & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_C @ V_l ) )
            & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_C @ V_l ) )
            & ! [V_R: '2d.Point'] :
                ( ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_C @ V_l ) )
               => ( ( V_P = V_R )
                  | ( V_Q = V_R ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( $less @ ( $sum @ ( $sum @ ( '^/2' @ V_k_dot_0 @ 2.0 ) @ ( $product @ 8.0 @ V_k_dot_0 ) ) @ -4.0 ) @ 0.0 ) ),
    answer_to(p_question,[])).

