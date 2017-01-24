%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E329
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  118 (  12 equality;  30 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   88 (   0   ~;   0   |;  11   &;  77   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :;   0   =)
%            Number of variables   :   18 (   1 sgn;   0   !;   6   ?;  12   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    4 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.shape-enclosed-by/1'
            @ ( 'cons/2' @ '2d.Shape'
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_0: $real] :
                      ( 'sqrt/1' @ ( $difference @ V_x_dot_0 @ 1.0 ) ) ) )
              @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0'
                @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0'
                  @ ( 'cons/2' @ '2d.Shape'
                    @ ( '2d.graph-of/1'
                      @ ( 'fun/1'
                        @ ^ [V_x: $real] : 1.0 ) )
                    @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_x @ ( $difference @ ( '^/2' @ V_y @ 2.0 ) @ V_y ) )
                & ( $greatereq @ 0.0 @ V_x ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $product @ 2.0 @ V_x ) ) @ V_y )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 )
                & ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ V_y @ 3.0 ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 28.0 @ 15.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 1.0 @ 30.0 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 7.0 @ 6.0 ) @ 'Pi/0' ) ) ),
    answer_to(p3_question,[])).

