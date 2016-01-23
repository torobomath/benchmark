%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-12
%%
%% <PROBLEM-TEXT>
%% Determine all ordered pairs $(m, n)$ of positive integers such that
%% ¥[
%% ¥frac{n^3 +1}{mn-1}
%% ¥]
%% is an integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   9 equality;  16 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   63 (   0   ~;   7   |;   3   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'ListOf' @ 'Z'] :
      ? [V_m: 'Z',V_n: 'Z'] :
        ( ( V_l
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) )
        & ( 'int.</2' @ 0 @ V_m )
        & ( 'int.</2' @ 0 @ V_n )
        & ( 'int.is-divisible-by/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n @ 3 ) @ 1 ) @ ( 'int.-/2' @ ( 'int.*/2' @ V_m @ V_n ) @ 1 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_l_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 5 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_l_dot_0
        = ( 'cons/2' @ 5 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
