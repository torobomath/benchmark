%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Science Course, Problem 6
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Consider the right circular cylinder with the base radius of $1$ and
%% the height of $\frac{1}{\sqrt{2}}$. Let $O$ be the center of the base
%% circle, and let $AB$ be an arbitrary diameter. Assume that the right
%% circular cylinder is divided into two parts by the plane containing
%% $AB$ and making an angle of $45^{\circ}$ with the base, and let $V$
%% be the part of the smaller volume.
%%
%% (1) Find the area $S(t)$ of the cross section of $V$ by the plane
%% orthogonal to the diameter $AB$ and distance $t$ $(0\le t\le 1)$
%% apart from $O$.
%%
%% (2) Find the value of $V$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  386 (  16 equality;  56 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  348 (   0   ~;   2   |;  27   &; 319   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   42 (   0   :)
%            Number of variables   :   21 (   1 sgn;   0   !;  13   ?;   6   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( '*/2' @ 2 @ 1 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_B ) @ V_P )
        & ( V_t
          = ( '3d.point-shape-distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.intersection/2' @ V_P @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_volume: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape',V_V1: '3d.Shape',V_V2: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( '*/2' @ 2 @ 1 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.on/2' @ V_A @ V_P )
        & ( '3d.on/2' @ V_B @ V_P )
        & ( '3d.lines-intersect-angle/3' @ V_P @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '*/2' @ 45 @ 'Degree/0' ) )
        & ( ( V_V1
            = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) )
          | ( V_V1
            = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) ) )
        & ( ( V_V2
            = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) )
          | ( V_V2
            = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) ) )
        & ( '>/2' @ ( '3d.volume-of/1' @ V_V1 ) @ ( '3d.volume-of/1' @ V_V2 ) )
        & ( V_volume
          = ( '3d.volume-of/1' @ V_V1 ) ) ) )).

thf(p2V2_qustion,question,
    ( 'Find/1'
    @ ^ [V_volume2: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape',V_V1: '3d.Shape',V_V2: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( '*/2' @ 2 @ 1 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.on/2' @ V_A @ V_P )
        & ( '3d.on/2' @ V_B @ V_P )
        & ( '3d.lines-intersect-angle/3' @ V_P @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '*/2' @ 45 @ 'Degree/0' ) )
        & ( V_V1
          = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) )
        & ( V_V2
          = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0 @ 0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ 1 @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) )
        & ( V_volume2
          = ( '3d.volume-of/1' @ V_V2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_t @ 2 ) ) ) @ ( 'sqrt/1' @ 2 ) ) @ ( '//2' @ 1 @ 4 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_volume_dot_0: 'R'] :
      ( V_volume_dot_0
      = ( '+/2' @ ( '//2' @ ( '*/2' @ ( 'sqrt/1' @ 2 ) @ 'Pi/0' ) @ 8 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 5 @ 12 ) @ ( 'sqrt/1' @ 2 ) ) ) @ ( '//2' @ 2 @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p2V2_answer,answer,(
    ^ [V_volume2_dot_0: 'R'] :
      ( V_volume2_dot_0
      = ( '+/2' @ ( '//2' @ ( '*/2' @ ( 'sqrt/1' @ 2 ) @ 'Pi/0' ) @ 8 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 5 @ 12 ) @ ( 'sqrt/1' @ 2 ) ) ) @ ( '//2' @ 2 @ 3 ) ) ) ) ),
    answer_to(p2V2_question,[])).
