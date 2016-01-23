%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Solve the system of equations
%% \[                    |a_1 - a_2| x_2 + |a_1 - a_3| x_3 + |a_1 - a_4| x_4 = 1  \]
%% \[  |a_2 - a_1| x_1                   + |a_2 - a_3| x_3 + |a_2 - a_4| x_4 = 1  \]
%% \[  |a_3 - a_1| x_1 + |a_3 - a_2| x_2                   + |a_3 - a_4| x_4 = 1  \]
%% \[  |a_4 - a_1| x_1 + |a_4 - a_2| x_2 + |a_4 - a_3| x_3                   = 1  \]
%% where $a_1$, $a_2$, $a_3$, $a_4$ are four different real numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  137 (  12 equality;  58 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :  119 (   6   ~;   0   |;  10   &; 103   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xs: 'ListOf' @ 'R'] :
      ? [V_X1: 'R',V_X2: 'R',V_X3: 'R',V_X4: 'R'] :
        ( ( V_xs
          = ( 'cons/2' @ V_X1 @ ( 'cons/2' @ V_X2 @ ( 'cons/2' @ V_X3 @ ( 'cons/2' @ V_X4 @ 'nil/0' ) ) ) ) )
        & ( ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A1 @ V_A2 ) ) @ V_X2 ) @ ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A1 @ V_A3 ) ) @ V_X3 ) @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A1 @ V_A4 ) ) @ V_X4 ) ) )
          = 1 )
        & ( ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A2 @ V_A1 ) ) @ V_X1 ) @ ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A2 @ V_A3 ) ) @ V_X3 ) @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A2 @ V_A4 ) ) @ V_X4 ) ) )
          = 1 )
        & ( ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A3 @ V_A2 ) ) @ V_X2 ) @ ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A3 @ V_A1 ) ) @ V_X1 ) @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A3 @ V_A4 ) ) @ V_X4 ) ) )
          = 1 )
        & ( ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A4 @ V_A2 ) ) @ V_X2 ) @ ( '+/2' @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A4 @ V_A3 ) ) @ V_X3 ) @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_A4 @ V_A1 ) ) @ V_X1 ) ) )
          = 1 )
        & ( V_A1 != V_A2 )
        & ( V_A1 != V_A3 )
        & ( V_A1 != V_A4 )
        & ( V_A2 != V_A3 )
        & ( V_A2 != V_A4 )
        & ( V_A3 != V_A4 ) ) )).

thf(p_answer,answer,(
    ^ [V_xs_dot_0: 'ListOf' @ 'R'] :
      ( V_xs_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ ( '-/2' @ V_A1 @ V_A4 ) ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ ( '-/2' @ V_A1 @ V_A4 ) ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
