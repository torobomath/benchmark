%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Find all real roots of the equation\[
%% \sqrt{x^2 - p} + 2 \sqrt{x^2 - 1} = x,
%% \]where $p$ is a real parameter.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   2 equality;   9 variable)
%            Maximal formula depth :   11 (  10 average)
%            Number of connectives :   32 (   0   ~;   0   |;   2   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    4 (   1 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '+/2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_x @ 2 ) @ V_p ) ) @ ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_x @ 2 ) @ 1 ) ) ) )
        = V_x ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ V_p @ ( '//2' @ 4 @ 3 ) )
      & ( '<=/2' @ 0 @ V_p )
      & ( V_x_dot_0
        = ( '//2' @ ( '-/2' @ 4 @ V_p ) @ ( 'sqrt/1' @ ( '*/2' @ 8 @ ( '-/2' @ 2 @ V_p ) ) ) ) ) ) ),
    answer_to(p_question,[])).
