%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP119
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   3 equality;  14 variable)
%            Maximal formula depth :   16 (   9 average)
%            Number of connectives :   46 (   0   ~;   0   |;   8   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    1 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( 'int.is-natural-number/1' @ V_m )
              & ( $lesseq @ 200 @ V_m )
              & ( $lesseq @ V_m @ 500 )
              & ( 'int.is-divisible-by/2' @ ( $difference @ V_m @ 5 ) @ 7 )
              & ( 'int.is-divisible-by/2' @ ( $difference @ V_m @ 11 ) @ 13 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_m: $int] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( $lesseq @ 200 @ V_m )
                  & ( $lesseq @ V_m @ 500 )
                  & ( 'int.is-divisible-by/2' @ ( $difference @ V_m @ 5 ) @ 7 )
                  & ( 'int.is-divisible-by/2' @ ( $difference @ V_m @ 11 ) @ 13 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 3 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_s_dot_0: $int] : ( V_s_dot_0 = 1086 ) ),
    answer_to(p2_question,[])).

