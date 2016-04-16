%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-12
%%
%% <PROBLEM-TEXT>
%% Determine all ordered pairs $(m, n)$ of positive integers such that
%% ¥[
%% ¥frac{n^3 +1}{mn-1}
%% ¥]
%% is an integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  110 (   9 equality;  16 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   92 (   0   ~;   7   |;   3   &;  82   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_l: ( 'ListOf' @ $int )] :
      ? [V_m: $int,V_n: $int] :
        ( ( V_l
          = ( 'cons/2' @ $int @ V_m @ ( 'cons/2' @ $int @ V_n @ ( 'nil/0' @ $int ) ) ) )
        & ( $less @ 0 @ V_m )
        & ( $less @ 0 @ V_n )
        & ( 'int.is-divisible-by/2' @ ( $sum @ ( 'int.^/2' @ V_n @ 3 ) @ 1 ) @ ( $difference @ ( $product @ V_m @ V_n ) @ 1 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_l_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p_question,[])).

