%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1990, Problem 3
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Determine all integers $n > 1$ such that
%% ¥[
%% ¥frac{2^n + 1}{n^2}
%% ¥]
%% is an integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   17 (   1 equality;   4 variable)
%            Maximal formula depth :   10 (   6 average)
%            Number of connectives :   13 (   0   ~;   0   |;   1   &;  12   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( $less @ 1 @ V_n )
        & ( 'int.is-divisible-by/2' @ ( $sum @ ( 'int.^/2' @ 2 @ V_n ) @ 1 ) @ ( 'int.^/2' @ V_n @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 3 ) ),
    answer_to(p_question,[])).

