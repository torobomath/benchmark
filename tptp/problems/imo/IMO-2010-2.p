%% DOMAIN:    Geometry, elementary geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Let I be the incentre of triangle ABC and let Gamma be its circumcircle.
%% Let the line AI intersect Gamma again at D. Let E be a point on the arc BDC
%% and F a point on the side BC such that
%% angle(BAF) = angle(CAE) < 1/2 angle(BAC).
%% Finally, let G be the midpoint of the segment IF.
%% Prove that the lines DG and EI intersect on Gamma.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   4 equality;  54 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :   85 (   1   ~;   0   |;  14   &;  69   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  10   !;   3   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_Ga: '2d.Shape',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_BDC: '2d.Shape'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_Ga )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Ga )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_I ) @ V_Ga @ V_D )
        & ( V_D != V_A )
        & ( '2d.on/2' @ V_F @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ? [V_former: $real,V_later: $real] :
            ( V_BDC
            = ( '2d.arc/4' @ ( '2d.center-of/1' @ V_Ga ) @ ( '2d.radius-of/1' @ V_Ga ) @ V_former @ V_later ) )
        & ( '2d.on/2' @ V_D @ V_BDC )
        & ( '2d.is-arc-node/2' @ V_B @ V_BDC )
        & ( '2d.is-arc-node/2' @ V_C @ V_BDC )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_F ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_E ) ) )
        & ( $less @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_E ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) )
        & ( ( '2d.seg-midpoint-of/1' @ ( '2d.seg/2' @ V_I @ V_F ) )
          = V_G ) )
     => ? [V_X: '2d.Point'] :
          ( ( '2d.intersect/3' @ ( '2d.line/2' @ V_D @ V_G ) @ ( '2d.line/2' @ V_E @ V_I ) @ V_X )
          & ( '2d.on/2' @ V_X @ V_Ga ) ) ) )).

