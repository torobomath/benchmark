%% DOMAIN:    Algebra, functions
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1981, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% The function $f(x, y)$ satisfies
%% ¥[
%% ¥begin{array}{l}
%% (1) f(0, y) = y + 1,¥¥
%% (2) f(x + 1, 0) = f(x, 1),¥¥
%% (3) f(x + 1, y + 1) = f(x, f(x + 1, y)),
%% ¥end{array}
%% ¥]
%% for all non-negative integers $x$, $y$. Determine $f(4, 1981)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   5 equality;  19 variable)
%            Maximal formula depth :   17 (  14 average)
%            Number of connectives :   49 (   0   ~;   0   |;   2   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    6 (   0 sgn;   3   !;   0   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_value: 'R'] :
      ! [V_f: 'R' > 'R' > 'R'] :
        ( ! [V_x: 'R',V_y: 'R'] :
            ( ( ( '+/2' @ V_y @ 1 )
              = ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ V_y ) @ 0 ) )
            & ( ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ 0 ) @ ( '+/2' @ V_x @ 1 ) )
              = ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ 1 ) @ V_x ) )
            & ( ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ ( '+/2' @ V_y @ 1 ) ) @ ( '+/2' @ V_x @ 1 ) )
              = ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ V_y ) @ ( '+/2' @ V_x @ 1 ) ) ) @ V_x ) ) )
       => ( V_value
          = ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ 1981 ) @ 4 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_value_dot_0: 'R'] :
      ( V_value_dot_0
      = ( '-/2'
        @ ( 'repeat/3' @ 1983
          @ ^ [V_n: 'R'] :
              ( '^/2' @ 2 @ V_n )
          @ 2 )
        @ 2 ) ) ),
    answer_to(p_question,[])).
