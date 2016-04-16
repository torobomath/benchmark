%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1969, Problem 1
%% SCORE:     5
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% Prove that there are infinitely many natural numbers $a$ with the following
%% property: the number $z = n^4 + a$ is not prime for any natural number $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   11 (   0 equality;   5 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   11 (   1   ~;   0   |;   1   &;   8   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_N: $int] :
    ? [V_a: $int] :
      ( ( $less @ V_N @ V_a )
      & ! [V_n: $int] :
          ( ( 'int.is-natural-number/1' @ V_n )
         => ~ ( 'int.is-prime/1' @ ( $sum @ ( 'int.^/2' @ V_n @ 4 ) @ V_a ) ) ) ) )).

