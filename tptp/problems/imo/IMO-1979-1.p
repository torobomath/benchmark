%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1979, Problem 1
%% SCORE:     6
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-19
%%
%% <PROBLEM-TEXT>
%% Let $p$ and $q$ be natural numbers such that\[
%% \frac{p}{q} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots - \frac{1}{1318} + \frac{1}{1319}.
%% \]Prove that $p$ is divisible by $1979$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   1 equality;   5 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   21 (   0   ~;   0   |;   0   &;  20   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   2   !;   0   ?;   1   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_p: $int,V_q: $int] :
      ( ( ( $quotient @ V_p @ V_q )
        = ( 'rat.sum/1'
          @ ( 'map/2' @ $int @ $rat
            @ ^ [V_n: $int] :
                ( $product @ ( 'rat.^/2' @ ( $to_rat @ -1 ) @ ( $sum @ V_n @ 1 ) ) @ ( $quotient @ 1 @ V_n ) )
            @ ( 'int.iota/2' @ 1 @ 1319 ) ) ) )
     => ( 'int.is-divisible-by/2' @ V_p @ 1979 ) ) )).

