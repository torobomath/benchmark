%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E205
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   64 (   6 equality;  11 variable)
%            Maximal formula depth :   21 (   8 average)
%            Number of connectives :   52 (   0   ~;   0   |;   4   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   2   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    3 func;    5 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_t: $real,V_C: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_C )
            & ( V_C
              = ( '2d.set-of-cfun/1'
                @ ^ [V_u: $real,V_v: $real] :
                    ( 0.0
                    = ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_u @ 2.0 ) @ ( '^/2' @ V_v @ 2.0 ) ) @ ( $product @ ( $product @ -2.0 @ V_t ) @ V_u ) ) @ ( $product @ ( $product @ -2.0 @ ( $difference @ 1.0 @ V_t ) ) @ V_v ) ) ) ) )
            & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
              = ( '2d.center-of/1' @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ 'x/0' @ 'y/0' ) @ -1.0 ) ) ) ),
    answer_to(p_question,[])).

