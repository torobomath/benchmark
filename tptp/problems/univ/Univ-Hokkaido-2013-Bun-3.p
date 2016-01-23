%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2013, Humanities Course, Problem 3
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-09-26
%%
%% <PROBLEM-TEXT>
%% Consider the spatial vectors $\vec{a} =(1, 0, 0)$, $\vec{b}$,
%% $\vec{c}$, and $\vec{d}$. Assume that
%% $|\vec{b}| = |\vec{c}| = |\vec{d}| = 1$, $\vec{b}$ is on the $x y$
%% plane, and the $y$ component of $\vec{b}$ is positive. Define
%% $\vec{a}\cdot\vec{b} = p$.
%%
%% (1) Prove that $|p| < 1$. Find the component form of $\vec{b}$ using
%% $p$.
%%
%% (2) Assume that $\vec{c}$ and $\vec{d}$ are different from each other
%% and satisfy
%% $\vec{a}\cdot\vec{c} =\vec{a}\cdot\vec{d} =\vec{b}\cdot\vec{c} =\vec{b}\cdot\vec{d} = p$.
%% When the $z$ component of $\vec{c}$ is positive, find the component
%% form of $\vec{c}$ and $\vec{d}$ using $p$.
%%
%% (3) When $\vec{c}\cdot\vec{d} = p$ in addition to the above
%% condition, find the value of $p$.
%% </PROBLEM-TEXT>
%#250

% Syntax   : Number of formulae    :    9 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  420 (  31 equality; 144 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :  352 (   3   ~;   0   |;  41   &; 307   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   34 (   1 sgn;   2   !;  18   ?;   8   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1,conjecture,(
    ! [V_b0: 'R',V_b1: 'R'] :
      ( ( ( '</2' @ 0 @ V_b1 )
        & ( '3d.is-unit-vec/1' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
     => ( '</2' @ ( 'abs/1' @ ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) ) @ 1 ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: '3d.Point'] :
        ( ( ( '3d.z-coord/1' @ V_b )
          = 0 )
        & ( '</2' @ 0 @ ( '3d.y-coord/1' @ V_b ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_b ) ) )
        & ( '3d.is-unit-vec/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_b ) ) ) )).

thf(p2_c_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: '3d.Point'] :
      ? [V_b0: 'R',V_b1: 'R',V_d0: 'R',V_d1: 'R',V_d2: 'R'] :
        ( ( '</2' @ 0 @ V_b1 )
        & ( '</2' @ 0 @ ( '3d.z-coord/1' @ V_c ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_c )
         != ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_c ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_c ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_c ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) ) ) )).

thf(p2_d_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: '3d.Point'] :
      ? [V_b0: 'R',V_b1: 'R',V_c0: 'R',V_c1: 'R',V_c2: 'R'] :
        ( ( '</2' @ 0 @ V_b1 )
        & ( '</2' @ 0 @ V_c2 )
        & ( ( '3d.point/3' @ V_c0 @ V_c1 @ V_c2 )
         != V_d )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_c0 @ V_c1 @ V_c2 ) ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_d ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_c0 @ V_c1 @ V_c2 ) ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_d ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_c0 @ V_c1 @ V_c2 ) ) ) )
        & ( 1
          = ( '3d.radius^2/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_d ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_b0: 'R',V_b1: 'R',V_c0: 'R',V_c1: 'R',V_c2: 'R',V_d0: 'R',V_d1: 'R',V_d2: 'R'] :
        ( ( '</2' @ 0 @ V_b1 )
        & ( '</2' @ 0 @ V_c2 )
        & ( ( '3d.vec3d/3' @ V_c0 @ V_c1 @ V_c2 )
         != ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_c0 @ V_c1 @ V_c2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ 1 @ 0 @ 0 ) @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec3d/3' @ V_c0 @ V_c1 @ V_c2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) )
        & ( V_p
          = ( '3d.inner-prod/2' @ ( '3d.vec3d/3' @ V_c0 @ V_c1 @ V_c2 ) @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) )
        & ( '3d.is-unit-vec/1' @ ( '3d.vec3d/3' @ V_b0 @ V_b1 @ 0 ) )
        & ( '3d.is-unit-vec/1' @ ( '3d.vec3d/3' @ V_c0 @ V_c1 @ V_c2 ) )
        & ( '3d.is-unit-vec/1' @ ( '3d.vec3d/3' @ V_d0 @ V_d1 @ V_d2 ) ) ) )).

thf(p1_2_answer,answer,(
    ^ [V_b_dot_0: '3d.Point'] :
      ( ( '</2' @ ( '-/1' @ 1 ) @ V_p )
      & ( '</2' @ V_p @ 1 )
      & ( V_b_dot_0
        = ( '3d.point/3' @ V_p @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_p @ 2 ) ) ) @ 0 ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_c_answer,answer,(
    ^ [V_c_dot_0: '3d.Point'] :
      ( ( '</2' @ ( '-/1' @ 1 ) @ V_p )
      & ( '</2' @ V_p @ 1 )
      & ( V_c_dot_0
        = ( '3d.point/3' @ V_p @ ( '//2' @ ( '*/2' @ V_p @ ( 'sqrt/1' @ ( '-/2' @ 1 @ V_p ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ V_p ) ) ) @ ( '//2' @ ( 'sqrt/1' @ ( '*/2' @ ( '-/2' @ 1 @ V_p ) @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_p ) ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ V_p ) ) ) ) ) ) ),
    answer_to(p2_c_question,[])).

thf(p2_d_answer,answer,(
    ^ [V_d_dot_0: '3d.Point'] :
      ( ( '</2' @ ( '-/1' @ 1 ) @ V_p )
      & ( '</2' @ V_p @ 1 )
      & ( V_d_dot_0
        = ( '3d.point/3' @ V_p @ ( '//2' @ ( '*/2' @ V_p @ ( 'sqrt/1' @ ( '-/2' @ 1 @ V_p ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ V_p ) ) ) @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ ( '*/2' @ ( '-/2' @ 1 @ V_p ) @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_p ) ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ V_p ) ) ) ) ) ) ) ),
    answer_to(p2_d_question,[])).

thf(p3_answer,answer,(
    ^ [V_p_dot_0: 'R'] :
      ( V_p_dot_0
      = ( '-/1' @ ( '//2' @ 1 @ 3 ) ) ) ),
    answer_to(p3_question,[])).
