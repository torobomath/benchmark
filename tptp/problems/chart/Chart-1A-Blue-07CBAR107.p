%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR107
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  173 (   1 equality; 107 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :  169 (   0   ~;   0   |;  32   &; 135   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;  18   !;   3   ?;   0   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_lD: '2d.Shape',V_lE: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_C @ V_E ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.line-type/1' @ V_lD )
        & ( '2d.on/2' @ V_D @ V_lD )
        & ( '2d.parallel/2' @ V_lD @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.intersect/3' @ V_lD @ ( '2d.line/2' @ V_B @ V_C ) @ V_F )
        & ( '2d.line-type/1' @ V_lE )
        & ( '2d.on/2' @ V_E @ V_lE )
        & ( '2d.parallel/2' @ V_lE @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ V_lE @ ( '2d.line/2' @ V_B @ V_C ) @ V_G )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.intersect/3' @ ( '2d.seg/2' @ V_E @ V_G ) @ ( '2d.seg/2' @ V_F @ V_D ) @ V_P )
            & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_E @ V_G ) )
        = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_lD: '2d.Shape',V_lE: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_C @ V_E ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.line-type/1' @ V_lD )
        & ( '2d.on/2' @ V_D @ V_lD )
        & ( '2d.parallel/2' @ V_lD @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.intersect/3' @ V_lD @ ( '2d.line/2' @ V_B @ V_C ) @ V_F )
        & ( '2d.line-type/1' @ V_lE )
        & ( '2d.on/2' @ V_E @ V_lE )
        & ( '2d.parallel/2' @ V_lE @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ V_lE @ ( '2d.line/2' @ V_B @ V_C ) @ V_G )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.intersect/3' @ ( '2d.seg/2' @ V_E @ V_G ) @ ( '2d.seg/2' @ V_F @ V_D ) @ V_P )
            & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ? [V_Cir: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_Cir )
          & ( '2d.on/2' @ V_D @ V_Cir )
          & ( '2d.on/2' @ V_E @ V_Cir )
          & ( '2d.on/2' @ V_F @ V_Cir )
          & ( '2d.on/2' @ V_G @ V_Cir ) ) ) )).

