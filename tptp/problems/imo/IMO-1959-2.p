%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 2
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-09
%%
%% <PROBLEM-TEXT>
%% For what real values of $x$ is\[
%% \sqrt{x + \sqrt{2x - 1}} + \sqrt{x - \sqrt{2x - 1}} = A,
%% \]given (a) $A = \sqrt{2}$, (b) $A = 1$, (c) $A = 2$, where only non-negative real
%% numbers are admitted for square roots?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   5 equality;  18 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   76 (   0   ~;   0   |;   4   &;  72   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    6 (   1 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ 0 @ V_x )
        & ( ( '+/2' @ ( 'sqrt/1' @ ( '+/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) @ ( 'sqrt/1' @ ( '-/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) )
          = ( 'sqrt/1' @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ 0 @ V_x )
        & ( ( '+/2' @ ( 'sqrt/1' @ ( '+/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) @ ( 'sqrt/1' @ ( '-/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) )
          = 1 ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ 0 @ V_x )
        & ( ( '+/2' @ ( 'sqrt/1' @ ( '+/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) @ ( 'sqrt/1' @ ( '-/2' @ V_x @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ 1 ) ) ) ) )
          = 2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ 1 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] : ( 0 = 1 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '//2' @ 3 @ 2 ) ) ),
    answer_to(p3_question,[])).
