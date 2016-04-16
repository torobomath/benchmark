%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1984, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Find one pair of positive integers $a$ and $b$ such that:
%% ¥begin{flushleft}
%% (i) $ab(a + b)$ is not divisible by $7$;¥¥
%% (ii) $(a + b)^7 - a^7 - b^7$ is divisible by $7^7$.
%% ¥end{flushleft}
%% Justify your answer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   0 equality;  10 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   32 (   1   ~;   0   |;   3   &;  28   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   2   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_a: $int,V_b: $int] :
      ( ( $greater @ V_a @ 0 )
      & ( $greater @ V_b @ 0 )
      & ~ ( 'int.is-divisible-by/2' @ ( $product @ V_a @ ( $product @ V_b @ ( $sum @ V_a @ V_b ) ) ) @ 7 )
      & ( 'int.is-divisible-by/2' @ ( $difference @ ( $difference @ ( 'int.^/2' @ ( $sum @ V_a @ V_b ) @ 7 ) @ ( 'int.^/2' @ V_a @ 7 ) ) @ ( 'int.^/2' @ V_b @ 7 ) ) @ ( 'int.^/2' @ 7 @ 7 ) ) ) )).

