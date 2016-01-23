%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be the sides of a triangle, and $T$ its area.
%% Prove: $a^2 +b^2 +c^2 \geq 4\sqrt{3}T$.
%% In what case does equality hold?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (  11 equality;  49 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :   93 (   0   ~;   0   |;  11   &;  81   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   17 (   0 sgn;   6   !;   9   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_c ) )
     => ( '>=/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '*/2' @ 4 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: 'R',V_b: 'R',V_c: 'R'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_abc
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_c )
        & ( ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) )
          = ( '*/2' @ 4 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R'] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_a_dot_0 )
      & ( V_a_dot_0 = V_b_dot_0 )
      & ( V_b_dot_0 = V_c_dot_0 ) ) ),
    answer_to(p2_question,[])).
