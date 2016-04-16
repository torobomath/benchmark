%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP208
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  292 (  15 equality; 180 variable)
%            Maximal formula depth :   32 (  32 average)
%            Number of connectives :  264 (   6   ~;   0   |;  69   &; 184   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   50 (   0 sgn;  49   !;   1   ?;   0   ^)
%                                         (  50   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_r: $real,V_C: '2d.Shape',V_P: '2d.Point',V_l: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point',V_la: '2d.Shape',V_lb: '2d.Shape',V_H: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.center-of/1' @ V_C ) )
        & ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_P @ V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_A )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_B )
        & ( V_A != V_B )
        & ( '2d.line-type/1' @ V_la )
        & ( '2d.tangent/3' @ V_la @ V_C @ V_A )
        & ( '2d.line-type/1' @ V_lb )
        & ( '2d.tangent/3' @ V_lb @ V_C @ V_B )
        & ( '2d.intersect/3' @ V_la @ V_lb @ V_Q )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_O @ V_P ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_Q @ V_H ) @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( V_O != V_H ) ) )).

thf(p2,conjecture,(
    ! [V_O: '2d.Point',V_r: $real,V_C: '2d.Shape',V_P: '2d.Point',V_l: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point',V_la: '2d.Shape',V_lb: '2d.Shape',V_H: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.center-of/1' @ V_C ) )
        & ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_P @ V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_A )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_B )
        & ( V_A != V_B )
        & ( '2d.line-type/1' @ V_la )
        & ( '2d.tangent/3' @ V_la @ V_C @ V_A )
        & ( '2d.line-type/1' @ V_lb )
        & ( '2d.tangent/3' @ V_lb @ V_C @ V_B )
        & ( '2d.intersect/3' @ V_la @ V_lb @ V_Q )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_O @ V_P ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_Q @ V_H ) @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ? [V_Cir: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_Cir )
          & ( '2d.on/2' @ V_Q @ V_Cir )
          & ( '2d.on/2' @ V_A @ V_Cir )
          & ( '2d.on/2' @ V_H @ V_Cir )
          & ( '2d.on/2' @ V_O @ V_Cir )
          & ( '2d.on/2' @ V_B @ V_Cir ) ) ) )).

thf(p3,conjecture,(
    ! [V_O: '2d.Point',V_r: $real,V_C: '2d.Shape',V_P: '2d.Point',V_l: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point',V_la: '2d.Shape',V_lb: '2d.Shape',V_H: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.center-of/1' @ V_C ) )
        & ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_P @ V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_A )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_B )
        & ( V_A != V_B )
        & ( '2d.line-type/1' @ V_la )
        & ( '2d.tangent/3' @ V_la @ V_C @ V_A )
        & ( '2d.line-type/1' @ V_lb )
        & ( '2d.tangent/3' @ V_lb @ V_C @ V_B )
        & ( '2d.intersect/3' @ V_la @ V_lb @ V_Q )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_O @ V_P ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_Q @ V_H ) @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( ( $product @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_H ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_O ) ) )
        = ( $difference @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_O ) ) @ 2.0 ) @ ( '^/2' @ V_r @ 2.0 ) ) ) ) )).

thf(p4,conjecture,(
    ! [V_O: '2d.Point',V_r: $real,V_C: '2d.Shape',V_P: '2d.Point',V_l: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point',V_lA: '2d.Shape',V_lB: '2d.Shape',V_H: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.center-of/1' @ V_C ) )
        & ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_P @ V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_A )
        & ( '2d.intersect/3' @ V_l @ V_C @ V_B )
        & ( V_A != V_B )
        & ( '2d.line-type/1' @ V_lA )
        & ( '2d.tangent/3' @ V_lA @ V_C @ V_A )
        & ( '2d.line-type/1' @ V_lB )
        & ( '2d.tangent/3' @ V_lB @ V_C @ V_B )
        & ( '2d.intersect/3' @ V_lA @ V_lB @ V_Q )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_O @ V_P ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_Q @ V_H ) @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ! [V_T: '2d.Point',V_R: '2d.Point',V_S: '2d.Point',V_lR: '2d.Shape',V_lS: '2d.Shape'] :
          ( ( ( '2d.on/2' @ V_T @ ( '2d.line/2' @ V_Q @ V_H ) )
            & ( '2d.point-outside-of/2' @ V_T @ V_C )
            & ( '2d.tangent/3' @ V_lR @ V_C @ V_R )
            & ( '2d.tangent/3' @ V_lS @ V_C @ V_S )
            & ( V_R != V_S ) )
         => ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_R @ V_S ) ) ) ) )).

