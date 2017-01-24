%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E349
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   96 (   8 equality;  24 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   74 (   0   ~;   0   |;   8   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;   2   ?;  11   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_I: $real] :
        ( V_I
        = ( 'integral/3'
          @ ^ [V_x: $real] :
              ( $product @ V_x @ ( 'sin/1' @ V_x ) )
          @ 0.0
          @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_y @ ( $product @ ( $quotient @ 2.0 @ 'Pi/0' ) @ V_x ) )
                & ( $lesseq @ V_y @ ( 'sin/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_W: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_y @ ( $product @ ( $quotient @ 2.0 @ 'Pi/0' ) @ V_x ) )
                & ( $lesseq @ V_y @ ( 'sin/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) ) )
        & ( V_W
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_I_dot_0: $real] : ( V_I_dot_0 = 1.0 ) ),
    answer_to(p1_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $quotient @ ( '^/2' @ 'Pi/0' @ 2.0 ) @ 12.0 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_W_dot_0: $real] :
      ( V_W_dot_0
      = ( $difference @ ( $product @ 2.0 @ 'Pi/0' ) @ ( $quotient @ ( '^/2' @ 'Pi/0' @ 3.0 ) @ 6.0 ) ) ) ),
    answer_to(p2_2_question,[])).

