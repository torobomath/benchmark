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
%            Number of atoms       :   49 (   5 equality;  19 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   37 (   0   ~;   0   |;   2   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   3   !;   0   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_value: $real] :
      ! [V_f: ( $real > $real > $real )] :
        ( ! [V_x: $real,V_y: $real] :
            ( ( ( $sum @ V_y @ 1.0 )
              = ( V_f @ V_y @ 0.0 ) )
            & ( ( V_f @ 0.0 @ ( $sum @ V_x @ 1.0 ) )
              = ( V_f @ 1.0 @ V_x ) )
            & ( ( V_f @ ( $sum @ V_y @ 1.0 ) @ ( $sum @ V_x @ 1.0 ) )
              = ( V_f @ ( V_f @ V_y @ ( $sum @ V_x @ 1.0 ) ) @ V_x ) ) )
       => ( V_value
          = ( V_f @ 1981.0 @ 4.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_value_dot_0: $real] :
      ( V_value_dot_0
      = ( $difference
        @ ( 'repeat/3' @ $real @ 1983
          @ ^ [V_n: $real] :
              ( '^/2' @ 2.0 @ V_n )
          @ 2.0 )
        @ 2.0 ) ) ),
    answer_to(p_question,[])).

