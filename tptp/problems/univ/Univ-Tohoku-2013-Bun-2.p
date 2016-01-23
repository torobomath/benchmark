%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Humanities Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% For the tetrahedron $OABC$, assume that $OA = OB = OC = 1$. Assume
%% that $\angle AOB = 60^{\circ}$, $\angle BOC = 45^{\circ}$,
%% $\angle COA = 45^{\circ}$, and $\vec{a} =\vec{OA}$,
%% $\vec{b} =\vec{OB}$, $\vec{c} =\vec{OC}$. Draw a perpendicular from
%% the point $C$ to the face $OAB$, and let $H$ be the foot of the
%% perpendicular.
%%
%% (1) Represent the vector $\vec{OH}$ using $\vec{a}$ and $\vec{b}$.
%%
%% (2) Find the length of $CH$.
%%
%% (3) Find the volume of the tetrahedron $OABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  210 (  27 equality;  77 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :  152 (   0   ~;   0   |;  21   &; 131   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   22 (   0 sgn;   0   !;  16   ?;   6   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_H: '3d.Point',V_c1: 'R',V_c2: 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_c1 @ ( 'cons/2' @ V_c2 @ 'nil/0' ) ) )
        & ( ( '3d.vec/2' @ V_O @ V_H )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ V_c1 @ ( '3d.vec/2' @ V_O @ V_A ) ) @ ( '3d.sv*/2' @ V_c2 @ ( '3d.vec/2' @ V_O @ V_B ) ) ) )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_B )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_C )
          = 1 )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_A ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_CH: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_H: '3d.Point'] :
        ( ( V_CH
          = ( '3d.distance/2' @ V_C @ V_H ) )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_B )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_C )
          = 1 )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_A ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_B )
          = 1 )
        & ( ( '3d.distance/2' @ V_O @ V_C )
          = 1 )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_A ) )
          = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 3 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 3 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_CH_dot_0: 'R'] :
      ( V_CH_dot_0
      = ( '//2' @ 1 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ 1 @ 12 ) ) ),
    answer_to(p3_question,[])).
