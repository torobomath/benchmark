%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAC036
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   80 (   8 equality;  28 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   64 (   0   ~;   0   |;  13   &;  49   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   4   !;   2   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_r1r2: ( 'ListOf' @ $real )] :
      ? [V_r1: $real,V_r2: $real] :
        ( ( $less @ V_r1 @ V_r2 )
        & ( $less @ 0.0 @ V_r1 )
        & ( $less @ 0.0 @ V_r2 )
        & ! [V_K1_dot_0: '2d.Shape',V_K2_dot_0: '2d.Shape'] :
            ( ( ( '2d.circle-type/1' @ V_K1_dot_0 )
              & ( '2d.circle-type/1' @ V_K2_dot_0 )
              & ( V_r1
                = ( '2d.radius-of/1' @ V_K1_dot_0 ) )
              & ( V_r2
                = ( '2d.radius-of/1' @ V_K2_dot_0 ) )
              & ( ( '2d.distance/2' @ ( '2d.center-of/1' @ V_K1_dot_0 ) @ ( '2d.center-of/1' @ V_K2_dot_0 ) )
                = 7.0 ) )
           => ( '2d.is-circumscribed-about/2' @ V_K1_dot_0 @ V_K2_dot_0 ) )
        & ! [V_K1: '2d.Shape',V_K2: '2d.Shape'] :
            ( ( ( '2d.circle-type/1' @ V_K1 )
              & ( '2d.circle-type/1' @ V_K2 )
              & ( V_r1
                = ( '2d.radius-of/1' @ V_K1 ) )
              & ( V_r2
                = ( '2d.radius-of/1' @ V_K2 ) )
              & ( ( '2d.distance/2' @ ( '2d.center-of/1' @ V_K1 ) @ ( '2d.center-of/1' @ V_K2 ) )
                = 4.0 ) )
           => ( '2d.is-inscribed-in/2' @ V_K1 @ V_K2 ) )
        & ( V_r1r2
          = ( 'cons/2' @ $real @ V_r1 @ ( 'cons/2' @ $real @ V_r2 @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_r1r2_dot_0: ( 'ListOf' @ $real )] :
      ( V_r1r2_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 11.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p_question,[])).

