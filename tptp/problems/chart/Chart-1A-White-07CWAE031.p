%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE031
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  171 (  15 equality;  67 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :  144 (   9   ~;   0   |;  40   &;  95   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;   9   ?;   9   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   3 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n_dot_0: $int] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_n_dot_0
                = ( $sum @ ( $sum @ ( $product @ 100 @ V_x ) @ ( $product @ 10 @ V_y ) ) @ V_z ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $lesseq @ V_x @ 7 )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $lesseq @ V_y @ 7 )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( $lesseq @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( $greatereq @ V_n_dot_0 @ 100 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n_dot_0: $int] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_n_dot_0
                = ( $sum @ ( $sum @ ( $product @ 100 @ V_x ) @ ( $product @ 10 @ V_y ) ) @ V_z ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $lesseq @ V_x @ 7 )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $lesseq @ V_y @ 7 )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( $lesseq @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( 'int.is-odd-number/1' @ V_x )
              & ( 'int.is-odd-number/1' @ V_z ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n_dot_0: $int] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_n_dot_0
                = ( $sum @ ( $sum @ ( $product @ 100 @ V_x ) @ ( $product @ 10 @ V_y ) ) @ V_z ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $lesseq @ V_x @ 7 )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $lesseq @ V_y @ 7 )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( $lesseq @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( 'int.is-odd-number/1' @ V_n_dot_0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_1: $int] : ( V_n_dot_1 = 180 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_1: $int] : ( V_n_dot_1 = 30 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_1: $int] : ( V_n_dot_1 = 75 ) ),
    answer_to(p3_question,[])).

