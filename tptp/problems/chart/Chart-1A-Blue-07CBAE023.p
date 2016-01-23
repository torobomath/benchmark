%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE023
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  322 (   2 equality; 194 variable)
%            Maximal formula depth :   28 (  26 average)
%            Number of connectives :  314 (   0   ~;   0   |;  48   &; 262   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :   38 (   0 sgn;  36   !;   2   ?;   0   ^)
%                                         (  38   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p11,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( '2d.seg/2' @ V_B @ V_D ) @ V_O )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_R ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_S @ ( '2d.seg/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_S ) @ ( '2d.line/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) ) )
     => ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_O @ V_P @ V_S ) )
        = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_O @ V_A @ V_S ) ) ) ) )).

thf(p12,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( '2d.seg/2' @ V_B @ V_D ) @ V_O )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_R ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_S @ ( '2d.seg/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_S ) @ ( '2d.line/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) ) )
     => ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_O @ V_A @ V_S ) )
        = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_S @ V_R @ V_D ) ) ) ) )).

thf(p13,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( '2d.seg/2' @ V_B @ V_D ) @ V_O )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_R ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_S @ ( '2d.seg/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_S ) @ ( '2d.line/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) ) )
     => ? [V_Cir: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_Cir )
          & ( '2d.on/2' @ V_P @ V_Cir )
          & ( '2d.on/2' @ V_Q @ V_Cir )
          & ( '2d.on/2' @ V_R @ V_Cir )
          & ( '2d.on/2' @ V_S @ V_Cir ) ) ) )).

thf(p3,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( '2d.seg/2' @ V_B @ V_D ) @ V_O )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_R ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_S @ ( '2d.seg/2' @ V_D @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_S ) @ ( '2d.line/2' @ V_D @ V_A ) )
        & ? [V_Cir: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_Cir )
            & ( '2d.on/2' @ V_P @ V_Cir )
            & ( '2d.on/2' @ V_Q @ V_Cir )
            & ( '2d.on/2' @ V_R @ V_Cir )
            & ( '2d.on/2' @ V_S @ V_Cir ) ) )
     => ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) ) ) )).
