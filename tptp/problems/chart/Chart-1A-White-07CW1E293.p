%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E293
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  133 (  15 equality;  30 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :  103 (   0   ~;   0   |;  12   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   9   ?;   6   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    2 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_V: $real,V_A: $real,V_S: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( 2.0
          = ( '3d.radius-of/1' @ V_S ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_S ) )
        & ( V_A
          = ( '3d.area-of/1' @ V_S ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_V @ ( 'cons/2' @ $real @ V_A @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_V: $real,V_A: $real,V_S: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( ( 'sqrt/1' @ 5.0 )
          = ( '3d.radius-of/1' @ V_S ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_S ) )
        & ( V_A
          = ( '3d.area-of/1' @ V_S ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_V @ ( 'cons/2' @ $real @ V_A @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_V: $real,V_A: $real,V_S: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( ( $quotient @ 12.0 @ 2.0 )
          = ( '3d.radius-of/1' @ V_S ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_S ) )
        & ( V_A
          = ( '3d.area-of/1' @ V_S ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_V @ ( 'cons/2' @ $real @ V_A @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 32.0 @ 3.0 ) @ 'Pi/0' ) @ ( 'cons/2' @ $real @ ( $product @ 16.0 @ 'Pi/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $product @ ( $quotient @ ( $product @ 20.0 @ ( 'sqrt/1' @ 5.0 ) ) @ 3.0 ) @ 'Pi/0' ) @ ( 'cons/2' @ $real @ ( $product @ 20.0 @ 'Pi/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $product @ 288.0 @ 'Pi/0' ) @ ( 'cons/2' @ $real @ ( $product @ 144.0 @ 'Pi/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p3_question,[])).

