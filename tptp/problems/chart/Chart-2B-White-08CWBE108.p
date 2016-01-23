%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE108
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :   12 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  234 (  21 equality;  81 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :  195 (   3   ~;   0   |;  18   &; 174   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   51 (  12 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p11_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) @ '3d.yz-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) ) ) ) )).

thf(p12_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) @ '3d.zx-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) ) ) ) )).

thf(p13_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ? [V_v: '3d.Vector'] :
            ( ( V_v != '3d.zero-vector/0' )
            & ( '3d.parallel/2' @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) @ '3d.xy-plane/0' )
            & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ V_v ) ) ) ) )).

thf(p21_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ ( '3d.direction-vec/1' @ '3d.x-axis/0' ) ) ) ) )).

thf(p22_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ ( '3d.direction-vec/1' @ '3d.y-axis/0' ) ) ) ) )).

thf(p23_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.plane2/2' @ ( '3d.point/3' @ 3 @ -2 @ 5 ) @ ( '3d.direction-vec/1' @ '3d.z-axis/0' ) ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_x = 3 ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_y = -2 ) ) ),
    answer_to(p12_question,[])).

thf(p13_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_z = 5 ) ) ),
    answer_to(p13_question,[])).

thf(p21_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_x = 3 ) ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_y = -2 ) ) ),
    answer_to(p22_question,[])).

thf(p23_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
      & ( V_z = 5 ) ) ),
    answer_to(p23_question,[])).
