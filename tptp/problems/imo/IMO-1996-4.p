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
%            Number of atoms       :   43 (   5 equality;  16 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   31 (   0   ~;   1   |;   6   &;  24   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: 'Z'] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_x: 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_v: 'Z',V_w: 'Z'] :
              ( ( 'int.</2' @ 0 @ V_a )
              & ( 'int.</2' @ 0 @ V_b )
              & ( 'int.is-square-number/1' @ V_v )
              & ( 'int.is-square-number/1' @ V_w )
              & ( V_v
                = ( 'int.+/2' @ ( 'int.*/2' @ 15 @ V_a ) @ ( 'int.*/2' @ 16 @ V_b ) ) )
              & ( V_w
                = ( 'int.-/2' @ ( 'int.*/2' @ 16 @ V_a ) @ ( 'int.*/2' @ 15 @ V_b ) ) )
              & ( ( V_x = V_v )
                | ( V_x = V_w ) ) ) )
        @ V_c ) )).

thf(p_answer,answer,(
    ^ [V_c_dot_0: 'Z'] :
      ( V_c_dot_0
      = ( 'int.^/2' @ 481 @ 2 ) ) ),
    answer_to(p_question,[])).
