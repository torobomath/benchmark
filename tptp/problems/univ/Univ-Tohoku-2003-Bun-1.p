%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-18
%%
%% <PROBLEM-TEXT>
%% For the real number $a$, define the sets $A$ and $B$ as
%% $A =\{x| x^2+(1 - a^2)x+a^3-2 a^2+a\le 0, x is a real number\}$ and
%% $B =\{x| x^2+(2 a - 7)x+a^2-7 a+10<0, x is a real number\}$. Find the
%% range of $a$ such that the intersection $A\cap B$ is not an empty
%% set.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   2 equality;  18 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   70 (   1   ~;   1   |;   3   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_A: 'SetOf' @ 'R',V_B: 'SetOf' @ 'R'] :
        ( ( V_A
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_0: 'R'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ ( '-/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) @ V_x_dot_0 ) @ ( '+/2' @ ( '^/2' @ V_a @ 3 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) ) @ V_a ) ) ) ) @ 0 ) ) )
        & ( V_B
          = ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
                ( '</2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_a ) @ 7 ) @ V_x ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 7 @ V_a ) ) @ 10 ) ) ) ) @ 0 ) ) )
        & ~ ( 'is-empty/1' @ ( 'set-intersection/2' @ V_A @ V_B ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '</2' @ V_a_dot_0 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) )
      | ( ( '</2' @ ( 'sqrt/1' @ 2 ) @ V_a_dot_0 )
        & ( '</2' @ V_a_dot_0 @ 3 ) ) ) ),
    answer_to(p_question,[])).
