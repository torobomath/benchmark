%% DOMAIN:    Number Theory, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% For any positive integer $n$, let $d(n)$ denote the number of positive divisors of
%% $n$ (including $1$ and $n$ itself). Determine all positive integers $k$ such that
%% $¥frac{d(n^2)}{d(n)} = k$ for some $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   2 equality;  10 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   18 (   0   ~;   0   |;   2   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_k: $int] :
      ? [V_n: $int,V_d: ( $int > $int )] :
        ( ( V_d
          = ( ^ [V_n_dot_0: $int] :
                ( 'int.cardinality-of/1'
                @ ( 'set-by-def/1' @ $int
                  @ ^ [V_k_dot_0: $int] :
                      ( ( $lesseq @ 1 @ V_k_dot_0 )
                      & ( 'int.is-divisible-by/2' @ V_n_dot_0 @ V_k_dot_0 ) ) ) ) ) )
        & ( ( $product @ V_k @ ( V_d @ V_n ) )
          = ( V_d @ ( 'int.^/2' @ V_n @ 2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m: $int] :
      ( 'int.is-odd-number/1' @ V_m ) ),
    answer_to(p_question,[])).

