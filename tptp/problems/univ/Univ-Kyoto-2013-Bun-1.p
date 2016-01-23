%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Define $f(x)=(x + a)(x + 2)$, where $a$ is a real number equal to or
%% larger than $2$. Find the range of the value of $a$ such that
%% $f(f(x))>0$ is true for all the real numbers $x$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   34 (   0 equality;  10 variable)
%            Maximal formula depth :   15 (  11 average)
%            Number of connectives :   32 (   0   ~;   0   |;   2   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    5 (   0 sgn;   1   !;   0   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
        ( ( '>=/2' @ V_a @ 2 )
        & ! [V_x: 'R'] :
            ( '>/2'
            @ ( 'LamApp/2'
              @ ^ [V_x_dot_1: 'R'] :
                  ( '*/2' @ ( '+/2' @ V_x_dot_1 @ V_a ) @ ( '+/2' @ V_x_dot_1 @ 2 ) )
              @ ( 'LamApp/2'
                @ ^ [V_x_dot_0: 'R'] :
                    ( '*/2' @ ( '+/2' @ V_x_dot_0 @ V_a ) @ ( '+/2' @ V_x_dot_0 @ 2 ) )
                @ V_x ) )
            @ 0 ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '<=/2' @ 2 @ V_a_dot_0 )
      & ( '</2' @ V_a_dot_0 @ ( '+/2' @ 2 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).
