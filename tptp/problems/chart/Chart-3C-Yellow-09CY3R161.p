%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R161
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   91 (   7 equality;  32 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :   73 (   0   ~;   0   |;  11   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   40 (   1   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  10   ?;   6   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_R1: '2d.Point',V_R2: '2d.Point',V_R3: '2d.Point',V_R4: '2d.Point'] :
        ( ( '2d.is-regular-square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R1 @ V_R2 ) )
          = 4.0 )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_P: '2d.Point'] :
                ? [V_C: '2d.Shape'] :
                  ( ( '2d.circle-type/1' @ V_C )
                  & ( $lesseq @ 1.0 @ 'r/0' )
                  & ( ( '2d.radius-of/1' @ V_C )
                    = 'r/0' )
                  & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ ( '2d.square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 ) )
                  & ( '2d.point-inside-of/2' @ V_P @ V_C ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_R1: '2d.Point',V_R2: '2d.Point',V_R3: '2d.Point',V_R4: '2d.Point'] :
        ( ( '2d.is-regular-square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 )
        & ( V_V
          = ( '3d.volume-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_P: '3d.Point'] :
                ? [V_C: '3d.Shape'] :
                  ( ( '3d.is-sphere/1' @ V_C )
                  & ( ( '3d.radius-of/1' @ V_C )
                    = 1.0 )
                  & ( '3d.on/2' @ ( '3d.center-of/1' @ V_C ) @ ( '3d.import-2d-shape/1' @ ( '2d.square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 ) ) )
                  & ( '3d.point-inside-of/2' @ V_P @ V_C ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $lesseq @ 'r/0' @ 1.0 )
      & ( V_S_dot_0
        = ( $sum @ ( $product @ 32.0 @ 'r/0' ) @ ( $product @ ( $difference @ 'Pi/0' @ 4.0 ) @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $quotient @ ( $difference @ ( $product @ 52.0 @ 'Pi/0' ) @ 16.0 ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

