%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2009, Humanities Course, Problem 2
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
%% (2) Define $s =\frac{1}{2}$. When $t$ moves in the range of $t\ge 0$,
%% find the minimum value of $|\vec{CP}|^2$.
%%
%% (3) Define $s = 1$. When $t$ moves in the range of $t\ge 0$, find the
%% minimum value of $|\vec{CP}|^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  207 (  24 equality;  52 variable)
%            Maximal formula depth :   25 (  10 average)
%            Number of connectives :  151 (   0   ~;   0   |;  18   &; 133   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   2   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   0   !;  18   ?;  10   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   1 pred;    3 func;   12 numbers)

include('axioms.ax').

thf('s/0_type',type,(
    's/0': $real )).

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_C_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_C: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2.0 @ 6.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 4.0 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(p1_CP2_qustion,question,
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

thf(p2_qustion,question,
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
              ? [V_s: $real,V_t: $real,V_P: '2d.Point'] :
                ( ( V_s
                  = ( $quotient @ 1.0 @ 2.0 ) )
                & ( $greatereq @ V_t @ 0.0 )
                & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
                  = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
                & ( V_CP2
                  = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) )
          @ V_minCP2 ) ) )).

thf(p3_qustion,question,
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
              ? [V_s: $real,V_t: $real,V_P: '2d.Point'] :
                ( ( V_s = 1.0 )
                & ( $greatereq @ V_t @ 0.0 )
                & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
                  = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
                & ( V_CP2
                  = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) )
          @ V_minCP2 ) ) )).

thf(p1_C_answer,answer,(
    ^ [V_C_dot_0: '2d.Point'] :
      ( V_C_dot_0
      = ( '2d.point/2' @ 4.0 @ 2.0 ) ) ),
    answer_to(p1_C_question,[])).

thf(p1_CP2_answer,answer,(
    ^ [V_CP2_dot_0: $real] :
      ( V_CP2_dot_0
      = ( $sum @ ( $product @ 40.0 @ ( '^/2' @ 's/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 60.0 @ ( $product @ 's/0' @ 't/0' ) ) @ ( $sum @ ( $product @ 25.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( $product @ -40.0 @ 's/0' ) @ ( $sum @ ( $product @ -40.0 @ 't/0' ) @ 20.0 ) ) ) ) ) ) ),
    answer_to(p1_CP2_question,[])).

thf(p2_answer,answer,(
    ^ [V_minCP2_dot_0: $real] : ( V_minCP2_dot_0 = 9.0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_minCP2_dot_0: $real] : ( V_minCP2_dot_0 = 20.0 ) ),
    answer_to(p3_question,[])).

