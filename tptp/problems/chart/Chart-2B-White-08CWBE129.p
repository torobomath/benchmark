%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE129
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  186 (  17 equality;  51 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :  148 (   0   ~;   0   |;  19   &; 129   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   23 (   0 sgn;   0   !;  17   ?;   6   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_costheta: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_M: '3d.Point',V_C: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ ( '//2' @ 1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ ( '//2' @ -1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( V_M
          = ( '3d.midpoint-of/2' @ V_A @ V_B ) )
        & ( '</2' @ 0 @ ( '3d.z-coord/1' @ V_C ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( V_costheta
          = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_M ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '3d.Point'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ ( '//2' @ 1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ ( '//2' @ -1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( '</2' @ 0 @ ( '3d.z-coord/1' @ V_C ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_sphere: '3d.Shape',V_x: 'R',V_y: 'R',V_z: 'R',V_r: 'R'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ ( '//2' @ 1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ ( '//2' @ -1 @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ 0 ) )
        & ( '</2' @ 0 @ ( '3d.z-coord/1' @ V_C ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ ( 'cons/2' @ V_r @ 'nil/0' ) ) ) ) )
        & ( '3d.sphere-type/1' @ V_sphere )
        & ( '3d.is-inscribed-in/2' @ ( '3d.tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) @ V_sphere )
        & ( ( '3d.point/3' @ V_x @ V_y @ V_z )
          = ( '3d.center-of/1' @ V_sphere ) )
        & ( V_r
          = ( '3d.radius-of/1' @ V_sphere ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_costheta_dot_0: 'R'] :
      ( V_costheta_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C_dot_0: '3d.Point'] :
      ( V_C_dot_0
      = ( '3d.point/3' @ 0 @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 3 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 12 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p3_question,[])).
