%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE108
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :   15 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  294 (  21 equality;  21 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :  255 (   3   ~;   0   |;  18   &; 234   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   3   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    0 func;    3 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf('z/0_type',type,(
    'z/0': $real )).

thf(p11_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) @ '3d.yz-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) ) ) ) )).

thf(p12_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) @ '3d.zx-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) ) ) ) )).

thf(p13_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) @ '3d.xy-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ V_v ) ) ) ) )).

thf(p21_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ ( '3d.direction-vec/1' @ '3d.x-axis/0' ) ) ) ) )).

thf(p22_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ ( '3d.direction-vec/1' @ '3d.y-axis/0' ) ) ) ) )).

thf(p23_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ 'x/0' @ 'y/0' @ 'z/0' ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3.0 @ -2.0 @ 5.0 ) @ ( '3d.direction-vec/1' @ '3d.z-axis/0' ) ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'x/0' = 3.0 ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'y/0' = -2.0 ) ) ),
    answer_to(p12_question,[])).

thf(p13_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'z/0' = 5.0 ) ) ),
    answer_to(p13_question,[])).

thf(p21_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'x/0' = 3.0 ) ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'y/0' = -2.0 ) ) ),
    answer_to(p22_question,[])).

thf(p23_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'z/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 'z/0' = 5.0 ) ) ),
    answer_to(p23_question,[])).

