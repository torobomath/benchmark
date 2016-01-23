%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1997, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Find all pairs $(a, b)$ of integers $a$, $b ¥ge 1$ that satisfy the equation
%% ¥[
%% a^{b^2} = b^a.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   5 equality;  12 variable)
%            Maximal formula depth :   12 (  10 average)
%            Number of connectives :   34 (   0   ~;   2   |;   3   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z'] :
        ( ( 'int.<=/2' @ 1 @ V_a )
        & ( 'int.<=/2' @ 1 @ V_b )
        & ( ( 'int.^/2' @ V_a @ ( 'int.^/2' @ V_b @ 2 ) )
          = ( 'int.^/2' @ V_b @ V_a ) )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_ab_dot_0
        = ( 'cons/2' @ 16 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_ab_dot_0
        = ( 'cons/2' @ 27 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
