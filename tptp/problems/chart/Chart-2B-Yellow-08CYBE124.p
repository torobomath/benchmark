%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE124
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (   7 equality;  25 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :   98 (   0   ~;   0   |;   7   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   5   ?;   7   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: '3d.Shape'] :
        ( V_S
        = ( '3d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R',V_z: 'R'] :
              ( 0
              = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '^/2' @ V_z @ 2 ) ) @ ( '-/1' @ V_x ) ) @ ( '*/2' @ -4 @ V_y ) ) @ ( '*/2' @ 3 @ V_z ) ) @ 4 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_S: '3d.Shape',V_Cx: 'R',V_Cy: 'R',V_Cz: 'R',V_r: 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_Cx @ ( 'cons/2' @ V_Cy @ ( 'cons/2' @ V_Cz @ ( 'cons/2' @ V_r @ 'nil/0' ) ) ) ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1 @ 0 @ 0 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0 @ 1 @ 0 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0 @ 0 @ 1 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1 @ 1 @ 1 ) @ V_S )
        & ( ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz )
          = ( '3d.center-of/1' @ V_S ) )
        & ( V_r
          = ( '3d.radius-of/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: '3d.Shape'] :
      ( V_S_dot_0
      = ( '3d.sphere/2' @ ( '3d.point/3' @ ( '//2' @ 1 @ 2 ) @ 2 @ ( '//2' @ -3 @ 2 ) ) @ ( '//2' @ ( 'sqrt/1' @ 10 ) @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).
