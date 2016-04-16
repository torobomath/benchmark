%% DOMAIN:    Number Theory, numeral systems
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 1
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% Determine all three-digit numbers $N$ having the property that $N$ is divisible
%% by $11$, and $\frac{N}{11}$ is equal to the sum of the squares of the digits of $N$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   4 equality;  17 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   45 (   0   ~;   1   |;   8   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   1 pred;    3 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_N: $int] :
      ? [V_n1: $int,V_n2: $int,V_n3: $int] :
        ( ( $lesseq @ 1 @ V_n1 )
        & ( $lesseq @ V_n1 @ 9 )
        & ( $lesseq @ 0 @ V_n2 )
        & ( $lesseq @ V_n2 @ 9 )
        & ( $lesseq @ 0 @ V_n3 )
        & ( $lesseq @ V_n3 @ 9 )
        & ( V_N
          = ( $sum @ ( $product @ 100 @ V_n1 ) @ ( $sum @ ( $product @ 10 @ V_n2 ) @ V_n3 ) ) )
        & ( 'int.is-divisible-by/2' @ V_N @ 11 )
        & ( ( $quotient_f @ V_N @ 11 )
          = ( $sum @ ( 'int.^/2' @ V_n1 @ 2 ) @ ( $sum @ ( 'int.^/2' @ V_n2 @ 2 ) @ ( 'int.^/2' @ V_n3 @ 2 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_N_dot_0: $int] :
      ( ( V_N_dot_0 = 550 )
      | ( V_N_dot_0 = 803 ) ) ),
    answer_to(p_question,[])).

