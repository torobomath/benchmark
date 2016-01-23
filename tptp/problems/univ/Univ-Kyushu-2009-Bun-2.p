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

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  201 (  24 equality;  60 variable)
%            Maximal formula depth :   25 (  12 average)
%            Number of connectives :  145 (   0   ~;   0   |;  18   &; 127   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   32 (   2 sgn;   0   !;  18   ?;  10   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_C_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2 @ 6 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 4 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(p1_CP2_qustion,question,
    ( 'Find/1'
    @ ^ [V_CP2: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2 @ 6 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 4 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
        & ( V_CP2
          = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_minCP2: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2 @ 6 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 4 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_CP2: 'R'] :
              ? [V_s: 'R',V_t: 'R',V_P: '2d.Point'] :
                ( ( V_s
                  = ( '//2' @ 1 @ 2 ) )
                & ( '>=/2' @ V_t @ 0 )
                & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
                  = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
                & ( V_CP2
                  = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2 ) ) ) )
          @ V_minCP2 ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_minCP2: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 2 @ 6 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 4 ) )
        & ( V_C
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ '2d.origin/0' @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_CP2: 'R'] :
              ? [V_s: 'R',V_t: 'R',V_P: '2d.Point'] :
                ( ( V_s = 1 )
                & ( '>=/2' @ V_t @ 0 )
                & ( ( '2d.vec/2' @ '2d.origin/0' @ V_P )
                  = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_B ) ) ) )
                & ( V_CP2
                  = ( '^/2' @ ( '2d.radius/1' @ ( '2d.vec/2' @ V_C @ V_P ) ) @ 2 ) ) ) )
          @ V_minCP2 ) ) )).

thf(p1_C_answer,answer,(
    ^ [V_C_dot_0: '2d.Point'] :
      ( V_C_dot_0
      = ( '2d.point/2' @ 4 @ 2 ) ) ),
    answer_to(p1_C_question,[])).

thf(p1_CP2_answer,answer,(
    ^ [V_CP2_dot_0: 'R'] :
      ( V_CP2_dot_0
      = ( '+/2' @ ( '*/2' @ 40 @ ( '^/2' @ V_s @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 60 @ ( '*/2' @ V_s @ V_t ) ) @ ( '+/2' @ ( '*/2' @ 25 @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ -40 @ V_s ) @ ( '+/2' @ ( '*/2' @ -40 @ V_t ) @ 20 ) ) ) ) ) ) ),
    answer_to(p1_CP2_question,[])).

thf(p2_answer,answer,(
    ^ [V_minCP2_dot_0: 'R'] : ( V_minCP2_dot_0 = 9 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_minCP2_dot_0: 'R'] : ( V_minCP2_dot_0 = 20 ) ),
    answer_to(p3_question,[])).
