%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   4 equality;  26 variable)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   71 (   1   ~;   1   |;  13   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   0   ?;  12   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   3 pred;    0 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 100 @ V_m )
              & ( $less @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 4 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 100 @ V_m )
              & ( $less @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 100 @ V_m )
              & ( $less @ V_m @ 1000 )
              & ( ( 'int.is-divisible-by/2' @ V_m @ 4 )
                | ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( $is_int @ V_m )
              & ( $lesseq @ 100 @ V_m )
              & ( $less @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 4 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 225 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 150 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 300 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 150 ) ),
    answer_to(p4_question,[])).

