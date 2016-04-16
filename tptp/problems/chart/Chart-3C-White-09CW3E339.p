%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E339
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   6 equality;  17 variable)
%            Maximal formula depth :   19 (  13 average)
%            Number of connectives :   70 (   0   ~;   0   |;   5   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    4 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: ( $real > $real )] :
        ( ( V_f
          = ( ^ [V_x: $real] :
                ( $product @ V_x @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ ( 'sqrt/1' @ ( '^/2' @ ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ 2.0 ) @ 3.0 ) ) ) ) ) )
        & ( V_S
          = ( 'integral/3' @ V_f @ 0.0 @ 1.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_y @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ ( 'sqrt/1' @ ( '^/2' @ ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ 2.0 ) @ 3.0 ) ) ) )
                & ( $greatereq @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 9.0 ) @ V_y )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C1 ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 4.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 6.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $difference @ ( $quotient @ ( $product @ 4.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 9.0 ) @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

