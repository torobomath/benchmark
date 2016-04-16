%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1999, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all pairs $(n, p)$ of positive integers such that
%% ¥begin{flushleft}
%% $p$ is a prime, ¥¥
%% $n$ not exceeded $2p$, and¥¥
%% $(p - 1)^n + 1$ is divisible by $n^{p-1}$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   7 equality;  20 variable)
%            Maximal formula depth :   18 (  14 average)
%            Number of connectives :   50 (   0   ~;   2   |;   8   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_np: ( 'ListOf' @ $int )] :
      ? [V_n: $int,V_p: $int] :
        ( ( $less @ 0 @ V_n )
        & ( $less @ 0 @ V_p )
        & ( V_np
          = ( 'cons/2' @ $int @ V_n @ ( 'cons/2' @ $int @ V_p @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-prime/1' @ V_p )
        & ( $lesseq @ V_n @ ( $product @ 2 @ V_p ) )
        & ( 'int.is-divisible-by/2' @ ( $sum @ ( 'int.^/2' @ ( $difference @ V_p @ 1 ) @ V_n ) @ 1 ) @ ( 'int.^/2' @ V_n @ ( $difference @ V_p @ 1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_np_dot_0: ( 'ListOf' @ $int )] :
    ? [V_n_dot_0: $int,V_p_dot_0: $int] :
      ( ( V_np_dot_0
        = ( 'cons/2' @ $int @ V_n_dot_0 @ ( 'cons/2' @ $int @ V_p_dot_0 @ ( 'nil/0' @ $int ) ) ) )
      & ( ( V_n_dot_0 = 1 )
        | ( ( V_n_dot_0 = 2 )
          & ( V_p_dot_0 = 2 ) )
        | ( ( V_n_dot_0 = 3 )
          & ( V_p_dot_0 = 3 ) ) ) ) ),
    answer_to(p_question,[])).

