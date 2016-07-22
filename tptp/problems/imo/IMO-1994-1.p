%% DOMAIN:    Combinatorics, finite sets
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-11
%%
%% <PROBLEM-TEXT>
%% Let $m$ and $n$ be positive integers. Let $a_1, a_2, ¥ldots, a_m$ be distinct
%% elements of $¥{1, 2, ... , n¥}$ such that whenever $a_i + a_j ¥le n$ for some $i$,
%% $j$, $1 ¥le i ¥le j ¥le m$, there exists $k$, $1 ¥le k ¥le m$, with
%% $a_i + a_j = a_k$. Prove that
%% ¥[
%% ¥frac{a_1 + a_2 + ... + a_m}{m} ¥ge ¥frac{n+1}{2}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  119 (   3 equality;  43 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :  114 (   1   ~;   0   |;  14   &;  95   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   4 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n: $int,V_m: $int,V_an: ( 'ListOf' @ $int )] :
      ( ( ( $greater @ V_m @ 0 )
        & ( $greater @ V_n @ 0 )
        & ( ( 'list-len/1' @ $int @ V_an )
          = V_m )
        & ! [V_i_dot_1: $int] :
            ( ( ( $lesseq @ 1 @ V_i_dot_1 )
              & ( $lesseq @ V_i_dot_1 @ V_m ) )
           => ( ( $lesseq @ 1 @ ( 'nth/2' @ $int @ ( $difference @ V_i_dot_1 @ 1 ) @ V_an ) )
              & ( $lesseq @ ( 'nth/2' @ $int @ ( $difference @ V_i_dot_1 @ 1 ) @ V_an ) @ V_n ) ) )
        & ! [V_i_dot_0: $int,V_j_dot_0: $int] :
            ( ( ( $lesseq @ 1 @ V_i_dot_0 )
              & ( $less @ V_i_dot_0 @ V_j_dot_0 )
              & ( $lesseq @ V_j_dot_0 @ V_m ) )
           => ( ( 'nth/2' @ $int @ ( $difference @ V_i_dot_0 @ 1 ) @ V_an )
             != ( 'nth/2' @ $int @ ( $difference @ V_j_dot_0 @ 1 ) @ V_an ) ) )
        & ! [V_i: $int,V_j: $int] :
            ( ( ( $lesseq @ 1 @ V_i )
              & ( $lesseq @ V_i @ V_j )
              & ( $lesseq @ V_j @ V_m )
              & ( $lesseq @ ( $sum @ ( 'nth/2' @ $int @ ( $difference @ V_i @ 1 ) @ V_an ) @ ( 'nth/2' @ $int @ ( $difference @ V_j @ 1 ) @ V_an ) ) @ V_n ) )
           => ? [V_k: $int] :
                ( ( $lesseq @ 1 @ V_k )
                & ( $lesseq @ V_k @ V_m )
                & ( ( $sum @ ( 'nth/2' @ $int @ ( $difference @ V_i @ 1 ) @ V_an ) @ ( 'nth/2' @ $int @ ( $difference @ V_j @ 1 ) @ V_an ) )
                  = ( 'nth/2' @ $int @ ( $difference @ V_k @ 1 ) @ V_an ) ) ) ) )
     => ( $greatereq @ ( $quotient @ ( $to_rat @ ( 'int.sum/1' @ V_an ) ) @ ( $to_rat @ V_m ) ) @ ( $quotient @ ( $to_rat @ ( $sum @ V_n @ 1 ) ) @ ( $to_rat @ 2 ) ) ) ) )).

