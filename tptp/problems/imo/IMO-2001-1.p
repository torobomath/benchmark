%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Let ABC be an acute-angled triangle with circumcentre O.
%% Let P on BC be the foot of the altitude from A.
%% Suppose that angle(BCA) >= angle(ABC) + 30 Degree.
%% Prove that angle(CAB) + angle(COP) < 90 Degree.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   0 equality;  26 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   51 (   0   ~;   0   |;   4   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( $greatereq @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) @ ( $sum @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( $quotient @ 'Pi/0' @ 6.0 ) ) ) )
     => ( $less @ ( $sum @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_O @ V_P ) ) ) @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) )).

