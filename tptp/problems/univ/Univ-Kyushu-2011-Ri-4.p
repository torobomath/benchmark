%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2011, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Consider the four points $O(0, 0, 0)$, $A(0, 2, 3)$, $B(1, 0, 3)$,
%% and $C(1, 2, 0)$ in a space. Answer the following questions:
%%
%% (1) Find the coordinates of the center $D$ of the spherical surface
%% containing the four points $O$, $A$, $B$, and $C$.
%%
%% (2) Draw a perpendicular from the point $D$ to the plane containing
%% the four points $A$, $B$, and $C$, and let $F$ be the intersection.
%% Find the length of the line segment $DF$.
%%
%% (3) Find the volume of the tetrahedron $ABCD$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  157 (  16 equality;  60 variable)
%            Maximal formula depth :   31 (  15 average)
%            Number of connectives :  119 (   0   ~;   0   |;  28   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;  18   ?;   6   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_D: '3d.Point'] :
      ? [V_r: 'R',V_S: '3d.Shape'] :
        ( ( V_S
          = ( '3d.sphere/2' @ V_D @ V_r ) )
        & ( '3d.on/2' @ '3d.origin/0' @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0 @ 2 @ 3 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1 @ 0 @ 3 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1 @ 2 @ 0 ) @ V_S ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_DF: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_r: 'R',V_S: '3d.Shape',V_ABC: '3d.Shape',V_F: '3d.Point'] :
        ( ( V_S
          = ( '3d.sphere/2' @ V_D @ V_r ) )
        & ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 0 @ 2 @ 3 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ 0 @ 3 ) )
        & ( V_C
          = ( '3d.point/3' @ 1 @ 2 @ 0 ) )
        & ( '3d.on/2' @ V_O @ V_S )
        & ( '3d.on/2' @ V_A @ V_S )
        & ( '3d.on/2' @ V_B @ V_S )
        & ( '3d.on/2' @ V_C @ V_S )
        & ( '3d.plane-type/1' @ V_ABC )
        & ( '3d.on/2' @ V_A @ V_ABC )
        & ( '3d.on/2' @ V_B @ V_ABC )
        & ( '3d.on/2' @ V_C @ V_ABC )
        & ( '3d.on/2' @ V_F @ V_ABC )
        & ( '3d.is-normal-vector-of/2' @ ( '3d.vec/2' @ V_D @ V_F ) @ V_ABC )
        & ( V_DF
          = ( '3d.distance/2' @ V_D @ V_F ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_r: 'R',V_S: '3d.Shape'] :
        ( ( V_S
          = ( '3d.sphere/2' @ V_D @ V_r ) )
        & ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 0 @ 2 @ 3 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ 0 @ 3 ) )
        & ( V_C
          = ( '3d.point/3' @ 1 @ 2 @ 0 ) )
        & ( '3d.on/2' @ V_O @ V_S )
        & ( '3d.on/2' @ V_A @ V_S )
        & ( '3d.on/2' @ V_B @ V_S )
        & ( '3d.on/2' @ V_C @ V_S )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_D_dot_0: '3d.Point'] :
      ( V_D_dot_0
      = ( '3d.point/3' @ ( '//2' @ 1 @ 2 ) @ 1 @ ( '//2' @ 3 @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_DF_dot_0: 'R'] :
      ( V_DF_dot_0
      = ( '//2' @ 3 @ 7 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p3_question,[])).
