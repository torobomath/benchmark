%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2005, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Determine all positive integers relatively prime to all the terms
%% of the infinite sequence
%% a_n = 2^n + 3^n + 6^n - 1, n >= 1.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   2 equality;   6 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   19 (   0   ~;   0   |;   0   &;  18   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   1   !;   0   ?;   2   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_a: $int] :
      ! [V_n: $int] :
        ( ( $greatereq @ V_n @ 1 )
       => ( ( 'int.gcd/2' @ V_a @ ( $sum @ ( 'int.^/2' @ 2 @ V_n ) @ ( $sum @ ( 'int.^/2' @ 3 @ V_n ) @ ( $sum @ ( 'int.^/2' @ 6 @ V_n ) @ -1 ) ) ) )
          = 1 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $int] : ( V_a_dot_0 = 1 ) ),
    answer_to(p_question,[])).

