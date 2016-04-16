%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R062
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :   16 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  314 (  23 equality;  22 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :  270 (   2   ~;   0   |;  19   &; 249   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   2   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;   3   ?;  14   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   0 pred;    3 func;   13 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p11_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ -1.0 @ 3.0 ) @ V_P ) )
            & ( '2d.is-slope-of/2' @ -2.0 @ ( '2d.line/2' @ ( '2d.point/2' @ -1.0 @ 3.0 ) @ V_P ) ) ) ) )).

thf(p12_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( ( '2d.point/2' @ 4.0 @ 1.0 )
             != V_P )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 4.0 @ 1.0 ) @ V_P ) )
            & ( '2d.perpendicular/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 4.0 @ 1.0 ) @ V_P ) @ '2d.x-axis/0' ) ) ) )).

thf(p13_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( ( '2d.point/2' @ 5.0 @ 3.0 )
             != V_P )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 5.0 @ 3.0 ) @ V_P ) )
            & ( '2d.parallel/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 5.0 @ 3.0 ) @ V_P ) @ '2d.x-axis/0' ) ) ) )).

thf(p21_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ -2.0 ) @ ( '2d.point/2' @ -3.0 @ 4.0 ) ) ) ) )).

thf(p22_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ -5.0 @ 7.0 ) @ ( '2d.point/2' @ 6.0 @ 7.0 ) ) ) ) )).

thf(p23_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ ( $quotient @ -1.0 @ 3.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ -1.0 ) ) ) ) )).

thf(p24_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ ( $quotient @ 5.0 @ 2.0 ) @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ ( $quotient @ -1.0 @ 3.0 ) ) ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ -2.0 @ 'x/0' ) @ 1.0 ) ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 4.0 = 'x/0' ) ) ),
    answer_to(p12_question,[])).

thf(p13_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 3.0 = 'y/0' ) ) ),
    answer_to(p13_question,[])).

thf(p21_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ ( $quotient @ -3.0 @ 2.0 ) @ 'x/0' ) @ ( $quotient @ -1.0 @ 2.0 ) ) ) ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 7.0 = 'y/0' ) ) ),
    answer_to(p22_question,[])).

thf(p23_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $quotient @ 3.0 @ 2.0 )
        = 'x/0' ) ) ),
    answer_to(p23_question,[])).

thf(p24_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 5.0
        = ( $sum @ ( $product @ 2.0 @ 'x/0' ) @ ( $product @ -15.0 @ 'y/0' ) ) ) ) ),
    answer_to(p24_question,[])).

