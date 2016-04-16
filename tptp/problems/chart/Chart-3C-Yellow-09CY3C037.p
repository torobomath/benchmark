%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C037
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   6 equality;  17 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   46 (   0   ~;   0   |;   6   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   8   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ V_y @ ( 'exp/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( $difference @ ( '^/2' @ V_x @ 2.0 ) @ V_x ) @ V_y )
                & ( $lesseq @ V_y @ 0.0 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 'Pi/0' @ 2.0 ) @ ( $difference @ ( 'exp/1' @ 2.0 ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $quotient @ 'Pi/0' @ 30.0 ) ) ),
    answer_to(p2_question,[])).

