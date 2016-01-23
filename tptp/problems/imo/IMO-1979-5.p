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
%            Number of atoms       :   97 (   9 equality;  32 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :   77 (   0   ~;   5   |;   7   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_x1: 'R',V_x2: 'R',V_x3: 'R',V_x4: 'R',V_x5: 'R'] :
        ( ( '>=/2' @ V_x1 @ 0 )
        & ( '>=/2' @ V_x2 @ 0 )
        & ( '>=/2' @ V_x3 @ 0 )
        & ( '>=/2' @ V_x4 @ 0 )
        & ( '>=/2' @ V_x5 @ 0 )
        & ( ( '+/2' @ V_x1 @ ( '+/2' @ ( '*/2' @ 2 @ V_x2 ) @ ( '+/2' @ ( '*/2' @ 3 @ V_x3 ) @ ( '+/2' @ ( '*/2' @ 4 @ V_x4 ) @ ( '*/2' @ 5 @ V_x5 ) ) ) ) )
          = V_a )
        & ( ( '+/2' @ V_x1 @ ( '+/2' @ ( '*/2' @ 8 @ V_x2 ) @ ( '+/2' @ ( '*/2' @ 27 @ V_x3 ) @ ( '+/2' @ ( '*/2' @ 64 @ V_x4 ) @ ( '*/2' @ 125 @ V_x5 ) ) ) ) )
          = ( '*/2' @ V_a @ V_a ) )
        & ( ( '+/2' @ V_x1 @ ( '+/2' @ ( '*/2' @ 32 @ V_x2 ) @ ( '+/2' @ ( '*/2' @ 243 @ V_x3 ) @ ( '+/2' @ ( '*/2' @ 1024 @ V_x4 ) @ ( '*/2' @ 3125 @ V_x5 ) ) ) ) )
          = ( '*/2' @ V_a @ ( '*/2' @ V_a @ V_a ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( V_a_dot_0 = 0 )
      | ( V_a_dot_0 = 1 )
      | ( V_a_dot_0 = 4 )
      | ( V_a_dot_0 = 9 )
      | ( V_a_dot_0 = 16 )
      | ( V_a_dot_0 = 25 ) ) ),
    answer_to(p_question,[])).
