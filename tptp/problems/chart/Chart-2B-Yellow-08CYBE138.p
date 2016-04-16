%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE138
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   51 (   3   ~;   1   |;   7   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   0   ?;   9   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    0 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_sum1: $int] :
        ( V_sum1
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( $lesseq @ 1 @ V_n )
                  & ( $less @ V_n @ 200 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_sum2: $int] :
        ( V_sum2
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( $lesseq @ 1 @ V_n )
                  & ( $less @ V_n @ 200 )
                  & ( ( 'int.is-divisible-by/2' @ V_n @ 3 )
                    | ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_sum3: $int] :
        ( V_sum3
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( $lesseq @ 1 @ V_n )
                  & ( $less @ V_n @ 200 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 3 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_sum1_dot_0: $int] : ( V_sum1_dot_0 = 16000 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_sum2_dot_0: $int] : ( V_sum2_dot_0 = 9168 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_sum3_dot_0: $int] : ( V_sum3_dot_0 = 10732 ) ),
    answer_to(p3_question,[])).

