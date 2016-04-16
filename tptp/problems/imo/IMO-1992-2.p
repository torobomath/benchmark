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
%            Number of atoms       :   20 (   2 equality;   9 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   13 (   0   ~;   0   |;   0   &;  13   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   2   !;   0   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
      ! [V_x: $real,V_y: $real] :
        ( ( V_f @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( V_f @ V_y ) ) )
        = ( $sum @ V_y @ ( '^/2' @ ( V_f @ V_x ) @ 2.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
      ( V_f_dot_0
      = ( ^ [V_x_dot_0: $real] : V_x_dot_0 ) ) ),
    answer_to(p_question,[])).

