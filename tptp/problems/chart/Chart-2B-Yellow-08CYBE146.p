%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE146
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   6 equality;  10 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   27 (   0   ~;   0   |;   4   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_C: $int] :
        ( V_C
        = ( 'int.cardinality-of/1'
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_n: $int] :
                ( ( $lesseq @ 10 @ V_n )
                & ( $lesseq @ V_n @ 99 )
                & ( ( $remainder_f @ V_n @ 6 )
                  = 2 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_S: $int] :
        ( V_S
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( $lesseq @ 10 @ V_n )
                  & ( $lesseq @ V_n @ 99 )
                  & ( ( $remainder_f @ V_n @ 6 )
                    = 2 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S: $int] : ( V_S = 15 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C: $int] : ( V_C = 840 ) ),
    answer_to(p2_question,[])).

