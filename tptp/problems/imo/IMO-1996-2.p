%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% Let $P$ be a point inside triangle $ABC$ such that
%% ¥[
%% ¥angle APB -¥angle ACB = ¥angle APC - ¥angle ABC.
%% ¥]
%% Let $D$, $E$ be the incenters of triangles $APB$, $APC$, respectively. Show that
%% $AP$, $BD$, $CE$ meet at a point.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   1 equality;  37 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   58 (   0   ~;   0   |;   5   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   6   !;   1   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    1 (   0 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( $difference @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_B ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) )
          = ( $difference @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_C ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) )
        & ( '2d.is-incenter-of/2' @ V_D @ ( '2d.triangle/3' @ V_A @ V_P @ V_B ) )
        & ( '2d.is-incenter-of/2' @ V_E @ ( '2d.triangle/3' @ V_A @ V_P @ V_C ) ) )
     => ? [V_Q: '2d.Point'] :
          ( ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.line/2' @ V_B @ V_D ) @ V_Q )
          & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.line/2' @ V_C @ V_E ) @ V_Q ) ) ) )).

