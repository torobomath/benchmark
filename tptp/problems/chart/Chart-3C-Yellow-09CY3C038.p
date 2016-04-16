%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C038
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   89 (   9 equality;  22 variable)
%            Maximal formula depth :   15 (  11 average)
%            Number of connectives :   65 (   0   ~;   0   |;   7   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_x @ ( $difference @ ( '^/2' @ V_y @ 2.0 ) @ 1.0 ) )
                & ( $lesseq @ V_x @ 0.0 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_y: $real,V_x: $real] :
                ( ( $greatereq @ V_y @ ( $difference @ ( '^/2' @ V_x @ 2.0 ) @ 1.0 ) )
                & ( $lesseq @ V_y @ 0.0 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ V_y @ 2.0 )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( 'sqrt/1' @ ( $sum @ V_y @ 1.0 ) ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 16.0 @ 15.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p1_1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 16.0 @ 15.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 9.0 @ 2.0 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

