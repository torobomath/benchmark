%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R159
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   3 equality;  11 variable)
%            Maximal formula depth :   15 (   9 average)
%            Number of connectives :   66 (   0   ~;   0   |;   5   &;  61   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   1   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    1 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( $less @ ( 'int.^/2' @ 8 @ ( $difference @ V_n @ 1 ) ) @ ( 'int.^/2' @ 10 @ 39 ) )
        & ( $lesseq @ ( 'int.^/2' @ 10 @ 39 ) @ ( 'int.^/2' @ 8 @ V_n ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_n: $int] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( $less @ ( 'int.^/2' @ 8 @ ( $difference @ V_n @ 1 ) ) @ ( 'int.^/2' @ 10 @ 39 ) )
        & ( $lesseq @ ( 'int.^/2' @ 10 @ 39 ) @ ( 'int.^/2' @ 8 @ V_n ) )
        & ( V_answer
          = ( 'cons/2' @ $int @ ( 'car/1' @ $int @ ( 'int.int2decimal/1' @ ( 'int.^/2' @ 8 @ V_n ) ) ) @ ( 'cons/2' @ $int @ ( 'last/1' @ $int @ ( 'int.int2decimal/1' @ ( 'int.^/2' @ 8 @ V_n ) ) ) @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 44 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 6 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p2_question,[])).

