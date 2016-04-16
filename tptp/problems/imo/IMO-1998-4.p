%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% Determine all pairs $(a, b)$ of positive integers such that $ab^2 + b + 7$ divides
%% $a^2 b + a + b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   4 equality;  15 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   60 (   0   ~;   2   |;   1   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_lp: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int] :
        ( ( V_lp
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-divisible-by/2' @ ( $sum @ ( $product @ ( 'int.^/2' @ V_a @ 2 ) @ V_b ) @ ( $sum @ V_a @ V_b ) ) @ ( $sum @ ( $product @ V_a @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( $sum @ V_b @ 7 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_lp_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_lp_dot_0
        = ( 'cons/2' @ $int @ 11 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_lp_dot_0
        = ( 'cons/2' @ $int @ 49 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ? [V_k: $int] :
          ( V_lp_dot_0
          = ( 'cons/2' @ $int @ ( $product @ 7 @ ( 'int.^/2' @ V_k @ 2 ) ) @ ( 'cons/2' @ $int @ ( $product @ 7 @ V_k ) @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p_question,[])).

