%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 1999, Science Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% Let $S_1$ be the spherical surface with the center at the point
%% $(10, 0, 0)$ in a space and the radius of $9$, and $S_2$, the
%% spherical surface with the center at the point $(0, 10, 0)$ and the
%% radius $8$. Find all the directional vectors $(a, b, c)$ $(c\ge 0)$
%% of the length $1$ that are in contact with $S_1$ and $S_2$ and pass
%% through the origin.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  169 (  18 equality;  50 variable)
%            Maximal formula depth :   26 (  18 average)
%            Number of connectives :  129 (   0   ~;   0   |;  30   &;  99   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   0   :)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: '3d.Vector'] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_a: 'R',V_b: 'R',V_c: 'R',V_l: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S1 )
        & ( ( '3d.center-of/1' @ V_S1 )
          = ( '3d.point/3' @ 10 @ 0 @ 0 ) )
        & ( ( '3d.radius-of/1' @ V_S1 )
          = 9 )
        & ( '3d.sphere-type/1' @ V_S2 )
        & ( ( '3d.center-of/1' @ V_S2 )
          = ( '3d.point/3' @ 0 @ 10 @ 0 ) )
        & ( ( '3d.radius-of/1' @ V_S2 )
          = 8 )
        & ( '3d.line-type/1' @ V_l )
        & ( '3d.tangent/2' @ V_l @ V_S1 )
        & ( '3d.tangent/2' @ V_l @ V_S2 )
        & ( '3d.on/2' @ '3d.origin/0' @ V_l )
        & ( V_abc
          = ( '3d.vec/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_a @ V_b @ V_c ) ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_a @ V_b @ V_c ) ) )
        & ( '>=/2' @ V_c @ 0 )
        & ( '3d.vec-parallel/2' @ V_abc @ ( '3d.direction-vec/1' @ V_l ) ) ) )).

thf(p1_nonvec_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: '3d.Point'] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_a: 'R',V_b: 'R',V_c: 'R',V_l: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S1 )
        & ( ( '3d.center-of/1' @ V_S1 )
          = ( '3d.point/3' @ 10 @ 0 @ 0 ) )
        & ( ( '3d.radius-of/1' @ V_S1 )
          = 9 )
        & ( '3d.sphere-type/1' @ V_S2 )
        & ( ( '3d.center-of/1' @ V_S2 )
          = ( '3d.point/3' @ 0 @ 10 @ 0 ) )
        & ( ( '3d.radius-of/1' @ V_S2 )
          = 8 )
        & ( '3d.line-type/1' @ V_l )
        & ( '3d.tangent/2' @ V_l @ V_S1 )
        & ( '3d.tangent/2' @ V_l @ V_S2 )
        & ( '3d.on/2' @ '3d.origin/0' @ V_l )
        & ( V_abc
          = ( '3d.point/3' @ V_a @ V_b @ V_c ) )
        & ( 1
          = ( '3d.distance/2' @ '3d.origin/0' @ ( '3d.point/3' @ V_a @ V_b @ V_c ) ) )
        & ( '>=/2' @ V_c @ 0 )
        & ( '3d.parallel/2' @ ( '3d.line/2' @ V_abc @ '3d.origin/0' ) @ V_l ) ) )).

thf(p1_answer,answer,(
    ^ [V_abc_dot_0: '3d.Vector'] :
      ( ( ( 'abs/1' @ ( '3d.vec-x-coord/1' @ V_abc_dot_0 ) )
        = ( '//2' @ ( 'sqrt/1' @ 19 ) @ 10 ) )
      & ( ( 'abs/1' @ ( '3d.vec-y-coord/1' @ V_abc_dot_0 ) )
        = ( '//2' @ 3 @ 5 ) )
      & ( ( '3d.vec-z-coord/1' @ V_abc_dot_0 )
        = ( '//2' @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 5 ) ) @ 10 ) ) ) ),
    answer_to(p1_question,[])).

thf(p1_nonvec_answer,answer,(
    ^ [V_abc_dot_0: '3d.Point'] :
      ( ( ( 'abs/1' @ ( '3d.x-coord/1' @ V_abc_dot_0 ) )
        = ( '//2' @ ( 'sqrt/1' @ 19 ) @ 10 ) )
      & ( ( 'abs/1' @ ( '3d.y-coord/1' @ V_abc_dot_0 ) )
        = ( '//2' @ 3 @ 5 ) )
      & ( ( '3d.z-coord/1' @ V_abc_dot_0 )
        = ( '//2' @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 5 ) ) @ 10 ) ) ) ),
    answer_to(p1_nonvec_question,[])).
