%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E024
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  188 (  12 equality;  61 variable)
%            Maximal formula depth :   28 (  11 average)
%            Number of connectives :  160 (   0   ~;   0   |;  18   &; 142   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   3   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;  10   ?;   5   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('S/0_type',type,(
    'S/0': $real )).

thf('T/0_type',type,(
    'T/0': $real )).

thf('theta/0_type',type,(
    'theta/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_L: $real] :
      ? [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( ( '2d.radius-of/1' @ V_Cir )
          = 1.0 )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_Cir )
        & ( V_L
          = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ 2.0 ) ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_A ) ) @ 2.0 ) ) ) ) )
        & ( 'S/0'
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_D ) ) )
        & ( 'T/0'
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) ) )
        & ( 'theta/0'
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
        & ( $less @ ( $product @ 0.0 @ 'Degree/0' ) @ 'theta/0' )
        & ( $less @ 'theta/0' @ ( $product @ 90.0 @ 'Degree/0' ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_maxL: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_L: $real] :
            ? [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
              ( ( '2d.circle-type/1' @ V_Cir )
              & ( ( '2d.radius-of/1' @ V_Cir )
                = 1.0 )
              & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_Cir )
              & ( V_L
                = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ 2.0 ) ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_A ) ) @ 2.0 ) ) ) ) )
              & ( 'S/0'
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_D ) ) )
              & ( 'T/0'
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) ) )
              & ( 'theta/0'
                = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
              & ( $less @ ( $product @ 0.0 @ 'Degree/0' ) @ 'theta/0' )
              & ( $less @ 'theta/0' @ ( $product @ 90.0 @ 'Degree/0' ) ) ) )
        @ V_maxL ) )).

thf(p1_answer,answer,(
    ^ [V_L_dot_0: $real] :
      ( V_L_dot_0
      = ( $product @ ( $quotient @ 4.0 @ ( 'tan/1' @ ( $quotient @ 'theta/0' @ 'Degree/0' ) ) ) @ ( $sum @ 'S/0' @ 'T/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxL_dot_0: $real] :
      ( V_maxL_dot_0
      = ( $product @ 8.0 @ ( 'cos/1' @ ( $quotient @ 'theta/0' @ 'Degree/0' ) ) ) ) ),
    answer_to(p2_question,[])).

