%% DOMAIN:    Number Theory, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% We call a positive integer <i>alternating</i> if every two consecutive
%% digits in its decimal representation are of different parity.
%% Find all positive integers n such that n has a multiple which is alternating.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   40 (   2 equality;  13 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   37 (   2   ~;   0   |;   4   &;  30   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   1   !;   2   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( $less @ 0 @ V_n )
        & ? [V_m: $int,V_digits: ( 'ListOf' @ $int )] :
            ( ( 'int.is-divisible-by/2' @ V_m @ V_n )
            & ( V_digits
              = ( 'int.int2decimal/1' @ V_m ) )
            & ! [V_k: $int] :
                ( ( ( $lesseq @ 0 @ V_k )
                  & ( $less @ ( $sum @ V_k @ 1 ) @ ( 'list-len/1' @ $int @ V_digits ) ) )
               => ( ( $remainder_f @ ( 'nth/2' @ $int @ V_k @ V_digits ) @ 2 )
                 != ( $remainder_f @ ( 'nth/2' @ $int @ ( $sum @ V_k @ 1 ) @ V_digits ) @ 2 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ~ ( 'int.is-divisible-by/2' @ V_n_dot_0 @ 20 ) ),
    answer_to(p_question,[])).

