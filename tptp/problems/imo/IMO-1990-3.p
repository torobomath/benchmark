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
%            Number of atoms       :   16 (   1 equality;   4 variable)
%            Maximal formula depth :   10 (   6 average)
%            Number of connectives :   12 (   0   ~;   0   |;   1   &;  11   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.</2' @ 1 @ V_n )
        & ( 'int.is-divisible-by/2' @ ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_n ) @ 1 ) @ ( 'int.^/2' @ V_n @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 3 ) ),
    answer_to(p_question,[])).
