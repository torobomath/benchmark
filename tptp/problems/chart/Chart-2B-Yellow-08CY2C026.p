%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2C026
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   29 (   4 equality;   4 variable)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   17 (   0   ~;   0   |;   0   &;  17   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    0 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.distance/2' @ ( '2d.point/2' @ -2.0 @ 4.0 ) @ ( '2d.point/2' @ 7.0 @ -3.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ -6.0 @ 8.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: $real] :
      ( V_d_dot_0
      = ( 'sqrt/1' @ 130.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 10.0 ) ),
    answer_to(p2_question,[])).

