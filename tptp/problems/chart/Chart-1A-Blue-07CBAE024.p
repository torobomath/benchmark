%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE024
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   5 equality;  24 variable)
%            Maximal formula depth :   22 (  16 average)
%            Number of connectives :   44 (   0   ~;   0   |;  13   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_C: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( '2d.circle-type/1' @ V_C3 )
        & ( '2d.circle-type/1' @ V_C )
        & ( ( '2d.radius-of/1' @ V_C1 )
          = V_a )
        & ( ( '2d.radius-of/1' @ V_C2 )
          = V_a )
        & ( ( '2d.radius-of/1' @ V_C3 )
          = ( $product @ 2.0 @ V_a ) )
        & ( ( '2d.radius-of/1' @ V_C )
          = 1.0 )
        & ( '2d.is-inscribed-in/2' @ V_C1 @ V_C )
        & ( '2d.is-inscribed-in/2' @ V_C2 @ V_C )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C )
        & ( '2d.is-circumscribed-about/2' @ V_C1 @ V_C2 )
        & ( '2d.is-circumscribed-about/2' @ V_C2 @ V_C3 )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C1 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( $quotient @ ( $difference @ ( $product @ 4.0 @ ( 'sqrt/1' @ 2.0 ) ) @ 5.0 ) @ 2.0 ) ) ),
    answer_to(p_question,[])).

