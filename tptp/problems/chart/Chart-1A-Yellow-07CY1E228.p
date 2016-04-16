%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E228
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  151 (  14 equality;  62 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :  117 (   0   ~;   0   |;  29   &;  85   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   3   !;  11   ?;   6   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_h: $real] :
      ? [V_Cone: '3d.Shape',V_A: '3d.Shape',V_B: '3d.Shape'] :
        ( ( '3d.right-cone-type/1' @ V_Cone )
        & ( '3d.sphere-type/1' @ V_A )
        & ( '3d.sphere-type/1' @ V_B )
        & ( 2.0
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
        & ! [V_Q: '3d.Point'] :
            ( ( '3d.on/2' @ V_Q @ ( '3d.boundary-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
           => ( 6.0
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Q @ ( '3d.vertice-of/1' @ V_Cone ) ) ) ) )
        & ( '3d.is-inscribed-in/2' @ V_A @ V_Cone )
        & ( '3d.is-inscribed-in/2' @ V_B @ ( '3d.side-of/1' @ V_Cone ) )
        & ( '3d.tangent/2' @ V_A @ V_B )
        & ( '3d.point-outside-of/2' @ ( '3d.center-of/1' @ V_B ) @ V_A )
        & ( V_h
          = ( '3d.height-of/1' @ V_Cone ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_Cone: '3d.Shape',V_A: '3d.Shape',V_B: '3d.Shape'] :
        ( ( '3d.right-cone-type/1' @ V_Cone )
        & ( '3d.sphere-type/1' @ V_A )
        & ( '3d.sphere-type/1' @ V_B )
        & ( 2.0
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
        & ! [V_Q: '3d.Point'] :
            ( ( '3d.on/2' @ V_Q @ ( '3d.boundary-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
           => ( 6.0
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Q @ ( '3d.vertice-of/1' @ V_Cone ) ) ) ) )
        & ( '3d.is-inscribed-in/2' @ V_A @ V_Cone )
        & ( '3d.is-inscribed-in/2' @ V_B @ ( '3d.side-of/1' @ V_Cone ) )
        & ( '3d.tangent/2' @ V_A @ V_B )
        & ( '3d.point-outside-of/2' @ ( '3d.center-of/1' @ V_B ) @ V_A )
        & ( V_r
          = ( '3d.radius-of/1' @ V_A ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ratio: $real] :
      ? [V_Cone: '3d.Shape',V_A: '3d.Shape',V_B: '3d.Shape',V_VA: $real,V_VB: $real] :
        ( ( '3d.right-cone-type/1' @ V_Cone )
        & ( '3d.sphere-type/1' @ V_A )
        & ( '3d.sphere-type/1' @ V_B )
        & ( 2.0
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
        & ! [V_Q: '3d.Point'] :
            ( ( '3d.on/2' @ V_Q @ ( '3d.boundary-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
           => ( 6.0
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Q @ ( '3d.vertice-of/1' @ V_Cone ) ) ) ) )
        & ( '3d.is-inscribed-in/2' @ V_A @ V_Cone )
        & ( '3d.is-inscribed-in/2' @ V_B @ ( '3d.side-of/1' @ V_Cone ) )
        & ( '3d.tangent/2' @ V_A @ V_B )
        & ( '3d.point-outside-of/2' @ ( '3d.center-of/1' @ V_B ) @ V_A )
        & ( V_VA
          = ( '3d.volume-of/1' @ V_A ) )
        & ( V_VB
          = ( '3d.volume-of/1' @ V_B ) )
        & ( V_ratio
          = ( $quotient @ V_VA @ V_VB ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_h_dot_0: $real] :
      ( V_h_dot_0
      = ( $product @ 4.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( 'sqrt/1' @ 2.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_ratio_dot_0: $real] : ( V_ratio_dot_0 = 8.0 ) ),
    answer_to(p3_question,[])).

