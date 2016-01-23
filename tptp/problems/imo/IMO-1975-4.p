%% DOMAIN:    Number Theory, number theory
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1975, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-22
%%
%% <PROBLEM-TEXT>
%% When $4444^{4444}$ is written in decimal notation, the sum of its digits is $A$.
%% Let $B$ be the sum of the digits of $A$. Find the sum of the digits of $B$.
%% ($A$ and $B$ are written in decimal notation.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   21 (   4 equality;   6 variable)
%            Maximal formula depth :   11 (   7 average)
%            Number of connectives :   11 (   0   ~;   0   |;   2   &;   9   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
      ? [V_A: 'Z',V_B: 'Z'] :
        ( ( V_A
          = ( 'int.sum/1' @ ( 'int.int2decimal/1' @ ( 'int.^/2' @ 4444 @ 4444 ) ) ) )
        & ( V_B
          = ( 'int.sum/1' @ ( 'int.int2decimal/1' @ V_A ) ) )
        & ( V_n
          = ( 'int.sum/1' @ ( 'int.int2decimal/1' @ V_B ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 7 ) ),
    answer_to(p_question,[])).
