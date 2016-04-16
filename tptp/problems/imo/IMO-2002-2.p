%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2002, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% BC is a diameter of a circle center O. A is any point on
%% the circle with angle(AOC) > 60 Degree. EF is the chord which is
%% the perpendicular bisector of AO. D is the midpoint of the minor arc AB.
%% The line through O parallel to AD meets AC at J.
%% Show that J is the incenter of triangle CEF.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   1 equality;  41 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :   69 (   0   ~;   0   |;  12   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_O: '2d.Point',V_Ga: '2d.Shape',V_B: '2d.Point',V_C: '2d.Point',V_A: '2d.Point',V_D: '2d.Point',V_J: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Ga )
        & ( ( '2d.center-of/1' @ V_Ga )
          = V_O )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_B @ V_C ) @ V_Ga )
        & ( '2d.on/2' @ V_A @ V_Ga )
        & ( $less @ ( $product @ 60.0 @ 'Degree/0' ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_C ) ) )
        & ( '2d.is-perp-bisector/2' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.seg/2' @ V_O @ V_A ) )
        & ( '2d.on/2' @ V_E @ V_Ga )
        & ( '2d.on/2' @ V_F @ V_Ga )
        & ( '2d.on/2' @ V_D @ V_Ga )
        & ( '2d.intersect/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_O @ V_D ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_O @ V_D ) @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_O @ V_J ) @ ( '2d.line/2' @ V_A @ V_D ) )
        & ( '2d.on/2' @ V_J @ ( '2d.line/2' @ V_A @ V_C ) ) )
     => ( '2d.is-incenter-of/2' @ V_J @ ( '2d.triangle/3' @ V_C @ V_E @ V_F ) ) ) )).

