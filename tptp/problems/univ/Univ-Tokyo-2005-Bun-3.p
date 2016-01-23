%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Humanities Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% When the real numbers $s$ and $t$ equal to or larger than $0$ move
%% satisfying $s^2+t^2=1$, find the range of the possible solutions of
%% the equation $x^4-2(s+t)x^2+(s-t)^2=0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   2 equality;  12 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   46 (   0   ~;   0   |;   4   &;  42   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_s: 'R',V_t: 'R'] :
        ( ( 1
          = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) )
        & ( 0
          = ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ ( '+/2' @ ( '*/2' @ -2 @ ( '*/2' @ ( '+/2' @ V_s @ V_t ) @ ( '^/2' @ V_x @ 2 ) ) ) @ ( '^/2' @ ( '-/2' @ V_s @ V_t ) @ 2 ) ) ) )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ 0 @ V_t ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ ( '-/1' @ ( '^/2' @ 2 @ ( '//2' @ 3 @ 4 ) ) ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ ( '^/2' @ 2 @ ( '//2' @ 3 @ 4 ) ) ) ) ),
    answer_to(p_question,[])).
