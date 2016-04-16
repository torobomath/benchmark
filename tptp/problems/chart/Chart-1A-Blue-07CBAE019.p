%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE019
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    8 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  298 (   6 equality; 125 variable)
%            Maximal formula depth :   33 (  16 average)
%            Number of connectives :  287 (   3   ~;   0   |;  46   &; 236   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   4   :;   0   =)
%            Number of variables   :   32 (   0 sgn;  22   !;   6   ?;   4   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    2 func;    0 numbers)

include('axioms.ax').

thf('A/0_type',type,(
    'A/0': '2d.Point' )).

thf('B/0_type',type,(
    'B/0': '2d.Point' )).

thf('C/0_type',type,(
    'C/0': '2d.Point' )).

thf('l/0_type',type,(
    'l/0': '2d.Shape' )).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape',V_A_: '2d.Point',V_B_: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
      ( ( ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_A @ V_l )
        & ( '2d.on/2' @ V_B @ V_l )
        & ( '2d.on/2' @ V_C @ V_l )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_B ) @ ( '2d.vec/2' @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_O )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_O )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.on/2' @ V_C @ V_m )
        & ( V_l != V_m )
        & ( '2d.intersect/3' @ V_O @ V_m @ V_B_ )
        & ( '2d.intersect/3' @ V_O @ V_m @ V_A_ )
        & ( $greater @ ( '2d.distance/2' @ V_C @ V_A_ ) @ ( '2d.distance/2' @ V_C @ V_B_ ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_A_ ) @ ( '2d.line/2' @ V_B @ V_B_ ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B_ ) @ ( '2d.line/2' @ V_B @ V_A_ ) @ V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ V_l @ V_R ) )
     => ( ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_R ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R @ V_B ) ) )
        = ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_B ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape',V_A_: '2d.Point',V_B_: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
      ( ( ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_A @ V_l )
        & ( '2d.on/2' @ V_B @ V_l )
        & ( '2d.on/2' @ V_C @ V_l )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_B ) @ ( '2d.vec/2' @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_O )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_O )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.on/2' @ V_C @ V_m )
        & ( V_l != V_m )
        & ( '2d.intersect/3' @ V_O @ V_m @ V_B_ )
        & ( '2d.intersect/3' @ V_O @ V_m @ V_A_ )
        & ( $greater @ ( '2d.distance/2' @ V_C @ V_A_ ) @ ( '2d.distance/2' @ V_C @ V_B_ ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_A_ ) @ ( '2d.line/2' @ V_B @ V_B_ ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B_ ) @ ( '2d.line/2' @ V_B @ V_A_ ) @ V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ V_l @ V_R ) )
     => ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_P @ V_R ) @ V_l ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'SetOf' @ '2d.Point' )
    @ ^ [V_locP: ( 'SetOf' @ '2d.Point' )] :
        ( V_locP
        = ( 'set-by-def/1' @ '2d.Point'
          @ ^ [V_P: '2d.Point'] :
            ? [V_m: '2d.Shape',V_O: '2d.Shape',V_A_: '2d.Point',V_B_: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
              ( ( '2d.line-type/1' @ 'l/0' )
              & ( '2d.on/2' @ 'A/0' @ 'l/0' )
              & ( '2d.on/2' @ 'B/0' @ 'l/0' )
              & ( '2d.on/2' @ 'C/0' @ 'l/0' )
              & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ 'A/0' @ 'B/0' ) @ ( '2d.vec/2' @ 'B/0' @ 'C/0' ) )
              & ( '2d.circle-type/1' @ V_O )
              & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ 'A/0' @ 'B/0' ) @ V_O )
              & ( '2d.line-type/1' @ V_m )
              & ( '2d.on/2' @ 'C/0' @ V_m )
              & ( 'l/0' != V_m )
              & ( '2d.intersect/3' @ V_O @ V_m @ V_B_ )
              & ( '2d.intersect/3' @ V_O @ V_m @ V_A_ )
              & ( $greater @ ( '2d.distance/2' @ 'C/0' @ V_A_ ) @ ( '2d.distance/2' @ 'C/0' @ V_B_ ) )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ 'A/0' @ V_A_ ) @ ( '2d.line/2' @ 'B/0' @ V_B_ ) @ V_P )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ 'A/0' @ V_B_ ) @ ( '2d.line/2' @ 'B/0' @ V_A_ ) @ V_Q )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ 'l/0' @ V_R ) ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_locP_dot_0: ( 'SetOf' @ '2d.Point' )] :
      ( V_locP_dot_0
      = ( 'set-by-def/1' @ '2d.Point'
        @ ^ [V_P_dot_0: '2d.Point'] :
            ( ( '2d.perpendicular/2' @ 'l/0' @ ( '2d.line/2' @ V_P_dot_0 @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'B/0' @ 'C/0' ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'A/0' @ 'C/0' ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'B/0' @ 'C/0' ) ) ) ) @ ( '2d.vec/2' @ '2d.origin/0' @ 'A/0' ) ) @ ( '2d.sv*/2' @ ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'A/0' @ 'C/0' ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'A/0' @ 'C/0' ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ 'B/0' @ 'C/0' ) ) ) ) @ ( '2d.vec/2' @ '2d.origin/0' @ 'B/0' ) ) ) ) ) )
            & ( $greater @ ( '2d.distance^2/2' @ V_P_dot_0 @ ( '2d.midpoint-of/2' @ 'A/0' @ 'B/0' ) ) @ ( '2d.distance^2/2' @ ( '2d.midpoint-of/2' @ 'A/0' @ 'B/0' ) @ 'A/0' ) ) ) ) ) ),
    answer_to(p3_question,[])).

