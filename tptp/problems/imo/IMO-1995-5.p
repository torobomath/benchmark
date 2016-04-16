%% DOMAIN:    Geometry, polygons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1995, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Let $ABCDEF$ be a convex hexagon with $AB = BC = CD$ and $DE =EF = FA$, such that
%% $¥angle BCD = ¥angle EFA = ¥pi/3$. Suppose $G$ and $H$ are points in the interior
%% of the hexagon such that $¥angle AGB = ¥angle DHE = 2 ¥pi/3$. Prove that
%% $AG + GB + GH + DH + HE ¥ge CF$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  159 (   8 equality;  60 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :  142 (   0   ~;   0   |;  10   &; 131   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_H: '2d.Point'] :
      ( ( ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'cons/2' @ '2d.Point' @ V_E @ ( 'cons/2' @ '2d.Point' @ V_F @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = ( '2d.distance/2' @ V_C @ V_D ) )
        & ( ( '2d.distance/2' @ V_D @ V_E )
          = ( '2d.distance/2' @ V_E @ V_F ) )
        & ( ( '2d.distance/2' @ V_E @ V_F )
          = ( '2d.distance/2' @ V_F @ V_A ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) )
          = ( $quotient @ 'Pi/0' @ 3.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_E @ V_F @ V_A ) )
          = ( $quotient @ 'Pi/0' @ 3.0 ) )
        & ( '2d.point-inside-of/2' @ V_G @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'cons/2' @ '2d.Point' @ V_E @ ( 'cons/2' @ '2d.Point' @ V_F @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) )
        & ( '2d.point-inside-of/2' @ V_H @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'cons/2' @ '2d.Point' @ V_E @ ( 'cons/2' @ '2d.Point' @ V_F @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_G @ V_B ) )
          = ( $quotient @ ( $product @ 2.0 @ 'Pi/0' ) @ 3.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_H @ V_E ) )
          = ( $quotient @ ( $product @ 2.0 @ 'Pi/0' ) @ 3.0 ) ) )
     => ( $greatereq @ ( $sum @ ( '2d.distance/2' @ V_A @ V_G ) @ ( $sum @ ( '2d.distance/2' @ V_G @ V_B ) @ ( $sum @ ( '2d.distance/2' @ V_G @ V_H ) @ ( $sum @ ( '2d.distance/2' @ V_D @ V_H ) @ ( '2d.distance/2' @ V_H @ V_E ) ) ) ) ) @ ( '2d.distance/2' @ V_C @ V_F ) ) ) )).

