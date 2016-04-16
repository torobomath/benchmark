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
%            Number of atoms       :  126 (  11 equality;  49 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :  103 (   0   ~;   0   |;  11   &;  91   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   6   !;   9   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_c ) )
     => ( $greatereq @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( '^/2' @ V_b @ 2.0 ) @ ( '^/2' @ V_c @ 2.0 ) ) ) @ ( $product @ 4.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_c )
        & ( ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( '^/2' @ V_b @ 2.0 ) @ ( '^/2' @ V_c @ 2.0 ) ) )
          = ( $product @ 4.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ V_a_dot_0 )
      & ( V_a_dot_0 = V_b_dot_0 )
      & ( V_b_dot_0 = V_c_dot_0 ) ) ),
    answer_to(p2_question,[])).

