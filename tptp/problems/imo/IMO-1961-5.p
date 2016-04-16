%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Construct triangle $ABC$ if $AC = b$, $AB = c$ and $\angle AMB = \omega$,
%% where $M$ is the midpoint of segment $BC$ and $\omega < 90^{\circ}$.
%% Prove that a solution exists if and only if\[
%% b \tan \frac{\omega}{2} \leq c < b.
%% \]In what case does the equality hold?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  108 (  11 equality;  56 variable)
%            Maximal formula depth :   22 (  17 average)
%            Number of connectives :   83 (   0   ~;   0   |;  17   &;  65   @)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   3   !;  14   ?;   2   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_b: $real,V_c: $real,V_omega: $real] :
      ( ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point'] :
          ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( V_b
            = ( '2d.distance/2' @ V_A @ V_C ) )
          & ( V_c
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_M @ V_B ) )
            = V_omega )
          & ( $less @ V_omega @ ( $product @ 90.0 @ 'Degree/0' ) )
          & ( V_M
            = ( '2d.midpoint-of/2' @ V_B @ V_C ) ) )
    <=> ( ( $less @ 0.0 @ V_omega )
        & ( $less @ V_omega @ 'Pi/0' )
        & ( $less @ 0.0 @ V_b )
        & ( $lesseq @ ( $product @ V_b @ ( 'tan/1' @ ( $quotient @ V_omega @ 2.0 ) ) ) @ V_c )
        & ( $less @ V_c @ V_b ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_ABC: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_b: $real,V_c: $real,V_omega: $real] :
        ( ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_b
          = ( '2d.distance/2' @ V_A @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( $less @ V_omega @ ( $product @ 90.0 @ 'Degree/0' ) )
        & ( ( $product @ V_b @ ( 'tan/1' @ ( $quotient @ V_omega @ 2.0 ) ) )
          = V_c )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_M @ V_B ) )
          = V_omega ) ) )).

thf(p2_answer,answer,(
    ^ [V_ABC_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point'] :
      ( ( V_ABC_dot_0
        = ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '2d.is-right-triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) ) ),
    answer_to(p2_question,[])).

