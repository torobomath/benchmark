%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Consider the quadrangular pyramid $POABC$ whose base is the square
%% $OABC$ with the side length of $1$ and whose vertex satisfies
%% $OP = AP = BP = CP$. Let $D$ be the point that internally divides the
%% side $AP$ in a ratio of $1 : 3$, $E$, the middle point of the side
%% $CP$, and $Q$, the point that internally divides the side $BC$ in a
%% ratio of $Q$. Answer the following questions:
%%
%% (1) Represent the vectors $\vec{OD}$ and $\vec{OE}$ using $\vec{OA}$,
%% $\vec{OC}$, and $\vec{OP}$.
%%
%% (2) Represent the vector $\vec{PQ}$ using $\vec{OA}$, $\vec{OC}$,
%% $\vec{OP}$, and $t$.
%%
%% (3) Find the value of the inner product $\vec{OA}\cdot\vec{OP}$.
%%
%% (4) When the straight line $PQ$ is perpendicular to the plane $ODE$,
%% find the value of $t$ and the length of the segment $OP$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   14 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  386 (  46 equality; 175 variable)
%            Maximal formula depth :   29 (  12 average)
%            Number of connectives :  286 (   0   ~;   0   |;  48   &; 238   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   4   :;   0   =)
%            Number of variables   :   48 (   0 sgn;   0   !;  38   ?;  10   ^)
%                                         (  48   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf('vecOA/0_type',type,(
    'vecOA/0': '3d.Vector' )).

thf('vecOC/0_type',type,(
    'vecOC/0': '3d.Vector' )).

thf('vecOP/0_type',type,(
    'vecOP/0': '3d.Vector' )).

thf(p1_1_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_vecOD: '3d.Vector'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_D: '3d.Point',V_E: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1.0 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A @ V_P ) @ 1.0 @ 3.0 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C @ V_P ) )
        & ( V_vecOD
          = ( '3d.vec/2' @ V_O @ V_D ) )
        & ( 'vecOA/0'
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( 'vecOC/0'
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( 'vecOP/0'
          = ( '3d.vec/2' @ V_O @ V_P ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_OE: '3d.Vector'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_D: '3d.Point',V_E: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1.0 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A @ V_P ) @ 1.0 @ 3.0 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C @ V_P ) )
        & ( V_OE
          = ( '3d.vec/2' @ V_O @ V_E ) )
        & ( 'vecOA/0'
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( 'vecOC/0'
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( 'vecOP/0'
          = ( '3d.vec/2' @ V_O @ V_P ) ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_PQ: '3d.Vector'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1.0 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( 'vecOA/0'
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( 'vecOC/0'
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( 'vecOP/0'
          = ( '3d.vec/2' @ V_O @ V_P ) )
        & ( '3d.divide-internally/4' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C ) @ 't/0' @ ( $difference @ 1.0 @ 't/0' ) )
        & ( V_PQ
          = ( '3d.vec/2' @ V_P @ V_Q ) ) ) )).

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1.0 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( V_x
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_O @ V_A ) @ ( '3d.vec/2' @ V_O @ V_P ) ) ) ) )).

thf(a4_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_tOP: ( 'ListOf' @ $real )] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_Q: '3d.Point',V_PQ: '3d.Vector',V_ODE: '3d.Shape',V_t: $real] :
        ( ( V_tOP
          = ( 'cons/2' @ $real @ V_t @ ( 'cons/2' @ $real @ ( '3d.distance/2' @ V_O @ V_P ) @ ( 'nil/0' @ $real ) ) ) )
        & ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1.0 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( '3d.is-square-pyramid/5' @ V_P @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A @ V_P ) @ 1.0 @ 3.0 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C @ V_P ) )
        & ( '3d.divide-internally/4' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C ) @ V_t @ ( $difference @ 1.0 @ V_t ) )
        & ( V_ODE
          = ( '3d.plane1/3' @ V_O @ V_D @ V_E ) )
        & ( V_PQ
          = ( '3d.vec/2' @ V_P @ V_Q ) )
        & ( '3d.is-normal-vector-of/2' @ V_PQ @ V_ODE ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_OD: '3d.Vector'] :
      ( V_OD
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $quotient @ 3.0 @ 4.0 ) @ 'vecOA/0' ) @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 4.0 ) @ 'vecOP/0' ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_OE_dot_0: '3d.Vector'] :
      ( V_OE_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 2.0 ) @ 'vecOC/0' ) @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 2.0 ) @ 'vecOP/0' ) ) ) ),
    answer_to(p1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_PQ_dot_0: '3d.Vector'] :
      ( V_PQ_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $difference @ 1.0 @ 't/0' ) @ 'vecOA/0' ) @ ( '3d.v+/2' @ 'vecOC/0' @ ( '3d.sv*/2' @ -1.0 @ 'vecOP/0' ) ) ) ) ),
    answer_to(a2_question,[])).

thf(a3_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(a3_question,[])).

thf(a4_answer,answer,(
    ^ [V_tOP_dot_0: ( 'ListOf' @ $real )] :
    ? [V_tOP1: $real,V_tOP2: $real] :
      ( ( V_tOP1
        = ( $quotient @ 1.0 @ 3.0 ) )
      & ( V_tOP2
        = ( $quotient @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) )
      & ( V_tOP_dot_0
        = ( 'cons/2' @ $real @ V_tOP1 @ ( 'cons/2' @ $real @ V_tOP2 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a4_question,[])).

