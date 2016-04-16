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

% Syntax   : Number of formulae    :    9 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  380 (  28 equality; 112 variable)
%            Maximal formula depth :   36 (  18 average)
%            Number of connectives :  321 (   2   ~;   0   |;  59   &; 259   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   40 (   2   :;   0   =)
%            Number of variables   :   36 (   0 sgn;   2   !;  27   ?;   7   ^)
%                                         (  36   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(a1_1,conjecture,(
    ! [V_a: $real,V_b: $real] :
      ( ( ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_b ) )
     => ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: $real] :
          ( ( V_A
            = ( '3d.point/3' @ V_a @ ( $uminus @ V_a ) @ V_b ) )
          & ( V_B
            = ( '3d.point/3' @ ( $uminus @ V_a ) @ V_a @ V_b ) )
          & ( V_C
            = ( '3d.point/3' @ V_a @ V_a @ ( $uminus @ V_b ) ) )
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
            = 0.0 )
          & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_D @ '3d.origin/0' ) @ ( '3d.vec/2' @ V_A @ V_B ) )
            = 0.0 ) ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ABC: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_A
          = ( '3d.point/3' @ 'a/0' @ ( $uminus @ 'a/0' ) @ 'b/0' ) )
        & ( V_B
          = ( '3d.point/3' @ ( $uminus @ 'a/0' ) @ 'a/0' @ 'b/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'a/0' @ 'a/0' @ ( $uminus @ 'b/0' ) ) )
        & ( V_ABC
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: $real,V_H: '3d.Point',V_sintheta: $real,V_OH: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_ans
          = ( 'cons/2' @ $real @ V_sintheta @ ( 'cons/2' @ $real @ V_OH @ ( 'nil/0' @ $real ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ 'a/0' @ ( $uminus @ 'a/0' ) @ 'b/0' ) )
        & ( V_B
          = ( '3d.point/3' @ ( $uminus @ 'a/0' ) @ 'a/0' @ 'b/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'a/0' @ 'a/0' @ ( $uminus @ 'b/0' ) ) )
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

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_maxV: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_alpha: '3d.Shape',V_S: '3d.Shape',V_r: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_A
          = ( '3d.point/3' @ 'a/0' @ ( $uminus @ 'a/0' ) @ 'b/0' ) )
        & ( V_B
          = ( '3d.point/3' @ ( $uminus @ 'a/0' ) @ 'a/0' @ 'b/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'a/0' @ 'a/0' @ ( $uminus @ 'b/0' ) ) )
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
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_V: $real] :
              ? [V_P: '3d.Point'] :
                ( ( '3d.on/2' @ V_P @ V_S )
                & ~ ( '3d.on/2' @ V_P @ V_alpha )
                & ( V_V
                  = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_P ) ) ) ) )
          @ V_maxV ) ) )).

thf(a1_2_answer,answer,(
    ^ [V_ABC_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( $greater @ 'b/0' @ 0.0 )
      & ( V_ABC_dot_0
        = ( $product @ 2.0 @ ( $product @ 'a/0' @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) ) ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( $greater @ 'b/0' @ 0.0 )
      & ( V_ans_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ 'a/0' @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 'a/0' @ 'b/0' ) @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a2_question,[])).

thf(a3_answer,answer,(
    ^ [V_maxV_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( $greater @ 'b/0' @ 0.0 )
      & ( V_maxV_dot_0
        = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ ( $product @ 'a/0' @ ( $sum @ ( 'sqrt/1' @ ( $product @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) ) ) ) ),
    answer_to(a3_question,[])).

