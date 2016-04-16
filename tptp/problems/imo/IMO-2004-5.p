%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% In a convex quadrilateral ABCD the diagonal BD does not
%% bisect the angles ABC and CDA. The point P lies inside ABCD and
%% satisfies
%% angle(PBC) = angle(DBA) and angle(PDC) = angle(BDA).
%% Prove that ABCD is a cyclic quadrilateral if and only if AP = CP.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   3 equality;  41 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   63 (   2   ~;   0   |;   6   &;  53   @)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   5   !;   1   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ~ ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ~ ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_C ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_B @ V_A ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_D @ V_C ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_D @ V_A ) ) ) )
     => ( ? [V_O: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_O )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_O ) )
      <=> ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) ) ) ) )).

