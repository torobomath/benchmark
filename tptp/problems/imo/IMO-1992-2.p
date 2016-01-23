%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1992, Problem 2
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Let $¥mathbf{R}$ denote the set of all real numbers. Find all functions
%% $f : ¥mathbf{R} ¥rightarrow ¥mathbf{R}$ such that
%% ¥begin{center}
%% $f(x^2 + f(y)) = y + f(x)^2$ for all $x$, $y$ in $¥mathbf{R}$.
%% ¥end{center}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   21 (   2 equality;   9 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   15 (   0   ~;   0   |;   0   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :)
%            Number of variables   :    5 (   0 sgn;   2   !;   0   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
      ! [V_x: 'R',V_y: 'R'] :
        ( ( 'LamApp/2' @ V_f @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( 'LamApp/2' @ V_f @ V_y ) ) )
        = ( '+/2' @ V_y @ ( '^/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
      ( V_f_dot_0
      = ( ^ [V_x_dot_0: 'R'] : V_x_dot_0 ) ) ),
    answer_to(p_question,[])).
