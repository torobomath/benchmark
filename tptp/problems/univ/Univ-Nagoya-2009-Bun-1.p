%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2009, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-26
%%
%% <PROBLEM-TEXT>
%% Assume that the spatial vectors $\vec{OA} =(1, 0, 0)$,
%% $\vec{OB} =(a, b, 0)$, and $\vec{OC}$ satisfy the conditions
%% $|\vec{OB}| = |\vec{OC}| = 1$, $\vec{OA}\cdot\vec{OB} =\frac{1}{3}$,
%% $\vec{OA}\cdot\vec{OC} =\frac{1}{2}$, and
%% $\vec{OB}\cdot\vec{OC} =\frac{5}{6}$, where $a$ and $b$ are positive
%% numbers.
%%
%% (1) Find the values of $a$ and $b$.
%%
%% (2) Find the area $S$ of the triangle $OAB$.
%%
%% (3) Find the volume $V$ of the tetrahedron $OABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  252 (  27 equality;  55 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  194 (   0   ~;   0   |;  27   &; 167   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;  15   ?;   6   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_A )
          = ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B )
          = ( '3d.vec3d/3' @ V_a @ V_b @ 0 ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = 1 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = 1 )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = ( '//2' @ 1 @ 3 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 5 @ 6 ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ '3d.origin/0' @ V_A @ V_B ) ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_A )
          = ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B )
          = ( '3d.vec3d/3' @ V_a @ V_b @ 0 ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = 1 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = 1 )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = ( '//2' @ 1 @ 3 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 5 @ 6 ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ '3d.origin/0' @ V_A @ V_B @ V_C ) ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_A )
          = ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B )
          = ( '3d.vec3d/3' @ V_a @ V_b @ 0 ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = 1 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = 1 )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) )
          = ( '//2' @ 1 @ 3 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) )
          = ( '//2' @ 5 @ 6 ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( V_ab_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 3 ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ 3 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 2 ) @ 3 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 2 ) @ 18 ) ) ),
    answer_to(p3_question,[])).
