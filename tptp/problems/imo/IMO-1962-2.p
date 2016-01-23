%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all real numbers $x$ which satisfy the inequality:\[
%% \sqrt{3 - x} - \sqrt{x + 1} > \frac{1}{2}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   0 equality;   4 variable)
%            Maximal formula depth :   10 (   9 average)
%            Number of connectives :   23 (   0   ~;   0   |;   1   &;  22   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( '>/2' @ ( '-/2' @ ( 'sqrt/1' @ ( '-/2' @ 3 @ V_x ) ) @ ( 'sqrt/1' @ ( '+/2' @ V_x @ 1 ) ) ) @ ( '//2' @ 1 @ 2 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ -1 @ V_x_dot_0 )
      & ( '</2' @ V_x_dot_0 @ ( '-/2' @ 1 @ ( '//2' @ ( 'sqrt/1' @ 31 ) @ 8 ) ) ) ) ),
    answer_to(p_question,[])).
