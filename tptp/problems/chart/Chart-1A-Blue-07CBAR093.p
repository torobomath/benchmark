%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR093
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  123 (   3 equality;  69 variable)
%            Maximal formula depth :   25 (  17 average)
%            Number of connectives :  114 (   0   ~;   0   |;  16   &;  97   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   8   !;   8   ?;   2   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_O: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_A @ V_P ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_Q ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_C @ V_R ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_Q @ V_R ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_S ) )
     => ( ( $product @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_S @ V_C ) ) )
        = ( $product @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_S ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_C ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_anglePAS: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_O: '2d.Point',V_S: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_A @ V_P ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_Q ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_C @ V_R ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_Q @ V_R ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_S )
        & ( '2d.is-incenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_anglePAS
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_A @ V_S ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_anglePAS_dot_0: $real] :
      ( V_anglePAS_dot_0
      = ( $product @ 90.0 @ 'Degree/0' ) ) ),
    answer_to(p2_question,[])).

