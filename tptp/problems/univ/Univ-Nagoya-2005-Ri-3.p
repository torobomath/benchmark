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

% Syntax   : Number of formulae    :   12 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  716 (  91 equality; 289 variable)
%            Maximal formula depth :   38 (  21 average)
%            Number of connectives :  522 (   0   ~;   2   |; 121   &; 399   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   91 (  26 sgn;   0   !;  47   ?;  12   ^)
%                                         (  59   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_op: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( '3d.is-tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '3d.vec/2' @ '3d.origin/0' @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
        & ( ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ '3d.origin/0' @ V_A ) )
          | ( V_P = '3d.origin/0' )
          | ( V_P = V_A ) )
        & ( V_t
          = ( '3d.distance/2' @ '3d.origin/0' @ V_P ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_op
          = ( '3d.vec/2' @ '3d.origin/0' @ V_P ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_oq: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
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
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_oq
          = ( '3d.vec/2' @ '3d.origin/0' @ V_Q ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_or: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
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
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_or
          = ( '3d.vec/2' @ '3d.origin/0' @ V_R ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_os: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
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
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_os
          = ( '3d.vec/2' @ '3d.origin/0' @ V_S ) ) ) )).

thf(p5_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point',V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
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
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( '3d.intersect/2' @ ( '3d.seg/2' @ V_P @ V_R ) @ ( '3d.seg/2' @ V_Q @ V_S ) ) ) )).

thf(p6_qustion,question,
    ( 'Find/1'
    @ ^ [V_om: '3d.Vector'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point',V_S: '3d.Point',V_M: '3d.Point',V_t: 'R'] :
        ( ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_A ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ V_C ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 1
          = ( '3d.distance/2' @ V_A @ V_C ) )
        & ( 1
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
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_A @ V_Q ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( V_t
          = ( '3d.distance/2' @ V_B @ V_R ) )
        & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '//2' @ V_t @ 2 )
          = ( '3d.distance/2' @ V_C @ V_S ) )
        & ( '3d.on/2' @ V_S @ ( '3d.seg/2' @ V_C @ '3d.origin/0' ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( '3d.intersect/3' @ ( '3d.seg/2' @ V_P @ V_R ) @ ( '3d.seg/2' @ V_Q @ V_S ) @ V_M )
        & ( V_om
          = ( '3d.vec/2' @ '3d.origin/0' @ V_M ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_op_dot_0: '3d.Vector'] :
      ( V_op_dot_0
      = ( '3d.sv*/2' @ V_t @ V_a ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_oq_dot_0: '3d.Vector'] :
      ( V_oq_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '-/2' @ 1 @ ( '//2' @ V_t @ 2 ) ) @ V_a ) @ ( '3d.sv*/2' @ ( '//2' @ V_t @ 2 ) @ V_b ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_or_dot_0: '3d.Vector'] :
      ( V_or_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '-/2' @ 1 @ V_t ) @ V_b ) @ ( '3d.sv*/2' @ V_t @ V_c ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_os_dot_0: '3d.Vector'] :
      ( V_os_dot_0
      = ( '3d.sv*/2' @ ( '-/2' @ 1 @ ( '//2' @ V_t @ 2 ) ) @ V_c ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ 2 @ 3 ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_om_dot_0: '3d.Vector'] :
      ( V_om_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 3 ) @ V_a ) @ ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 6 ) @ V_b ) @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 3 ) @ V_c ) ) ) ) ),
    answer_to(p6_question,[])).
