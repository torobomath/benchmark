%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R114
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   80 (  10 equality;  28 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   56 (   0   ~;   0   |;  10   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_R: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape'] :
        ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 7.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 6.0 )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( ( '2d.radius-of/1' @ V_K )
          = V_R ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape'] :
        ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 7.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 6.0 )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ V_K @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.radius-of/1' @ V_K )
          = V_r ) ) )).

thf(p1_answer,answer,(
    ^ [V_R_dot_0: $real] :
      ( V_R_dot_0
      = ( $quotient @ ( $product @ 35.0 @ ( 'sqrt/1' @ 6.0 ) ) @ 24.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( $quotient @ ( $product @ 2.0 @ ( 'sqrt/1' @ 6.0 ) ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

