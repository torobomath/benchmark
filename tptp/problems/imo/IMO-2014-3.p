%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-10
%%
%% <PROBLEM-TEXT>
%% Convex quadrilateral $ABCD$ has $\angle ABC = \angle CDA = 90\degree$.
%% Point $H$ is the foot of the perpendicular from $A$ to $BD$.
%% Points $S$ and $T$ lie on sides $AB$ and $AD$, respectively, such that $H$
%% lies inside triangle $SCT$ and\[
%% \angle CHS - \angle CSB = 90\degree,
%% \angle THC - \angle DTC = 90\degree.
%% \]Prove that line $BD$ is tangent to the circumcircle of triangle $TSH$.
%%
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   89 (   5 equality;  44 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :   78 (   0   ~;   0   |;  10   &;  67   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   7   !;   1   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_H: '2d.Point',V_S: '2d.Point',V_T: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ ( '2d.line/2' @ V_B @ V_D ) ) )
        & ( '2d.on/2' @ V_S @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_T @ ( '2d.seg/2' @ V_A @ V_D ) )
        & ( '2d.on/2' @ V_H @ ( '2d.triangle/3' @ V_S @ V_C @ V_T ) )
        & ( ( $difference @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_H @ V_S ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_S @ V_B ) ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( ( $difference @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_T @ V_H @ V_C ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_T @ V_C ) ) )
          = ( $product @ 90.0 @ 'Degree/0' ) ) )
     => ? [V_K: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_K )
          & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_T @ V_S @ V_H ) @ V_K )
          & ( '2d.tangent/2' @ ( '2d.line/2' @ V_B @ V_D ) @ V_K ) ) ) )).

