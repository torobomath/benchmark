%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1992, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Find all integers $a$, $b$, $c$ with $1 < a < b < c$ such that
%% ¥begin{center}
%% $(a - 1)(b - 1)(c - 1)$ is a divisor of $abc - 1$.
%% ¥end{center}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   3 equality;  17 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   64 (   0   ~;   1   |;   4   &;  59   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int,V_c: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'nil/0' @ $int ) ) ) ) )
        & ( $less @ 1 @ V_a )
        & ( $less @ V_a @ V_b )
        & ( $less @ V_b @ V_c )
        & ( 'int.is-divisible-by/2' @ ( $difference @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) @ 1 ) @ ( $product @ ( $difference @ V_a @ 1 ) @ ( $product @ ( $difference @ V_b @ 1 ) @ ( $difference @ V_c @ 1 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 8 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 15 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p_question,[])).

