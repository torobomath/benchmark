%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% (a) Find all positive integers $n$ for which $2^n - 1$ is divisible by $7$.
%% (b) Prove that there is no positive integer $n$ for which $2^n + 1$
%% is divisible by $7$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   0 equality;   6 variable)
%            Maximal formula depth :   10 (   8 average)
%            Number of connectives :   26 (   1   ~;   0   |;   2   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   1   !;   0   ?;   2   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( $greater @ V_n @ 0 )
        & ( 'int.is-divisible-by/2' @ ( $difference @ ( 'int.^/2' @ 2 @ V_n ) @ 1 ) @ 7 ) ) )).

thf(p2,conjecture,(
    ! [V_n: $int] :
      ( ( $greater @ V_n @ 0 )
     => ~ ( 'int.is-divisible-by/2' @ ( $sum @ ( 'int.^/2' @ 2 @ V_n ) @ 1 ) @ 7 ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( ( $greater @ V_n_dot_0 @ 0 )
      & ( 'int.is-divisible-by/2' @ V_n_dot_0 @ 3 ) ) ),
    answer_to(p1_question,[])).

