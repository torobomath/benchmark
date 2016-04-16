%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P258
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   94 (   8 equality;  24 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   74 (   0   ~;   0   |;  10   &;  64   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( 'cos/1' @ V_x ) @ V_y )
                & ( $lesseq @ V_y @ ( 'sin/1' @ V_x ) )
                & ( $lesseq @ ( $quotient @ 'Pi/0' @ 4.0 ) @ V_x )
                & ( $lesseq @ V_x @ ( $product @ ( $quotient @ 5.0 @ 4.0 ) @ 'Pi/0' ) ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( 'cos/1' @ ( $product @ 2.0 @ V_x ) ) @ V_y )
                & ( $lesseq @ V_y @ ( 'sin/1' @ ( 'abs/1' @ ( $difference @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 'Pi/0' ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 'Pi/0' @ 4.0 ) @ ( $sum @ 'Pi/0' @ 6.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 'Pi/0' @ 8.0 ) @ ( $sum @ ( $product @ 2.0 @ 'Pi/0' ) @ ( $product @ 3.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

