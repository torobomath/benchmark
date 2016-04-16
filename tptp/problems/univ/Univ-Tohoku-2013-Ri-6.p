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

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  389 (  16 equality;  52 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  351 (   0   ~;   2   |;  27   &; 322   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   43 (   1   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;  13   ?;   6   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   2 pred;    5 func;    9 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( $product @ 2.0 @ 1.0 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_B ) @ V_P )
        & ( 't/0'
          = ( '3d.point-shape-distance/2' @ '3d.origin/0' @ V_P ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.intersection/2' @ V_P @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_volume: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape',V_V1: '3d.Shape',V_V2: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( $product @ 2.0 @ 1.0 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.on/2' @ V_A @ V_P )
        & ( '3d.on/2' @ V_B @ V_P )
        & ( '3d.lines-intersect-angle/3' @ V_P @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( $product @ 45.0 @ 'Degree/0' ) )
        & ( ( V_V1
            = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) )
          | ( V_V1
            = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) ) )
        & ( ( V_V2
            = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) )
          | ( V_V2
            = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) ) )
        & ( $greater @ ( '3d.volume-of/1' @ V_V1 ) @ ( '3d.volume-of/1' @ V_V2 ) )
        & ( V_volume
          = ( '3d.volume-of/1' @ V_V1 ) ) ) )).

thf(p2V2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_volume2: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Shape',V_V1: '3d.Shape',V_V2: '3d.Shape'] :
        ( ( '3d.on/2' @ V_A @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( '3d.on/2' @ V_B @ ( '3d.circle/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( $product @ 2.0 @ 1.0 ) )
        & ( '3d.plane-type/1' @ V_P )
        & ( '3d.on/2' @ V_A @ V_P )
        & ( '3d.on/2' @ V_B @ V_P )
        & ( '3d.lines-intersect-angle/3' @ V_P @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( $product @ 45.0 @ 'Degree/0' ) )
        & ( V_V1
          = ( '3d.intersection/2' @ ( '3d.upper-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) )
        & ( V_V2
          = ( '3d.intersection/2' @ ( '3d.lower-region-of/1' @ V_P ) @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ '3d.origin/0' @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) @ ( '3d.disk/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 1.0 @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) )
        & ( V_volume2
          = ( '3d.volume-of/1' @ V_V2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) @ ( 'sqrt/1' @ 2.0 ) ) @ ( $quotient @ 1.0 @ 4.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_volume_dot_0: $real] :
      ( V_volume_dot_0
      = ( $sum @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 2.0 ) @ 'Pi/0' ) @ 8.0 ) @ ( $sum @ ( $uminus @ ( $product @ ( $quotient @ 5.0 @ 12.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( $quotient @ 2.0 @ 3.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p2V2_answer,answer,(
    ^ [V_volume2_dot_0: $real] :
      ( V_volume2_dot_0
      = ( $sum @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 2.0 ) @ 'Pi/0' ) @ 8.0 ) @ ( $sum @ ( $uminus @ ( $product @ ( $quotient @ 5.0 @ 12.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( $quotient @ 2.0 @ 3.0 ) ) ) ) ),
    answer_to(p2V2_question,[])).

