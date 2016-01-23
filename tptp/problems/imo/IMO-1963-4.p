%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Find all solutions $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ of the system
%% \[   x_5 + x_2 = y x_1   \]
%% \[   x_1 + x_3 = y x_2   \]
%% \[   x_2 + x_4 = y x_3   \]
%% \[   x_3 + x_5 = y x_4   \]
%% \[   x_4 + x_1 = y x_5,  \]
%% where $y$ is a parameter.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  120 (  11 equality;  49 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   98 (   0   ~;   2   |;   7   &;  89   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x1x2x3x4x5: 'ListOf' @ 'R'] :
      ? [V_x1: 'R',V_x2: 'R',V_x3: 'R',V_x4: 'R',V_x5: 'R'] :
        ( ( V_x1x2x3x4x5
          = ( 'cons/2' @ V_x1 @ ( 'cons/2' @ V_x2 @ ( 'cons/2' @ V_x3 @ ( 'cons/2' @ V_x4 @ ( 'cons/2' @ V_x5 @ 'nil/0' ) ) ) ) ) )
        & ( ( '+/2' @ V_x2 @ V_x5 )
          = ( '*/2' @ V_y @ V_x1 ) )
        & ( ( '+/2' @ V_x1 @ V_x3 )
          = ( '*/2' @ V_y @ V_x2 ) )
        & ( ( '+/2' @ V_x2 @ V_x4 )
          = ( '*/2' @ V_y @ V_x3 ) )
        & ( ( '+/2' @ V_x3 @ V_x5 )
          = ( '*/2' @ V_y @ V_x4 ) )
        & ( ( '+/2' @ V_x4 @ V_x1 )
          = ( '*/2' @ V_y @ V_x5 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x1x2x3x4x5_dot_0: 'ListOf' @ 'R'] :
      ( ( ( ( '-/2' @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ V_y ) @ 1 )
          = 0 )
        & ? [V_s_dot_0: 'R',V_t: 'R'] :
            ( V_x1x2x3x4x5_dot_0
            = ( 'cons/2' @ V_s_dot_0 @ ( 'cons/2' @ V_t @ ( 'cons/2' @ ( '+/2' @ ( '-/1' @ V_s_dot_0 ) @ ( '*/2' @ V_y @ V_t ) ) @ ( 'cons/2' @ ( '-/1' @ ( '+/2' @ ( '*/2' @ ( '-/2' @ ( '^/2' @ V_y @ 2 ) @ 1 ) @ V_s_dot_0 ) @ ( '*/2' @ V_y @ V_t ) ) ) @ ( 'cons/2' @ ( '-/2' @ ( '*/2' @ V_y @ V_s_dot_0 ) @ V_t ) @ 'nil/0' ) ) ) ) ) ) )
      | ( ( V_y = 2 )
        & ? [V_s: 'R'] :
            ( V_x1x2x3x4x5_dot_0
            = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_s @ ( 'cons/2' @ V_s @ ( 'cons/2' @ V_s @ ( 'cons/2' @ V_s @ 'nil/0' ) ) ) ) ) ) )
      | ( V_x1x2x3x4x5_dot_0
        = ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).
