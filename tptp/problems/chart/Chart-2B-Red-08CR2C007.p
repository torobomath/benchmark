%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C007
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   4 equality;   8 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :   18 (   0   ~;   0   |;   3   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    0 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_G: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 1.0 @ 3.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 4.0 @ -3.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 7.0 @ 6.0 ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).

thf(p_answer,answer,(
    ^ [V_G_dot_0: '2d.Point'] :
      ( V_G_dot_0
      = ( '2d.point/2' @ 4.0 @ 2.0 ) ) ),
    answer_to(p_question,[])).

