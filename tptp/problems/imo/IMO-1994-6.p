%% DOMAIN:    Combinatorics, finite sets
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-12
%%
%% <PROBLEM-TEXT>
%% Show that there exists a set $A$ of positive integers with the following property:
%% For any in finite set $S$ of primes there exist two positive integers $m ¥in A$
%% and $n ¥in A$ each of which is a product of $k$ distinct elements of $S$ for some
%% $k ¥ge 2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   3 equality;  17 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   28 (   2   ~;   0   |;   7   &;  18   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   1   !;   6   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_A: ( 'SetOf' @ $int )] :
      ( ! [V_e: $int] :
          ( ( 'elem/2' @ $int @ V_e @ V_A )
         => ( $greater @ V_e @ 0 ) )
      & ? [V_k: $int,V_p: $int,V_q: $int,V_m: $int,V_n: $int] :
          ( ( 'int.is-prime/1' @ V_p )
          & ( 'int.is-prime/1' @ V_q )
          & ( V_p != V_q )
          & ( 'elem/2' @ $int @ V_m @ V_A )
          & ~ ( 'elem/2' @ $int @ V_n @ V_A )
          & ( V_m
            = ( $product @ V_k @ V_p ) )
          & ( V_n
            = ( $product @ V_k @ V_q ) ) ) ) )).

