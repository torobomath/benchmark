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
%            Number of atoms       :   56 (   3 equality;  17 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   50 (   0   ~;   1   |;   4   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( 'int.</2' @ 1 @ V_a )
        & ( 'int.</2' @ V_a @ V_b )
        & ( 'int.</2' @ V_b @ V_c )
        & ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ ( 'int.*/2' @ V_a @ ( 'int.*/2' @ V_b @ V_c ) ) @ 1 ) @ ( 'int.*/2' @ ( 'int.-/2' @ V_a @ 1 ) @ ( 'int.*/2' @ ( 'int.-/2' @ V_b @ 1 ) @ ( 'int.-/2' @ V_c @ 1 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 8 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 5 @ ( 'cons/2' @ 15 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
