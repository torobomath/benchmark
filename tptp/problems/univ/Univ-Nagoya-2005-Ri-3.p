%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2005, Science Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-30
%%
%% <PROBLEM-TEXT>
%% Consider the regular tetrahedron $OABC$ whose side length is $1$, and
%% define $\vec{OA} =\vec{a}$, $\vec{OB} =\vec{b}$, and
%% $\vec{OC} =\vec{c}$. The point $P$ starts to move on the side $OA$
%% from $O$ to $A$ at the speed of $1$ per second, the point $Q$, on the
%% side $AB$ from $A$ to $B$ at the speed of $\frac{1}{2}$ per second,
%% the point $R$, on the side $BC$ from $B$ to $C$ at the speed of $1$
%% per second, and the point $S$, on the side $CO$ from $C$ to $O$ at
%% the speed of $\frac{1}{2}$ per second, simultaneously.
%%
%% (1) Represent the vectors $\vec{OP}$, $\vec{OQ}$, $\vec{OR}$, and
%% $\vec{OS}$ $t$ seconds ( $0\le t\le 1$) after the start using
%% $\vec{a}$, $\vec{b}$, $\vec{c}$ and $t$.
%%
%% (2) When the line segments $PR$ and $QS$ have the intersection $M$,
%% find the value of $t$ ( $0\le t\le 1$), and represent the vector
%% $\vec{OM}$ using $\vec{a}$, $\vec{b}$, and $\vec{c}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   16 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  722 (  91 equality; 235 variable)
%            Maximal formula depth :   38 (  16 average)
%            Number of connectives :  528 (   0   ~;   2   |; 121   &; 405   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   4   :;   0   =)
%            Number of variables   :   59 (   0 sgn;   0   !;  47   ?;  12   ^)
%                                         (  59   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': '3d.Vector' )).

thf('b/0_type',type,(
    'b/0': '3d.Vector' )).

thf('c/0_type',type,(
    'c/0': '3d.Vector' )).

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_op: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( 'b/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( 'c/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
          | ( V_P = '3d.origin/0' )
          | ( V_P = V_A ) )
        & ( 't/0'
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( 't/0'
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_op
          = ( '3d.vec/2' @ '3d.origin/0' @ V_P ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_oq: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( 'b/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( 'c/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( 't/0'
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( 't/0'
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_oq
          = ( '3d.vec/2' @ '3d.origin/0' @ V_Q ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_or: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( 'b/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( 'c/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( 't/0'
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( 't/0'
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_or
          = ( '3d.vec/2' @ '3d.origin/0' @ V_R ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_os: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( 'b/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( 'c/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( 't/0'
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( 't/0'
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ 't/0' @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_os
          = ( '3d.vec/2' @ '3d.origin/0' @ V_S ) ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point',V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector'] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( V_t
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
        & ( ( $quotient @ V_t @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ V_t @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ V_t )
        & ( $lesseq @ V_t @ 1.0 )
        & ( '3d.intersect/2' @ ( '3d.seg/2' @ V_P @ V_R ) @ ( '3d.seg/2' @ V_Q @ V_S ) ) ) )).

thf(p6_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_om: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point',V_M: '3d.Point',V_t: $real] :
        ( ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1.0
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( 'b/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( 'c/0'
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( V_t
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
        & ( ( $quotient @ V_t @ 2.0 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( $quotient @ V_t @ 2.0 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( $lesseq @ 0.0 @ V_t )
        & ( $lesseq @ V_t @ 1.0 )
        & ( '3d.intersect/3' @ ( '3d.seg/2' @ V_P @ V_R ) @ ( '3d.seg/2' @ V_Q @ V_S ) @ V_M )
        & ( V_om
          = ( '3d.vec/2' @ '3d.origin/0' @ V_M ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_op_dot_0: '3d.Vector'] :
      ( V_op_dot_0
      = ( '3d.sv*/2' @ 't/0' @ 'a/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_oq_dot_0: '3d.Vector'] :
      ( V_oq_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $difference @ 1.0 @ ( $quotient @ 't/0' @ 2.0 ) ) @ 'a/0' ) @ ( '3d.sv*/2' @ ( $quotient @ 't/0' @ 2.0 ) @ 'b/0' ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_or_dot_0: '3d.Vector'] :
      ( V_or_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $difference @ 1.0 @ 't/0' ) @ 'b/0' ) @ ( '3d.sv*/2' @ 't/0' @ 'c/0' ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_os_dot_0: '3d.Vector'] :
      ( V_os_dot_0
      = ( '3d.sv*/2' @ ( $difference @ 1.0 @ ( $quotient @ 't/0' @ 2.0 ) ) @ 'c/0' ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ 2.0 @ 3.0 ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_om_dot_0: '3d.Vector'] :
      ( V_om_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ 'a/0' ) @ ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 6.0 ) @ 'b/0' ) @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ 'c/0' ) ) ) ) ),
    answer_to(p6_question,[])).

