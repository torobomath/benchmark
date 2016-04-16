%% DOMAIN:    Number Theory, divisors and multiples
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 1
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-09
%%
%% <PROBLEM-TEXT>
%% Prove that the fraction
%% $\frac{21n+4}{14n+3}$
%% is irreducible for every natural number $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   13 (   0 equality;   3 variable)
%            Maximal formula depth :    9 (   9 average)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &;  11   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    1 (   0 sgn;   1   !;   0   ?;   0   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n: $int] :
      ( ( 'int.is-natural-number/1' @ V_n )
     => ( 'int.are-coprime/2' @ ( $sum @ ( $product @ 21 @ V_n ) @ 4 ) @ ( $sum @ ( $product @ 14 @ V_n ) @ 3 ) ) ) )).

