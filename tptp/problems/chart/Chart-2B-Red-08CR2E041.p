%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E041
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  124 (  14 equality;  44 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :   92 (   0   ~;   1   |;  17   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  10   ?;  10   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_Q: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( V_Q
          = ( '2d.set-of-cfun/1'
            @ ^ [V_X: $real,V_Y: $real] :
              ? [V_x: $real,V_y: $real] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.union/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_O @ V_A ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_B @ V_O ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
                & ( V_X
                  = ( $sum @ V_x @ V_y ) )
                & ( V_Y
                  = ( $product @ V_x @ V_y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_Q: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( V_Q
          = ( '2d.set-of-cfun/1'
            @ ^ [V_X: $real,V_Y: $real] :
              ? [V_x: $real,V_y: $real] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.triangle/3' @ V_O @ V_A @ V_B ) )
                & ( V_X
                  = ( $sum @ V_x @ V_y ) )
                & ( V_Y
                  = ( $product @ V_x @ V_y ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $lesseq @ 0.0 @ V_x_dot_0 )
          & ( $lesseq @ V_x_dot_0 @ 1.0 )
          & ( V_y_dot_0 = 0.0 ) )
        | ( ( V_x_dot_0 = 1.0 )
          & ( $lesseq @ 0.0 @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ ( $quotient @ 1.0 @ 4.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $lesseq @ 0.0 @ V_x_dot_0 )
        & ( $lesseq @ V_x_dot_0 @ 1.0 )
        & ( $lesseq @ 0.0 @ V_y_dot_0 )
        & ( $lesseq @ V_y_dot_0 @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 4.0 ) ) ) ),
    answer_to(p2_question,[])).

