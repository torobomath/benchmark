%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE150
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   4 equality;  12 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   33 (   1   ~;   0   |;   6   &;  26   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    0 func;    5 numbers)

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
                  & ( $lesseq @ 10 @ V_m )
                  & ( $less @ V_m @ 100 )
                  & ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 10 @ V_m )
                  & ( $less @ V_m @ 100 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 728 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 4177 ) ),
    answer_to(p2_question,[])).

