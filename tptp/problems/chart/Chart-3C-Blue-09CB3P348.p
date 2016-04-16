%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P348
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   9 equality;  26 variable)
%            Maximal formula depth :   16 (  11 average)
%            Number of connectives :   74 (   0   ~;   0   |;   9   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( '^/2' @ V_x @ 2.0 ) @ V_y )
                & ( $lesseq @ V_y @ ( 'sqrt/1' @ V_x ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ ( $product @ -2.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) @ V_y )
                & ( $lesseq @ V_y @ 0.0 )
                & ( $lesseq @ 0.0 @ V_x ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ -1.0 @ V_y )
                & ( $lesseq @ V_y @ ( 'cos/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 'Pi/0' ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 3.0 @ 10.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 4.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $sum @ ( '^/2' @ 'Pi/0' @ 3.0 ) @ ( $product @ -4.0 @ 'Pi/0' ) ) ) ),
    answer_to(p3_question,[])).

