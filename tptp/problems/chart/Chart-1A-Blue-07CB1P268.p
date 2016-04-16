%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P268
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   59 (   3 equality;  26 variable)
%            Maximal formula depth :   27 (  12 average)
%            Number of connectives :   51 (   0   ~;   0   |;   5   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   1   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   7   ?;   3   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    2 func;    1 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minL: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_L: $real] :
            ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point'] :
              ( ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
              & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ V_A @ V_B ) )
              & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C ) )
              & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_O @ V_C ) )
              & ( 'a/0'
                = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) )
              & ( V_L
                = ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_Q ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Q @ V_R ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_R @ V_A ) ) ) ) ) ) ) )
        @ V_minL ) )).

thf(p_answer,answer,(
    ^ [V_minL_dot_0: $real] :
      ( V_minL_dot_0
      = ( $product @ ( 'sqrt/1' @ 7.0 ) @ 'a/0' ) ) ),
    answer_to(p_question,[])).

