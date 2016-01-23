%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2007, Science Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive numbers, and consider the three points
%% $A(a, -a, b)$, $B(-a, a, b)$, and $C(a, a, -b)$ in a space. Let
%% ${\alpha}$ be the plane containing $A$, $B$, and $C$, and let
%% ${\alpha}$ be the spherical surface centered at the origin $O$ and
%% containing $A$, $B$, and $C$. Answer the following questions:
%%
%% (1) Let $D$ be the middle point of the line segment $AB$, then prove
%% that $\vec{DC}\bot\vec{AB}$ and $\vec{DO}\bot\vec{AB}$, and fine the
%% area of $\triangle ABC$.
%%
%% (2) Let ${\theta}$ be the angle formed by the vectors $\vec{DC}$ and
%% $\vec{DO}$, then find $\sin {\theta}$. Let $H$ be the intersection of
%% the plane ${\alpha}$ and the straight line perpendicular to the plane
%% ${\alpha}$ and passing through the origin $O$, find the length of the
%% line segment $OH$.
%%
%% (3) When the point $P$ moves on the spherical surface $S$, find the
%% maximum volume of the tetrahedron $ABCP$, where $P$ is not on the
%% ${\alpha}$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  369 (  28 equality; 168 variable)
%            Maximal formula depth :   36 (  23 average)
%            Number of connectives :  310 (   2   ~;   0   |;  59   &; 248   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   0   :)
%            Number of variables   :   48 (   0 sgn;   2   !;  27   ?;   7   ^)
%                                         (  36   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1,conjecture,(
    ! [V_a: 'R',V_b: 'R'] :
      ( ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b ) )
     => ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: 'R'] :
          ( ( V_A
            = ( '3d.point/3' @ V_a @ ( '-/1' @ V_a ) @ V_b ) )
          & ( V_B
            = ( '3d.point/3' @ ( '-/1' @ V_a ) @ V_a @ V_b ) )
          & ( V_C
            = ( '3d.point/3' @ V_a @ V_a @ ( '-/1' @ V_b ) ) )
          & ( '3d.plane-type/1' @ V_alpha )
          & ( '3d.on/2' @ V_A @ V_alpha )
          & ( '3d.on/2' @ V_B @ V_alpha )
          & ( '3d.on/2' @ V_C @ V_alpha )
          & ( V_S
            = ( '3d.sphere/2' @ '3d.origin/0' @ V_r ) )
          & ( '3d.on/2' @ V_A @ V_S )
          & ( '3d.on/2' @ V_B @ V_S )
          & ( '3d.on/2' @ V_C @ V_S )
          & ( V_D
            = ( '3d.midpoint-of/2' @ V_A @ V_B ) )
          & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_D @ V_C ) @ ( '3d.vec/2' @ V_A @ V_B ) )
            = 0 )
          & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_D @ '3d.origin/0' ) @ ( '3d.vec/2' @ V_A @ V_B ) )
            = 0 ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ABC: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_A
          = ( '3d.point/3' @ V_a @ ( '-/1' @ V_a ) @ V_b ) )
        & ( V_B
          = ( '3d.point/3' @ ( '-/1' @ V_a ) @ V_a @ V_b ) )
        & ( V_C
          = ( '3d.point/3' @ V_a @ V_a @ ( '-/1' @ V_b ) ) )
        & ( V_ABC
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: 'R',V_H: '3d.Point',V_sintheta: 'R',V_OH: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_ans
          = ( 'cons/2' @ V_sintheta @ ( 'cons/2' @ V_OH @ 'nil/0' ) ) )
        & ( V_A
          = ( '3d.point/3' @ V_a @ ( '-/1' @ V_a ) @ V_b ) )
        & ( V_B
          = ( '3d.point/3' @ ( '-/1' @ V_a ) @ V_a @ V_b ) )
        & ( V_C
          = ( '3d.point/3' @ V_a @ V_a @ ( '-/1' @ V_b ) ) )
        & ( '3d.plane-type/1' @ V_alpha )
        & ( '3d.on/2' @ V_A @ V_alpha )
        & ( '3d.on/2' @ V_B @ V_alpha )
        & ( '3d.on/2' @ V_C @ V_alpha )
        & ( V_S
          = ( '3d.sphere/2' @ '3d.origin/0' @ V_r ) )
        & ( '3d.on/2' @ V_A @ V_S )
        & ( '3d.on/2' @ V_B @ V_S )
        & ( '3d.on/2' @ V_C @ V_S )
        & ( V_D
          = ( '3d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_sintheta
          = ( '3d.sin-of-angle/1' @ ( '3d.angle-of-vectors/2' @ ( '3d.vec/2' @ V_D @ V_C ) @ ( '3d.vec/2' @ V_D @ '3d.origin/0' ) ) ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ '3d.origin/0' @ V_H ) @ V_alpha )
        & ( '3d.origin/0' != V_H )
        & ( '3d.on/2' @ V_H @ V_alpha )
        & ( V_OH
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_H ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_maxV: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_A
          = ( '3d.point/3' @ V_a @ ( '-/1' @ V_a ) @ V_b ) )
        & ( V_B
          = ( '3d.point/3' @ ( '-/1' @ V_a ) @ V_a @ V_b ) )
        & ( V_C
          = ( '3d.point/3' @ V_a @ V_a @ ( '-/1' @ V_b ) ) )
        & ( '3d.plane-type/1' @ V_alpha )
        & ( '3d.on/2' @ V_A @ V_alpha )
        & ( '3d.on/2' @ V_B @ V_alpha )
        & ( '3d.on/2' @ V_C @ V_alpha )
        & ( V_S
          = ( '3d.sphere/2' @ '3d.origin/0' @ V_r ) )
        & ( '3d.on/2' @ V_A @ V_S )
        & ( '3d.on/2' @ V_B @ V_S )
        & ( '3d.on/2' @ V_C @ V_S )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_V: 'R'] :
              ? [V_P: '3d.Point'] :
                ( ( '3d.on/2' @ V_P @ V_S )
                & ~ ( '3d.on/2' @ V_P @ V_alpha )
                & ( V_V
                  = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_P ) ) ) ) )
          @ V_maxV ) ) )).

thf(p1_2_answer,answer,(
    ^ [V_ABC_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( '>/2' @ V_b @ 0 )
      & ( V_ABC_dot_0
        = ( '*/2' @ 2 @ ( '*/2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) ) ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( '>/2' @ V_b @ 0 )
      & ( V_ans_dot_0
        = ( 'cons/2' @ ( '//2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) ) ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ V_a @ V_b ) @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_maxV_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( '>/2' @ V_b @ 0 )
      & ( V_maxV_dot_0
        = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( '*/2' @ V_a @ ( '+/2' @ ( 'sqrt/1' @ ( '*/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) ) @ ( '*/2' @ V_a @ V_b ) ) ) ) ) ) ),
    answer_to(p3_question,[])).
