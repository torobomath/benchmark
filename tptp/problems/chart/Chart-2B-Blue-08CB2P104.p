%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P104
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :   15 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  280 (  23 equality;  20 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :  237 (   3   ~;   1   |;  19   &; 214   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   3   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   20 (   0 pred;    4 func;   16 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ -2.0 @ 4.0 ) @ V_P ) )
            & ( '2d.is-slope-of/2' @ -3.0 @ ( '2d.line/2' @ ( '2d.point/2' @ -2.0 @ 4.0 ) @ V_P ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( V_P
             != ( '2d.point/2' @ 5.0 @ 6.0 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 5.0 @ 6.0 ) @ V_P ) )
            & ( '2d.parallel/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 5.0 @ 6.0 ) @ V_P ) @ '2d.y-axis/0' ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( V_P
             != ( '2d.point/2' @ 8.0 @ -7.0 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 8.0 @ -7.0 ) @ V_P ) )
            & ( '2d.perpendicular/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 8.0 @ -7.0 ) @ V_P ) @ '2d.y-axis/0' ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 3.0 @ -5.0 ) @ ( '2d.point/2' @ -7.0 @ 2.0 ) ) ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 2.0 @ 3.0 ) @ ( '2d.point/2' @ -1.0 @ 3.0 ) ) ) ) )).

thf(p6_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 'a/0' @ -4.0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ -3.0 @ 'x/0' ) @ -2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 5.0 = 'x/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( -7.0 = 'y/0' ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ ( $quotient @ -7.0 @ 10.0 ) @ 'x/0' ) @ ( $quotient @ -29.0 @ 10.0 ) ) ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 3.0 = 'y/0' ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( ( 'a/0' != 1.0 )
          & ( 'y/0'
            = ( $sum @ ( $product @ ( $quotient @ -4.0 @ ( $difference @ 'a/0' @ 1.0 ) ) @ 'x/0' ) @ ( $quotient @ 4.0 @ ( $difference @ 'a/0' @ 1.0 ) ) ) ) )
        | ( ( 1.0 = 'a/0' )
          & ( 1.0 = 'x/0' ) ) ) ) ),
    answer_to(p6_question,[])).

