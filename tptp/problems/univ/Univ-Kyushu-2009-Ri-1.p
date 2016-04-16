%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2009, Science Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Consider the $3$ points $O(0, 0)$, $A(2, 6)$, and $B(3, 4)$ on the
%% coordinate plane, and draw the perpendicular $OC$ from the point $O$
%% to the straight line $AB$. For the real numbers $s$ and $t$, define
%% the point $P$ as $\vec{OP} = s\vec{OA} + t\vec{OB}$. Answer the
%% following questions:
%%
%% (1) Find the coordinates of the point $C$, and represent
%% $|\vec{CP}|^2$ using $s$ and $t$.
%%
%% (2) Let $s$ be a constant. When $t$ moves in the range of $t\ge 0$,
%% find the minimum value of $|\vec{CP}|^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  180 (  17 equality;  34 variable)
%            Maximal formula depth :   23 (  10 average)
%            Number of connectives :  140 (   0   ~;   1   |;  13   &; 126   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   2   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;  11   ?;   7   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   3 pred;    3 func;   11 numbers)

include('axioms.ax').

thf('s/0_type',type,(
    's/0': $real )).

thf('t/0_type',type,(
    't/0': $real )).

thf(a1_1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_C: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2.0 @ 6.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_CP2: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2.0 @ 6.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ 's/0' @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ 't/0' @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
        & ( V_CP2
          = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minCP2: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2.0 @ 6.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_CP2: $real] :
              ? [V_t: $real,V_P: '2d.Point'] :
                ( ( $greatereq @ V_t @ 0.0 )
                & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
                  = ( '2d.v+/2' @ ( '2d.sv*/2' @ 's/0' @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
                & ( V_CP2
                  = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) )
          @ V_minCP2 ) ) )).

thf(a1_1_answer,answer,(
    ^ [V_C_dot_0: '2d.Point'] :
      ( V_C_dot_0
      = ( '2d.point/2' @ 4.0 @ 2.0 ) ) ),
    answer_to(a1_1_question,[])).

thf(a1_2_answer,answer,(
    ^ [V_CP2_dot_0: $real] :
      ( V_CP2_dot_0
      = ( $sum @ ( $product @ 40.0 @ ( '^/2' @ 's/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 60.0 @ ( $product @ 's/0' @ 't/0' ) ) @ ( $sum @ ( $product @ 25.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( $product @ -40.0 @ 's/0' ) @ ( $sum @ ( $product @ -40.0 @ 't/0' ) @ 20.0 ) ) ) ) ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_minCP2_dot_0: $real] :
      ( ( ( $lesseq @ 's/0' @ ( $quotient @ 2.0 @ 3.0 ) )
        & ( V_minCP2_dot_0
          = ( $sum @ ( $product @ 4.0 @ ( '^/2' @ 's/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 8.0 @ 's/0' ) @ 4.0 ) ) ) )
      | ( ( $greater @ 's/0' @ ( $quotient @ 2.0 @ 3.0 ) )
        & ( V_minCP2_dot_0
          = ( $sum @ ( $product @ 40.0 @ ( '^/2' @ 's/0' @ 2.0 ) ) @ ( $sum @ ( $product @ -40.0 @ 's/0' ) @ 20.0 ) ) ) ) ) ),
    answer_to(a2_question,[])).

