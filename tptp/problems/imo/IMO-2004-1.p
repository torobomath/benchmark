%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Let ABC be an acute-angled triangle with AB != AC. The
%% circle with diameter BC intersects the sides AB and AC at M and N
%% respectively. Denote by O the midpoint of the side BC. The bisectors of
%% the angles angle(BAC) and angle(MON) intersect at R. Prove that the
%% circumcircles of the triangles BMR and CNR have a common point lying on the
%% side BC.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   88 (   4 equality;  55 variable)
%            Maximal formula depth :   36 (  36 average)
%            Number of connectives :   82 (   3   ~;   0   |;  18   &;  60   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  12   !;   1   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_K1: '2d.Shape',V_M: '2d.Point',V_N: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape',V_R: '2d.Point',V_K2: '2d.Shape',V_K3: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
         != ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_B @ V_C ) @ V_K1 )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_K1 @ V_M )
        & ( V_M != V_B )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ V_K1 @ V_N )
        & ( V_N != V_C )
        & ( ( '2d.midpoint-of/2' @ V_B @ V_C )
          = V_O )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.is-angle-bisector/2' @ V_l1 @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ V_l2 @ ( '2d.angle/3' @ V_M @ V_O @ V_N ) )
        & ( '2d.intersect/3' @ V_l1 @ V_l2 @ V_R )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_B @ V_M @ V_R ) @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_C @ V_N @ V_R ) @ V_K3 ) )
     => ? [V_P: '2d.Point'] :
          ( ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
          & ( '2d.intersect/3' @ V_K2 @ V_K3 @ V_P ) ) ) )).

