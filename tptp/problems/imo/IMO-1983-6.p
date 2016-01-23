%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$ and c be the lengths of the sides of a triangle. Prove that
%% ¥[
%% a^2 b (a - b) + b^2 c (b - c) + c^2 a (c - a) ¥ge 0.
%% ¥]
%% Determine when equality occurs.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  128 (  11 equality;  61 variable)
%            Maximal formula depth :   22 (  16 average)
%            Number of connectives :  105 (   0   ~;   0   |;  11   &;  93   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   17 (   0 sgn;   6   !;   9   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_C @ V_A ) ) )
     => ( '<=/2' @ 0 @ ( '+/2' @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ V_b @ ( '-/2' @ V_a @ V_b ) ) ) @ ( '+/2' @ ( '*/2' @ ( '^/2' @ V_b @ 2 ) @ ( '*/2' @ V_c @ ( '-/2' @ V_b @ V_c ) ) ) @ ( '*/2' @ ( '^/2' @ V_c @ 2 ) @ ( '*/2' @ V_a @ ( '-/2' @ V_c @ V_a ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: 'R',V_b: 'R',V_c: 'R'] :
        ( ( V_abc
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( 0
          = ( '+/2' @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ V_b @ ( '-/2' @ V_a @ V_b ) ) ) @ ( '+/2' @ ( '*/2' @ ( '^/2' @ V_b @ 2 ) @ ( '*/2' @ V_c @ ( '-/2' @ V_b @ V_c ) ) ) @ ( '*/2' @ ( '^/2' @ V_c @ 2 ) @ ( '*/2' @ V_a @ ( '-/2' @ V_c @ V_a ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R'] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_a_dot_0 )
      & ( V_a_dot_0 = V_b_dot_0 )
      & ( V_b_dot_0 = V_c_dot_0 ) ) ),
    answer_to(p2_question,[])).
