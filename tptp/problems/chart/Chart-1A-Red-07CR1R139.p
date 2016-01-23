%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R139
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  175 (  18 equality;  45 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :  135 (   0   ~;   0   |;  14   &; 119   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   0   :)
%            Number of variables   :   19 (   1 sgn;  14   !;   0   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_v: 'R'] :
      ! [V_B0: '3d.Point',V_B1: '3d.Point',V_P0: '3d.Point',V_P1: '3d.Point',V_v1: 'R',V_v2: 'R'] :
        ( ( ( 0
            = ( '-/2' @ ( '3d.x-coord/1' @ V_P0 ) @ ( '3d.x-coord/1' @ V_B0 ) ) )
          & ( 0
            = ( '-/2' @ ( '3d.y-coord/1' @ V_P0 ) @ ( '3d.y-coord/1' @ V_B0 ) ) )
          & ( 4
            = ( '-/2' @ ( '3d.z-coord/1' @ V_P0 ) @ ( '3d.z-coord/1' @ V_B0 ) ) )
          & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B1 )
            = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B0 ) @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 60 ) @ ( '3d.vec3d/3' @ 0 @ 12 @ 0 ) ) ) )
          & ( ( '3d.vec/2' @ '3d.origin/0' @ V_P1 )
            = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_P0 ) @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 60 ) @ ( '3d.vec3d/3' @ V_v1 @ V_v2 @ 0 ) ) ) )
          & ( ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 )
            = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P1 @ V_B1 @ ( '3d.point/3' @ ( '3d.x-coord/1' @ V_P1 ) @ ( '3d.y-coord/1' @ V_P1 ) @ ( '3d.z-coord/1' @ V_B1 ) ) ) ) )
          & ( ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) )
            = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ ( '3d.point/3' @ ( '3d.x-coord/1' @ V_P1 ) @ ( '3d.y-coord/1' @ V_P1 ) @ ( '3d.z-coord/1' @ V_B1 ) ) @ V_B1 @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B1 ) @ ( '3d.vec3d/3' @ 0 @ 1 @ 0 ) ) ) ) ) )
          & ( '</2' @ 0 @ V_v1 )
          & ( '</2' @ 0 @ V_v2 ) )
       => ( V_v
          = ( '3d.radius/1' @ V_Pv ) ) ) )).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_v: 'R'] :
      ! [V_v1: 'R',V_v2: 'R',V_Bv: '3d.Vector',V_Pv: '3d.Vector',V_B0: '3d.Vector',V_B1: '3d.Vector',V_P0: '3d.Vector',V_P1: '3d.Vector'] :
        ( ( ( V_Bv
            = ( '3d.vec3d/3' @ 0 @ 12 @ 0 ) )
          & ( V_Pv
            = ( '3d.vec3d/3' @ V_v1 @ V_v2 @ 0 ) )
          & ( V_B0
            = ( '3d.vec3d/3' @ 0 @ 0 @ 0 ) )
          & ( V_B1
            = ( '3d.vec3d/3' @ 0 @ ( '//2' @ 1 @ 5 ) @ 0 ) )
          & ( V_P0
            = ( '3d.vec3d/3' @ 0 @ 0 @ 4 ) )
          & ( V_P1
            = ( '3d.vec3d/3' @ ( '//2' @ V_v1 @ 60 ) @ ( '//2' @ V_v2 @ 60 ) @ 4 ) )
          & ( ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 )
            = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ ( '3d.vec->point/1' @ V_P1 ) @ ( '3d.vec->point/1' @ V_B1 ) @ ( '3d.point/3' @ ( '3d.vec-x-coord/1' @ V_P1 ) @ ( '3d.vec-y-coord/1' @ V_P1 ) @ ( '3d.vec-z-coord/1' @ V_B1 ) ) ) ) ) )
       => ( V_v
          = ( '3d.radius/1' @ V_Pv ) ) ) )).

thf(p_answer,answer,(
    ^ [V_v_dot_0: 'R'] : ( V_v_dot_0 = 423 ) ),
    answer_to(p_question,[])).

thf(p1_answer,answer,(
    ^ [V_v_dot_0: 'R'] : ( V_v_dot_0 = 423 ) ),
    answer_to(p1_question,[])).
