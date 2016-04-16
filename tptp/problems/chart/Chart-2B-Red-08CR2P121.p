%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P121
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  171 (  12 equality;  19 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :  147 (   0   ~;   1   |;  16   &; 130   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   2   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   3   ?;   6   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( ( '2d.point/2' @ 2.0 @ 1.0 )
          = ( '2d.center-of/1' @ V_circle ) )
        & ( '2d.tangent/2' @ V_circle @ '2d.x-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_circle ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( ( '2d.point/2' @ -1.0 @ 2.0 )
          = ( '2d.center-of/1' @ V_circle ) )
        & ( '2d.tangent/2' @ V_circle @ '2d.y-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_circle ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( '2d.tangent/2' @ V_circle @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_circle @ '2d.y-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ 2.0 @ 4.0 ) @ V_circle )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_circle ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 1.0
        = ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 1.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 1.0
        = ( $sum @ ( '^/2' @ ( $sum @ 'x/0' @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 2.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( 4.0
          = ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 2.0 ) @ 2.0 ) ) )
        | ( 100.0
          = ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 10.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 10.0 ) @ 2.0 ) ) ) ) ) ),
    answer_to(p3_question,[])).

