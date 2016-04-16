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

% Syntax   : Number of formulae    :   12 (   0 unit;   7 type;   0 defn)
%            Number of atoms       :  352 (  44 equality; 138 variable)
%            Maximal formula depth :   49 (  12 average)
%            Number of connectives :  263 (   0   ~;   0   |;  46   &; 215   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   7   :;   0   =)
%            Number of variables   :   45 (   0 sgn;  11   !;  30   ?;   4   ^)
%                                         (  45   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf('O/0_type',type,(
    'O/0': '3d.Point' )).

thf('p/0_type',type,(
    'p/0': '3d.Vector' )).

thf('p_abs/0_type',type,(
    'p_abs/0': $real )).

thf('q/0_type',type,(
    'q/0': '3d.Vector' )).

thf('q_abs/0_type',type,(
    'q_abs/0': $real )).

thf('r/0_type',type,(
    'r/0': '3d.Vector' )).

thf('r_abs/0_type',type,(
    'r_abs/0': $real )).

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
    ( 'find/1' @ ( 'ListOf' @ '3d.Vector' )
    @ ^ [V_a_b_c: ( 'ListOf' @ '3d.Vector' )] :
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
        & ( 'p/0'
          = ( '3d.vec/2' @ V_L @ V_P ) )
        & ( 'q/0'
          = ( '3d.vec/2' @ V_M @ V_Q ) )
        & ( 'r/0'
          = ( '3d.vec/2' @ V_N @ V_R ) )
        & ( V_a_b_c
          = ( 'cons/2' @ '3d.Vector' @ V_a @ ( 'cons/2' @ '3d.Vector' @ V_b @ ( 'cons/2' @ '3d.Vector' @ V_c @ ( 'nil/0' @ '3d.Vector' ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_Vs: ( 'ListOf' @ $real )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_p: '3d.Vector',V_q: '3d.Vector',V_r: '3d.Vector',V_X: '3d.Point',V_V_XABC: $real,V_V_OABC: $real] :
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
        & ( 0.0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_L @ V_P ) @ ( '3d.vec/2' @ V_M @ V_Q ) ) )
        & ( 0.0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_M @ V_Q ) @ ( '3d.vec/2' @ V_N @ V_R ) ) )
        & ( 0.0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_N @ V_R ) @ ( '3d.vec/2' @ V_L @ V_P ) ) )
        & ( ( '3d.vec/2' @ V_A @ V_X )
          = ( '3d.vec/2' @ V_L @ V_P ) )
        & ( 'p_abs/0'
          = ( '3d.radius/1' @ V_p ) )
        & ( 'q_abs/0'
          = ( '3d.radius/1' @ V_q ) )
        & ( 'r_abs/0'
          = ( '3d.radius/1' @ V_r ) )
        & ( V_V_XABC
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_X @ V_A @ V_B @ V_C ) ) )
        & ( V_V_OABC
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ 'O/0' @ V_A @ V_B @ V_C ) ) )
        & ( V_Vs
          = ( 'cons/2' @ $real @ V_V_XABC @ ( 'cons/2' @ $real @ V_V_OABC @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_a_b_c_dot_0: ( 'ListOf' @ '3d.Vector' )] :
      ( V_a_b_c_dot_0
      = ( 'cons/2' @ '3d.Vector' @ ( '3d.v+/2' @ 'q/0' @ 'r/0' ) @ ( 'cons/2' @ '3d.Vector' @ ( '3d.v+/2' @ 'p/0' @ 'r/0' ) @ ( 'cons/2' @ '3d.Vector' @ ( '3d.v+/2' @ 'p/0' @ 'q/0' ) @ ( 'nil/0' @ '3d.Vector' ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_Vs_dot_0: ( 'ListOf' @ $real )] :
      ( V_Vs_dot_0
      = ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 1.0 @ 6.0 ) @ ( $product @ 'p_abs/0' @ ( $product @ 'q_abs/0' @ 'r_abs/0' ) ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ ( $product @ 'p_abs/0' @ ( $product @ 'q_abs/0' @ 'r_abs/0' ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p3_question,[])).

