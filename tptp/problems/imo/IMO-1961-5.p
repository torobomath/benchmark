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
%            Number of atoms       :  158 (  15 equality;  81 variable)
%            Maximal formula depth :   22 (  17 average)
%            Number of connectives :  125 (   0   ~;   0   |;  27   &;  96   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   23 (   0 sgn;   3   !;  18   ?;   2   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_b: 'R',V_c: 'R',V_omega: 'R'] :
      ( ( ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point'] :
            ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
            & ( V_b
              = ( '2d.distance/2' @ V_A @ V_C ) )
            & ( V_c
              = ( '2d.distance/2' @ V_A @ V_B ) )
            & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_M @ V_B ) )
              = V_omega )
            & ( '</2' @ V_omega @ ( '*/2' @ 90 @ 'Degree/0' ) )
            & ( V_M
              = ( '2d.midpoint-of/2' @ V_B @ V_C ) ) )
       => ( ( '</2' @ 0 @ V_omega )
          & ( '</2' @ V_omega @ 'Pi/0' )
          & ( '</2' @ 0 @ V_b )
          & ( '<=/2' @ ( '*/2' @ V_b @ ( 'tan/1' @ ( '//2' @ V_omega @ 2 ) ) ) @ V_c )
          & ( '</2' @ V_c @ V_b ) ) )
      & ( ( ( '</2' @ 0 @ V_omega )
          & ( '</2' @ V_omega @ 'Pi/0' )
          & ( '</2' @ 0 @ V_b )
          & ( '<=/2' @ ( '*/2' @ V_b @ ( 'tan/1' @ ( '//2' @ V_omega @ 2 ) ) ) @ V_c )
          & ( '</2' @ V_c @ V_b ) )
       => ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_M_dot_0: '2d.Point'] :
            ( ( '2d.is-triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 )
            & ( V_b
              = ( '2d.distance/2' @ V_A_dot_0 @ V_C_dot_0 ) )
            & ( V_c
              = ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) )
            & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A_dot_0 @ V_M_dot_0 @ V_B_dot_0 ) )
              = V_omega )
            & ( '</2' @ V_omega @ ( '*/2' @ 90 @ 'Degree/0' ) )
            & ( V_M_dot_0
              = ( '2d.midpoint-of/2' @ V_B_dot_0 @ V_C_dot_0 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ABC: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_b: 'R',V_c: 'R',V_omega: 'R'] :
        ( ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_b
          = ( '2d.distance/2' @ V_A @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( '</2' @ V_omega @ ( '*/2' @ 90 @ 'Degree/0' ) )
        & ( ( '*/2' @ V_b @ ( 'tan/1' @ ( '//2' @ V_omega @ 2 ) ) )
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
