%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P120
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  181 (  14 equality;  44 variable)
%            Maximal formula depth :   29 (  11 average)
%            Number of connectives :  154 (   3   ~;   0   |;  16   &; 134   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   3   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   8   !;  10   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('m/0_type',type,(
    'm/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_BC: ( 'ListOf' @ $real )] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Bx: $real,V_By: $real,V_Cx: $real,V_Cy: $real] :
        ( ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'm/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( 'm/0' != 1.0 )
        & ( V_A
          = ( '2d.point/2' @ 'a/0' @ 'b/0' ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( V_C
          = ( '2d.point/2' @ V_Cx @ V_Cy ) )
        & ( '2d.line-symmetry/3' @ V_A @ V_B @ V_l1 )
        & ( '2d.line-symmetry/3' @ V_B @ V_C @ V_l2 )
        & ( '2d.line-symmetry/3' @ V_C @ V_D @ V_l1 )
        & ( V_BC
          = ( 'cons/2' @ $real @ V_Bx @ ( 'cons/2' @ $real @ V_By @ ( 'cons/2' @ $real @ V_Cx @ ( 'cons/2' @ $real @ V_Cy @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( ( V_m != 1.0 )
        & ! [V_l1: '2d.Shape',V_l2: '2d.Shape',V_A: '2d.Point',V_a: $real,V_b: $real,V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
            ( ( ( V_l1
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( V_l2
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_m @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( V_A
                = ( '2d.point/2' @ V_a @ V_b ) )
              & ( '2d.line-symmetry/3' @ V_A @ V_B @ V_l1 )
              & ( '2d.line-symmetry/3' @ V_B @ V_C @ V_l2 )
              & ( '2d.line-symmetry/3' @ V_C @ V_D @ V_l1 ) )
           => ( '2d.line-symmetry/3' @ V_A @ V_D @ V_l2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_BC_dot_0: ( 'ListOf' @ $real )] :
      ( ( 'm/0' != 1.0 )
      & ( V_BC_dot_0
        = ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( $product @ 'm/0' @ 'a/0' ) ) @ ( $product @ ( $difference @ 1.0 @ ( '^/2' @ 'm/0' @ 2.0 ) ) @ 'b/0' ) ) @ ( $sum @ ( '^/2' @ 'm/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $product @ ( $difference @ ( '^/2' @ 'm/0' @ 2.0 ) @ 1.0 ) @ 'a/0' ) @ ( $product @ 2.0 @ ( $product @ 'm/0' @ 'b/0' ) ) ) @ ( $sum @ ( '^/2' @ 'm/0' @ 2.0 ) @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = -1.0 ) ),
    answer_to(p2_question,[])).

