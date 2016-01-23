%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Science Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% For the tetrahedron $OABC$, assume that $\vec{a} =\vec{OA}$,
%% $\vec{b} =\vec{OB}$, and $\vec{c} =\vec{OC}$. Let $L$, $M$, $N$, $P$,
%% $Q$, and $R$ be the middle points of the line segments $OA$, $OB$,
%% $OC$, $BC$, $CA$, and $AB$, respectively, and assume that
%% $\vec{p} =\vec{LP}$, $\vec{q} =\vec{MQ}$, and $\vec{r} =\vec{NR}$.
%%
%% (1) Prove that the line segments $LP$, $MQ$, and $NR$ intersect with
%% one another at a point.
%%
%% (2) Represent $\vec{a}$, $\vec{b}$, and $\vec{c}$ using $\vec{p}$,
%% $\vec{q}$, and $\vec{r}$.
%%
%% (3) Assume that the straight lines $LP$, $MQ$, and $NR$ are
%% orthogonal to one another. Let $X$ be the point in a space such that
%% $\vec{AX} =\vec{LP}$. Represent the volumes of the tetrahedrons
%% $XABC$ and $OABC$ using $|\vec{p}|$, $|\vec{q}|$, and $|\vec{r}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  340 (  44 equality; 157 variable)
%            Maximal formula depth :   49 (  25 average)
%            Number of connectives :  251 (   0   ~;   0   |;  46   &; 203   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   58 (   7 sgn;  11   !;  30   ?;   4   ^)
%                                         (  45   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( V_L
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) ) )
        & ( V_M
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_B ) ) )
        & ( V_N
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_C ) ) )
        & ( V_P
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) ) )
        & ( V_Q
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_C @ V_A ) ) )
        & ( V_R
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_L @ V_P ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_M @ V_Q ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_N @ V_R ) ) )
     => ! [V_T: '3d.Point'] :
          ( ( ( '3d.on/2' @ V_T @ ( '3d.seg/2' @ V_L @ V_P ) )
            & ( '3d.on/2' @ V_T @ ( '3d.seg/2' @ V_M @ V_Q ) )
            & ( '3d.on/2' @ V_T @ ( '3d.seg/2' @ V_N @ V_R ) ) )
         => ( V_S = V_T ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a_b_c: 'ListOf' @ '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector'] :
        ( ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( V_L
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) ) )
        & ( V_M
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_B ) ) )
        & ( V_N
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_C ) ) )
        & ( V_P
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) ) )
        & ( V_Q
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_C @ V_A ) ) )
        & ( V_R
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) )
        & ( V_p
          = ( '3d.vec/2' @ V_L @ V_P ) )
        & ( V_q
          = ( '3d.vec/2' @ V_M @ V_Q ) )
        & ( V_r
          = ( '3d.vec/2' @ V_N @ V_R ) )
        & ( V_a_b_c
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_Vs: 'ListOf' @ 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_p_dot_0: '3d.Vector',V_q_dot_0: '3d.Vector',V_r_dot_0: '3d.Vector',V_X: '3d.Point',V_V_XABC: 'R',V_V_OABC: 'R'] :
        ( ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( V_L
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) ) )
        & ( V_M
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_B ) ) )
        & ( V_N
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ '3d.origin/0' @ V_C ) ) )
        & ( V_P
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) ) )
        & ( V_Q
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_C @ V_A ) ) )
        & ( V_R
          = ( '3d.seg-midpoint-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) )
        & ( V_p_dot_0
          = ( '3d.vec/2' @ V_L @ V_P ) )
        & ( V_q_dot_0
          = ( '3d.vec/2' @ V_M @ V_Q ) )
        & ( V_r_dot_0
          = ( '3d.vec/2' @ V_N @ V_R ) )
        & ( 0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_L @ V_P ) @ ( '3d.vec/2' @ V_M @ V_Q ) ) )
        & ( 0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_M @ V_Q ) @ ( '3d.vec/2' @ V_N @ V_R ) ) )
        & ( 0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_N @ V_R ) @ ( '3d.vec/2' @ V_L @ V_P ) ) )
        & ( ( '3d.vec/2' @ V_A @ V_X )
          = ( '3d.vec/2' @ V_L @ V_P ) )
        & ( V_p_abs
          = ( '3d.radius/1' @ V_p_dot_0 ) )
        & ( V_q_abs
          = ( '3d.radius/1' @ V_q_dot_0 ) )
        & ( V_r_abs
          = ( '3d.radius/1' @ V_r_dot_0 ) )
        & ( V_V_XABC
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_X @ V_A @ V_B @ V_C ) ) )
        & ( V_V_OABC
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) )
        & ( V_Vs
          = ( 'cons/2' @ V_V_XABC @ ( 'cons/2' @ V_V_OABC @ 'nil/0' ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_a_b_c_dot_0: 'ListOf' @ '3d.Vector'] :
      ( V_a_b_c_dot_0
      = ( 'cons/2' @ ( '3d.v+/2' @ V_q @ V_r ) @ ( 'cons/2' @ ( '3d.v+/2' @ V_p @ V_r ) @ ( 'cons/2' @ ( '3d.v+/2' @ V_p @ V_q ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_Vs_dot_0: 'ListOf' @ 'R'] :
      ( V_Vs_dot_0
      = ( 'cons/2' @ ( '*/2' @ ( '//2' @ 1 @ 6 ) @ ( '*/2' @ ( '3d.radius/1' @ V_p ) @ ( '*/2' @ ( '3d.radius/1' @ V_q ) @ ( '3d.radius/1' @ V_r ) ) ) ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ ( '*/2' @ ( '3d.radius/1' @ V_p ) @ ( '*/2' @ ( '3d.radius/1' @ V_q ) @ ( '3d.radius/1' @ V_r ) ) ) ) @ 'nil/0' ) ) ) ),
    answer_to(p3_question,[])).
