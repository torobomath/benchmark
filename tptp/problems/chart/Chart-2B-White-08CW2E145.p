%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E145
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   8 equality;   8 variable)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   36 (   0   ~;   0   |;   0   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   0   ?;   8   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   0 pred;    1 func;   13 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ '2d.origin/0' @ ( '2d.line2d/3' @ 3.0 @ 4.0 @ 12.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ -3.0 @ 7.0 ) @ ( '2d.line2d/3' @ 12.0 @ -5.0 @ 7.0 ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ ( '2d.line2d/3' @ 0.0 @ 1.0 @ 4.0 ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ 2.0 @ 8.0 ) @ ( '2d.line2d/3' @ 1.0 @ 0.0 @ -1.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: $real] :
      ( V_d_dot_0
      = ( $quotient @ 12.0 @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 6.0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 2.0 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 3.0 ) ),
    answer_to(p4_question,[])).

