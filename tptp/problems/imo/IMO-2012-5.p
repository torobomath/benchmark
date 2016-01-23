%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2012, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Let ABC be a triangle with angle(BCA) = 90 Degree, and let D be the foot
%% of the altitude from C. Let X be a point in the interior of the segment CD.
%% Let K be the point on the segment AX such that BK = BC.
%% Similarly, let L be the point on the segment BX such that AL = AC.
%% Let M be the point of intersection of AL and BK.
%% Show that MK = ML.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   76 (   7 equality;  40 variable)
%            Maximal formula depth :   25 (  25 average)
%            Number of connectives :   63 (   2   ~;   0   |;  10   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_X: '2d.Point',V_K: '2d.Point',V_L: '2d.Point',V_M: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
          = ( '*/2' @ 90 @ 'Degree/0' ) )
        & ( ( '2d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '2d.line/2' @ V_A @ V_B ) )
          = V_D )
        & ( '2d.on/2' @ V_X @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( V_X != V_C )
        & ( V_X != V_D )
        & ( '2d.on/2' @ V_K @ ( '2d.seg/2' @ V_A @ V_X ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_K ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( '2d.on/2' @ V_L @ ( '2d.seg/2' @ V_B @ V_X ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_L ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_L ) @ ( '2d.seg/2' @ V_B @ V_K ) @ V_M ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_M @ V_L ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_M @ V_K ) ) ) ) )).
