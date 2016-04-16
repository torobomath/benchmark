%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP005
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   4 equality;  28 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   80 (   4   ~;   1   |;  15   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   0   ?;  12   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    0 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 1 @ V_m )
              & ( $lesseq @ V_m @ 100 )
              & ( ( 'int.is-divisible-by/2' @ V_m @ 4 )
                | ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 1 @ V_m )
              & ( $lesseq @ V_m @ 100 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 4 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 1 @ V_m )
              & ( $lesseq @ V_m @ 100 )
              & ( 'int.is-divisible-by/2' @ V_m @ 4 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 1 @ V_m )
              & ( $lesseq @ V_m @ 100 )
              & ~ ( ( 'int.is-divisible-by/2' @ V_m @ 4 )
                  & ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 36 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 64 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 22 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 97 ) ),
    answer_to(p4_question,[])).

