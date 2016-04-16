%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1987, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-11
%%
%% <PROBLEM-TEXT>
%% Prove that there is no function $f$ from the set of non-negative integers into
%% itself such that $f(f(n)) = n + 1987$ for every $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   2 equality;  11 variable)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   20 (   1   ~;   0   |;   2   &;  14   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   3   !;   1   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ~ ( ? [V_f: ( $int > $int )] :
          ( ! [V_n_dot_1: $int] :
              ( ( $less @ V_n_dot_1 @ 0 )
             => ( ( V_f @ V_n_dot_1 )
                = 0 ) )
          & ! [V_n_dot_0: $int] :
              ( ( $lesseq @ 0 @ V_n_dot_0 )
             => ( $lesseq @ 0 @ ( V_f @ V_n_dot_0 ) ) )
          & ! [V_n: $int] :
              ( ( $lesseq @ 0 @ V_n )
             => ( ( V_f @ ( V_f @ V_n ) )
                = ( $sum @ V_n @ 1987 ) ) ) ) ) )).

