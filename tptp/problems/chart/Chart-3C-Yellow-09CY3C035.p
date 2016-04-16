%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C035
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   42 (   0   ~;   0   |;   7   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   8   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ V_y @ ( 'sqrt/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ 1.0 @ V_x )
                & ( $lesseq @ V_x @ 2.0 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_C1 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_y @ ( 'sqrt/1' @ V_x ) )
                & ( $lesseq @ V_y @ 2.0 )
                & ( $greatereq @ V_x @ 0.0 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_C1 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ ( $difference @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 8.0 @ 3.0 ) ) ),
    answer_to(p2_question,[])).

