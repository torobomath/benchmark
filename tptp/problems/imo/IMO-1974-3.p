%% DOMAIN:    Combinatorics, puzzles and games
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1974, Problem 3
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-27
%%
%% <PROBLEM-TEXT>
%% Prove that the number $\sum_{k=0}^n \binom{2n+1}{2k+1} 2^{3k}$
%% is not divisible by $5$ for any integer $n \geq 0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   0 equality;   5 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   26 (   1   ~;   0   |;   0   &;  24   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   1   !;   0   ?;   1   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n: $int] :
      ( ( $lesseq @ 0 @ V_n )
     => ~ ( 'int.is-divisible-by/2'
          @ ( 'int.sum/1'
            @ ( 'int.finseq/3'
              @ ^ [V_k: $int] :
                  ( $product @ ( 'int.combination/2' @ ( $sum @ ( $product @ 2 @ V_n ) @ 1 ) @ ( $sum @ ( $product @ 2 @ V_k ) @ 1 ) ) @ ( 'int.^/2' @ 2 @ ( $product @ 3 @ V_k ) ) )
              @ 0
              @ V_n ) )
          @ 5 ) ) )).

