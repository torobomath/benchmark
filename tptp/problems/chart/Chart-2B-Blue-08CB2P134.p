%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P134
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  149 (  11 equality;  14 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :  127 (   0   ~;   0   |;  12   &; 115   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   2   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    2 func;    9 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 3.0 @ -2.0 ) @ 4.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( ( '2d.point/2' @ 0.0 @ 3.0 )
              = ( '2d.center-of/1' @ V_circle ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ -1.0 @ 6.0 ) @ V_circle )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_circle ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( ( '2d.point/2' @ -2.0 @ 4.0 )
              = ( '2d.center-of/1' @ V_circle ) )
            & ( '2d.tangent/2' @ '2d.x-axis/0' @ V_circle )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_circle ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 16.0
        = ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 3.0 ) @ 2.0 ) @ ( '^/2' @ ( $sum @ 'y/0' @ 2.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 10.0
        = ( $sum @ ( '^/2' @ 'x/0' @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 3.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 16.0
        = ( $sum @ ( '^/2' @ ( $sum @ 'x/0' @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'y/0' @ 4.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p3_question,[])).

