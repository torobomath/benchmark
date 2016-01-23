%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2007, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-04-11
%%
%% <PROBLEM-TEXT>
%% Let $t$ be a number that satisfies $0\le t\le 1$, and consider the
%% $4$ points $A(t, 0, 1)$, $B(1, t, 0)$, $C(0, 1, t)$, and
%% $P(\frac{4}{9} t, \frac{4}{9} t, \frac{4}{9} t)$ in a space. Answer
%% the following questions:
%%
%% (1) Prove that $\triangle ABC$ is an equilateral triangle, and find
%% the area $S(t)$ of the triangle.
%%
%% (2) Let $G$ be the centroid of $\triangle ABC$. Prove that $\vec{PG}$
%% is perpendicular to both $\vec{AB}$ and $\vec{AC}$.
%%
%% (3) Find the volume of the tetrahedron $PABC$. Find the minimum
%% values of $t$ and the value of $t$ that give the value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  480 (  45 equality; 155 variable)
%            Maximal formula depth :   38 (  19 average)
%            Number of connectives :  380 (   0   ~;   0   |;  54   &; 324   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   53 (   0 sgn;  11   !;  28   ?;  10   ^)
%                                         (  49   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_t: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
      ( ( ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_A
          = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
        & ( V_P
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) ) )
     => ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C ) ) )).

thf(p1s_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_A
          = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
        & ( V_P
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_t: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_G: '3d.Point'] :
      ( ( ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_A
          = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
        & ( V_P
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) )
        & ( V_G
          = ( '3d.centroid-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_P @ V_G ) @ ( '3d.vec/2' @ V_A @ V_B ) )
          = 0 )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_P @ V_G ) @ ( '3d.vec/2' @ V_A @ V_C ) )
          = 0 ) ) ) )).

thf(p3V_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_A
          = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
        & ( V_B
          = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
        & ( V_P
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_P @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p3mint_qustion,question,
    ( 'Find/1'
    @ ^ [V_mint: 'R'] :
      ? [V_minA: '3d.Point',V_minB: '3d.Point',V_minC: '3d.Point',V_minP: '3d.Point',V_minV: 'R'] :
        ( ( '<=/2' @ 0 @ V_mint )
        & ( '<=/2' @ V_mint @ 1 )
        & ( V_minA
          = ( '3d.point/3' @ V_mint @ 0 @ 1 ) )
        & ( V_minB
          = ( '3d.point/3' @ 1 @ V_mint @ 0 ) )
        & ( V_minC
          = ( '3d.point/3' @ 0 @ 1 @ V_mint ) )
        & ( V_minP
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) ) )
        & ( V_minV
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_minP @ V_minA @ V_minB @ V_minC ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_V: 'R'] :
              ? [V_t: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
                ( ( '<=/2' @ 0 @ V_t )
                & ( '<=/2' @ V_t @ 1 )
                & ( V_A
                  = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
                & ( V_B
                  = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
                & ( V_C
                  = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
                & ( V_P
                  = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) )
                & ( V_V
                  = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_P @ V_A @ V_B @ V_C ) ) ) ) )
          @ V_minV ) ) )).

thf(p3minV_qustion,question,
    ( 'Find/1'
    @ ^ [V_minV: 'R'] :
      ? [V_minA: '3d.Point',V_minB: '3d.Point',V_minC: '3d.Point',V_minP: '3d.Point',V_mint: 'R'] :
        ( ( '<=/2' @ 0 @ V_mint )
        & ( '<=/2' @ V_mint @ 1 )
        & ( V_minA
          = ( '3d.point/3' @ V_mint @ 0 @ 1 ) )
        & ( V_minB
          = ( '3d.point/3' @ 1 @ V_mint @ 0 ) )
        & ( V_minC
          = ( '3d.point/3' @ 0 @ 1 @ V_mint ) )
        & ( V_minP
          = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_mint ) ) )
        & ( V_minV
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_minP @ V_minA @ V_minB @ V_minC ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_V: 'R'] :
              ? [V_t: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
                ( ( '<=/2' @ 0 @ V_t )
                & ( '<=/2' @ V_t @ 1 )
                & ( V_A
                  = ( '3d.point/3' @ V_t @ 0 @ 1 ) )
                & ( V_B
                  = ( '3d.point/3' @ 1 @ V_t @ 0 ) )
                & ( V_C
                  = ( '3d.point/3' @ 0 @ 1 @ V_t ) )
                & ( V_P
                  = ( '3d.point/3' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ V_t ) ) )
                & ( V_V
                  = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_P @ V_A @ V_B @ V_C ) ) ) ) )
          @ V_minV ) ) )).

thf(p1s_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_t )
      & ( '<=/2' @ V_t @ 1 )
      & ( V_S_dot_0
        = ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '+/2' @ ( '-/1' @ V_t ) @ 1 ) ) ) ) ) ),
    answer_to(p1s_question,[])).

thf(p3V_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_t )
      & ( '<=/2' @ V_t @ 1 )
      & ( V_V_dot_0
        = ( '//2' @ ( '+/2' @ ( '-/1' @ ( '^/2' @ V_t @ 3 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ V_t ) ) @ 3 ) ) ) @ 18 ) ) ) ),
    answer_to(p3V_question,[])).

thf(p3mint_answer,answer,(
    ^ [V_mint_dot_0: 'R'] :
      ( V_mint_dot_0
      = ( '//2' @ 2 @ 3 ) ) ),
    answer_to(p3mint_question,[])).

thf(p3minV_answer,answer,(
    ^ [V_minV_dot_0: 'R'] :
      ( V_minV_dot_0
      = ( '//2' @ 49 @ 486 ) ) ),
    answer_to(p3minV_question,[])).
