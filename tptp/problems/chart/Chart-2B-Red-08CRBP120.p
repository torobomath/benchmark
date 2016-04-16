%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP120
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (   8 equality;  29 variable)
%            Maximal formula depth :   16 (   9 average)
%            Number of connectives :   83 (   4   ~;   3   |;  14   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   0   ?;  12   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    0 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 1 @ V_m )
                  & ( $lesseq @ V_m @ 1000 )
                  & ( ( 'int.is-divisible-by/2' @ V_m @ 2 )
                    | ( 'int.is-divisible-by/2' @ V_m @ 3 ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 1 @ V_m )
                  & ( $lesseq @ V_m @ 1000 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 5 ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 1 @ V_m )
                  & ( $lesseq @ V_m @ 1000 )
                  & ( ( 'int.is-divisible-by/2' @ V_m @ 2 )
                    | ( 'int.is-divisible-by/2' @ V_m @ 3 )
                    | ( 'int.is-divisible-by/2' @ V_m @ 5 ) ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 1 @ V_m )
                  & ( $lesseq @ V_m @ 1000 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 2 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 3 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 5 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 334167 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 400000 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 367832 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 132668 ) ),
    answer_to(p4_question,[])).

