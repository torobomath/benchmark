%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R084
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  144 (  12 equality;  59 variable)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :  116 (   0   ~;   2   |;  18   &;  95   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   1   !;  11   ?;  12   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_F: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point'] :
        ( ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $difference @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 1.0 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( '^/2' @ V_r @ 2.0 )
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) ) ) )
        & ( $less @ 0.0 @ V_r )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( '2d.on/2' @ V_S @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( $less @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ( $less @ ( '2d.x-coord/1' @ V_R ) @ ( '2d.x-coord/1' @ V_S ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_F: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $difference @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 1.0 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( '^/2' @ V_r @ 2.0 )
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) ) ) )
        & ( $less @ 0.0 @ V_r )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_F @ V_C ) )
        & ( $less @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ! [V_T: '2d.Point'] :
            ( ( '2d.on/2' @ V_T @ ( '2d.intersection/2' @ V_F @ V_C ) )
           => ( ( V_P = V_T )
              | ( V_Q = V_T )
              | ( V_R = V_T ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( ( $less @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ V_r_dot_0 )
      & ( $less @ V_r_dot_0 @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_r_dot_0: $real] : ( V_r_dot_0 = 1.0 ) ),
    answer_to(p2_question,[])).

