%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% The positive integers $a$ and $b$ are such that the numbers $15a + 16b$ and
%% $16a - 15b$ are both squares of positive integers. What is the least possible
%% value that can be taken on by the smaller of these two squares?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   5 equality;  16 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   33 (   0   ~;   1   |;   6   &;  26   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_c: $int] :
        ( 'int.minimum/2'
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_x: $int] :
            ? [V_a: $int,V_b: $int,V_v: $int,V_w: $int] :
              ( ( $less @ 0 @ V_a )
              & ( $less @ 0 @ V_b )
              & ( 'int.is-square-number/1' @ V_v )
              & ( 'int.is-square-number/1' @ V_w )
              & ( V_v
                = ( $sum @ ( $product @ 15 @ V_a ) @ ( $product @ 16 @ V_b ) ) )
              & ( V_w
                = ( $difference @ ( $product @ 16 @ V_a ) @ ( $product @ 15 @ V_b ) ) )
              & ( ( V_x = V_v )
                | ( V_x = V_w ) ) ) )
        @ V_c ) )).

thf(p_answer,answer,(
    ^ [V_c_dot_0: $int] :
      ( V_c_dot_0
      = ( 'int.^/2' @ 481 @ 2 ) ) ),
    answer_to(p_question,[])).

