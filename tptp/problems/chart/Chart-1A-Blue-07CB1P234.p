%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P234
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  126 (   7 equality;  32 variable)
%            Maximal formula depth :   25 (  18 average)
%            Number of connectives :  112 (   0   ~;   0   |;  10   &; 102   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    2 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_C ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.point/2' @ -1.0 @ 0.0 ) ) )
        & ( $greater @ 0.0 @ ( '2d.vec-x-coord/1' @ ( '2d.vec/2' @ V_A @ V_B ) ) )
        & ( $less @ 0.0 @ ( '2d.vec-y-coord/1' @ ( '2d.vec/2' @ V_A @ V_B ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( $product @ 30.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
          = ( $product @ 30.0 @ 'Degree/0' ) )
        & ( 500.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( $greater @ 0.0 @ ( '2d.vec-x-coord/1' @ ( '2d.vec/2' @ V_A @ V_D ) ) )
        & ( $greater @ 0.0 @ ( '2d.vec-y-coord/1' @ ( '2d.vec/2' @ V_A @ V_D ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_D @ V_B ) )
          = ( $product @ 60.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) )
          = ( $product @ 45.0 @ 'Degree/0' ) )
        & ( V_ans
          = ( 'cons/2' @ $real @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ ( 'cons/2' @ $real @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) @ ( 'cons/2' @ $real @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( V_ans_dot_0
      = ( 'cons/2' @ $real @ ( $product @ 500.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 500.0 @ ( 'sqrt/1' @ 6.0 ) ) @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 500.0 @ ( 'sqrt/1' @ 15.0 ) ) @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p_question,[])).

