%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1979, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-26
%%
%% <PROBLEM-TEXT>
%% Find all real numbers $a$ for which there exist non-negative real
%% numbers $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ satisfying the relations\[
%% \sum_{k=1}^{5} k x_k = a,
%% \sum_{k=1}^{5} k^3 x_k = a^2,
%% \sum_{k=1}^{5} k^5 x_k = a^3.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   9 equality;  32 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :   78 (   0   ~;   5   |;   7   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   20 (   1 pred;    2 func;   17 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_x1: $real,V_x2: $real,V_x3: $real,V_x4: $real,V_x5: $real] :
        ( ( $greatereq @ V_x1 @ 0.0 )
        & ( $greatereq @ V_x2 @ 0.0 )
        & ( $greatereq @ V_x3 @ 0.0 )
        & ( $greatereq @ V_x4 @ 0.0 )
        & ( $greatereq @ V_x5 @ 0.0 )
        & ( ( $sum @ V_x1 @ ( $sum @ ( $product @ 2.0 @ V_x2 ) @ ( $sum @ ( $product @ 3.0 @ V_x3 ) @ ( $sum @ ( $product @ 4.0 @ V_x4 ) @ ( $product @ 5.0 @ V_x5 ) ) ) ) )
          = V_a )
        & ( ( $sum @ V_x1 @ ( $sum @ ( $product @ 8.0 @ V_x2 ) @ ( $sum @ ( $product @ 27.0 @ V_x3 ) @ ( $sum @ ( $product @ 64.0 @ V_x4 ) @ ( $product @ 125.0 @ V_x5 ) ) ) ) )
          = ( $product @ V_a @ V_a ) )
        & ( ( $sum @ V_x1 @ ( $sum @ ( $product @ 32.0 @ V_x2 ) @ ( $sum @ ( $product @ 243.0 @ V_x3 ) @ ( $sum @ ( $product @ 1024.0 @ V_x4 ) @ ( $product @ 3125.0 @ V_x5 ) ) ) ) )
          = ( $product @ V_a @ ( $product @ V_a @ V_a ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( V_a_dot_0 = 0.0 )
      | ( V_a_dot_0 = 1.0 )
      | ( V_a_dot_0 = 4.0 )
      | ( V_a_dot_0 = 9.0 )
      | ( V_a_dot_0 = 16.0 )
      | ( V_a_dot_0 = 25.0 ) ) ),
    answer_to(p_question,[])).

