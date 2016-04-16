%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C009
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   97 (  12 equality;  20 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   65 (   0   ~;   0   |;   8   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   1 pred;    2 func;   13 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 4.0 @ 3.0 @ 12.0 ) )
        & ( $less @ 0.0 @ V_d )
        & ( ( '^/2' @ V_d @ 2.0 )
          = ( '2d.point-shape-distance^2/2' @ '2d.origin/0' @ V_l ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 2.0 @ -3.0 @ -5.0 ) )
        & ( $less @ 0.0 @ V_d )
        & ( ( '^/2' @ V_d @ 2.0 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ 4.0 @ -1.0 ) @ V_l ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 1.0 @ 0.0 @ 2.0 ) )
        & ( $less @ 0.0 @ V_d )
        & ( ( '^/2' @ V_d @ 2.0 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ -1.0 @ 3.0 ) @ V_l ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 0.0 @ 1.0 @ 3.0 ) )
        & ( $less @ 0.0 @ V_d )
        & ( ( '^/2' @ V_d @ 2.0 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ 5.0 @ 6.0 ) @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: $real] :
      ( V_d_dot_0
      = ( $quotient @ 12.0 @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: $real] :
      ( V_d_dot_0
      = ( $quotient @ ( $product @ 16.0 @ ( 'sqrt/1' @ 13.0 ) ) @ 13.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 3.0 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_d_dot_0: $real] : ( V_d_dot_0 = 3.0 ) ),
    answer_to(p4_question,[])).

