%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1977, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive integers. When $a^2 +b^2$ is divided by $a+b$, the
%% quotient is $q$ and the remainder is $r$. Find all pairs $(a, b)$ such that
%% $q^2 + r = 1977$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (  16 equality;  37 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :   84 (   0   ~;   3   |;  13   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_ab: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int,V_q: $int,V_r: $int] :
        ( ( V_ab
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'nil/0' @ $int ) ) ) )
        & ( $less @ 0 @ V_a )
        & ( $less @ 0 @ V_b )
        & ( V_q
          = ( $quotient_f @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( $sum @ V_a @ V_b ) ) )
        & ( V_r
          = ( $remainder_f @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( $sum @ V_a @ V_b ) ) )
        & ( ( $sum @ ( 'int.^/2' @ V_q @ 2 ) @ V_r )
          = 1977 ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $int )] :
    ? [V_ab1: $int,V_ab2: $int] :
      ( ( ( V_ab_dot_0
          = ( 'cons/2' @ $int @ V_ab1 @ ( 'cons/2' @ $int @ V_ab2 @ ( 'nil/0' @ $int ) ) ) )
        & ( V_ab1 = 50 )
        & ( V_ab2 = 37 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ $int @ V_ab1 @ ( 'cons/2' @ $int @ V_ab2 @ ( 'nil/0' @ $int ) ) ) )
        & ( V_ab1 = 50 )
        & ( V_ab2 = 7 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ $int @ V_ab1 @ ( 'cons/2' @ $int @ V_ab2 @ ( 'nil/0' @ $int ) ) ) )
        & ( V_ab1 = 37 )
        & ( V_ab2 = 50 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ $int @ V_ab1 @ ( 'cons/2' @ $int @ V_ab2 @ ( 'nil/0' @ $int ) ) ) )
        & ( V_ab1 = 7 )
        & ( V_ab2 = 50 ) ) ) ),
    answer_to(p_question,[])).

