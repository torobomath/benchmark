%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P252
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (  10 equality;  18 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   30 (   0   ~;   0   |;  10   &;  20   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    0 func;    3 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_h: $real] :
      ? [V_C: '3d.Shape',V_S: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_C )
        & ( 4.0
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_C ) ) )
        & ( V_h
          = ( '3d.height-of/1' @ V_C ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( 6.0
          = ( '3d.radius-of/1' @ V_S ) )
        & ( ( '3d.volume-of/1' @ V_C )
          = ( '3d.volume-of/1' @ V_S ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_h: $real] :
      ? [V_C: '3d.Shape',V_S: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_C )
        & ( 4.0
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_C ) ) )
        & ( V_h
          = ( '3d.height-of/1' @ V_C ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( 4.0
          = ( '3d.radius-of/1' @ V_S ) )
        & ( ( '3d.area-of/1' @ V_C )
          = ( '3d.area-of/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_h_dot_0: $real] : ( V_h_dot_0 = 18.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_h_dot_0: $real] : ( V_h_dot_0 = 4.0 ) ),
    answer_to(p2_question,[])).

