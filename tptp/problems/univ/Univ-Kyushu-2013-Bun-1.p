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

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  343 (  37 equality; 174 variable)
%            Maximal formula depth :   29 (  15 average)
%            Number of connectives :  261 (   0   ~;   0   |;  39   &; 222   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   60 (   8 sgn;   0   !;  38   ?;  10   ^)
%                                         (  48   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_OD: '3d.Vector'] :
      ? [V_O_dot_0: '3d.Point',V_A_dot_0: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P_dot_0: '3d.Point',V_D: '3d.Point',V_E: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O_dot_0 @ V_A_dot_0 @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_A_dot_0 )
          = 1 )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_A_dot_0 @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_A_dot_0 @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_B @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_B @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_C @ V_P_dot_0 ) )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A_dot_0 @ V_P_dot_0 ) @ 1 @ 3 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C @ V_P_dot_0 ) )
        & ( V_OD
          = ( '3d.vec/2' @ V_O_dot_0 @ V_D ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_OE: '3d.Vector'] :
      ? [V_O_dot_0: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C_dot_0: '3d.Point',V_P_dot_0: '3d.Point',V_D: '3d.Point',V_E: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O_dot_0 @ V_A @ V_B @ V_C_dot_0 )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_A @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_A @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_B @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_B @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_C_dot_0 @ V_P_dot_0 ) )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A @ V_P_dot_0 ) @ 1 @ 3 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C_dot_0 @ V_P_dot_0 ) )
        & ( V_OE
          = ( '3d.vec/2' @ V_O_dot_0 @ V_E ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_PQ: '3d.Vector'] :
      ? [V_O_dot_0: '3d.Point',V_A_dot_0: '3d.Point',V_B: '3d.Point',V_C_dot_0: '3d.Point',V_P_dot_0: '3d.Point',V_Q: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O_dot_0 @ V_A_dot_0 @ V_B @ V_C_dot_0 )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_A_dot_0 )
          = 1 )
        & ( ( '3d.distance/2' @ V_O_dot_0 @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_A_dot_0 @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_A_dot_0 @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_B @ V_P_dot_0 ) )
        & ( ( '3d.distance/2' @ V_B @ V_P_dot_0 )
          = ( '3d.distance/2' @ V_C_dot_0 @ V_P_dot_0 ) )
        & ( '3d.divide-internally/4' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C_dot_0 ) @ V_t @ ( '-/2' @ 1 @ V_t ) )
        & ( V_PQ
          = ( '3d.vec/2' @ V_P_dot_0 @ V_Q ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( V_x
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_O @ V_A ) @ ( '3d.vec/2' @ V_O @ V_P ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_tOP: 'ListOf' @ 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_Q: '3d.Point',V_PQ: '3d.Vector',V_ODE: '3d.Shape',V_t: 'R'] :
        ( ( V_tOP
          = ( 'cons/2' @ V_t @ ( 'cons/2' @ ( '3d.distance/2' @ V_O @ V_P ) @ 'nil/0' ) ) )
        & ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_P )
          = ( '3d.distance/2' @ V_A @ V_P ) )
        & ( ( '3d.distance/2' @ V_A @ V_P )
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( ( '3d.distance/2' @ V_B @ V_P )
          = ( '3d.distance/2' @ V_C @ V_P ) )
        & ( '3d.is-square-pyramid/5' @ V_P @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_A @ V_P ) @ 1 @ 3 )
        & ( V_E
          = ( '3d.midpoint-of/2' @ V_C @ V_P ) )
        & ( '3d.divide-internally/4' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C ) @ V_t @ ( '-/2' @ 1 @ V_t ) )
        & ( V_ODE
          = ( '3d.plane1/3' @ V_O @ V_D @ V_E ) )
        & ( V_PQ
          = ( '3d.vec/2' @ V_P @ V_Q ) )
        & ( '3d.is-normal-vector-of/2' @ V_PQ @ V_ODE ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_OD_dot_0: '3d.Vector'] :
      ( V_OD_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '//2' @ 3 @ 4 ) @ ( '3d.vec/2' @ V_O @ V_A ) ) @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 4 ) @ ( '3d.vec/2' @ V_O @ V_P ) ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_OE_dot_0: '3d.Vector'] :
      ( V_OE_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 2 ) @ ( '3d.vec/2' @ V_O @ V_C ) ) @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 2 ) @ ( '3d.vec/2' @ V_O @ V_P ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_PQ_dot_0: '3d.Vector'] :
      ( V_PQ_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '-/2' @ 1 @ V_t ) @ ( '3d.vec/2' @ V_O @ V_A ) ) @ ( '3d.v+/2' @ ( '3d.vec/2' @ V_O @ V_C ) @ ( '3d.sv*/2' @ -1 @ ( '3d.vec/2' @ V_O @ V_P ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_tOP_dot_0: 'ListOf' @ 'R'] :
    ? [V_tOP1: 'R',V_tOP2: 'R'] :
      ( ( V_tOP1
        = ( '//2' @ 1 @ 3 ) )
      & ( V_tOP2
        = ( '//2' @ 2 @ ( 'sqrt/1' @ 3 ) ) )
      & ( V_tOP_dot_0
        = ( 'cons/2' @ V_tOP1 @ ( 'cons/2' @ V_tOP2 @ 'nil/0' ) ) ) ) ),
    answer_to(p4_question,[])).
