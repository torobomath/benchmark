%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% For what values of the variable $x$ does the following inequality hold:\[
%% \frac{4x^2}{(1 - \sqrt{1 + 2x})^2} < 2x + 9?
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   1 equality;   6 variable)
%            Maximal formula depth :   13 (  11 average)
%            Number of connectives :   34 (   1   ~;   0   |;   2   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( '</2' @ ( '//2' @ ( '*/2' @ 4 @ ( '^/2' @ V_x @ 2 ) ) @ ( '^/2' @ ( '-/2' @ 1 @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_x ) ) ) ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ 9 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( V_x_dot_0 != 0 )
      & ( '<=/2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ V_x_dot_0 )
      & ( '</2' @ V_x_dot_0 @ ( '//2' @ 45 @ 8 ) ) ) ),
    answer_to(p_question,[])).
