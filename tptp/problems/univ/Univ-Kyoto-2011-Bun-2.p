%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-08
%%
%% <PROBLEM-TEXT>
%% In the tetrahedron $OABC$, let $H$ be the intersection of the
%% perpendicular drawn from the point $O$ to the plane containing the
%% points $A$, $B$, and $C$ and the plane. When $\vec{OA}\bot\vec{BC}$,
%% $\vec{OB}\bot\vec{OC}$, $|\vec{OA}|=2$, $|\vec{OB}|=|\vec{OC}|=3$,
%% and $|\vec{AB}|=\sqrt{7}$, find $|\vec{OH}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   87 (  13 equality;  42 variable)
%            Maximal formula depth :   34 (  20 average)
%            Number of connectives :   59 (   0   ~;   0   |;  17   &;  42   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   13 (   0 sgn;   0   !;  11   ?;   2   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_OHLen: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_H: '3d.Point',V_OA: '3d.Vector',V_BC: '3d.Vector',V_OB: '3d.Vector',V_OC: '3d.Vector',V_ABC: '3d.Shape',V_OH: '3d.Shape'] :
        ( ( 2
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( 3
          = ( '3d.distance/2' @ V_O @ V_B ) )
        & ( 3
          = ( '3d.distance/2' @ V_O @ V_C ) )
        & ( V_OA
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_BC
          = ( '3d.vec/2' @ V_B @ V_C ) )
        & ( V_OB
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_OC
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( 0
          = ( '3d.inner-prod/2' @ V_OA @ V_BC ) )
        & ( 0
          = ( '3d.inner-prod/2' @ V_OB @ V_OC ) )
        & ( ( 'sqrt/1' @ 7 )
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( '3d.plane-type/1' @ V_ABC )
        & ( '3d.on/2' @ V_A @ V_ABC )
        & ( '3d.on/2' @ V_B @ V_ABC )
        & ( '3d.on/2' @ V_C @ V_ABC )
        & ( '3d.on/2' @ V_H @ V_ABC )
        & ( V_OH
          = ( '3d.line/2' @ V_O @ V_H ) )
        & ( '3d.perpendicular/2' @ V_OH @ V_ABC )
        & ( V_OHLen
          = ( '3d.distance/2' @ V_O @ V_H ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_OHLen_dot_0: 'R'] :
      ( V_OHLen_dot_0
      = ( '//2' @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 10 ) ) @ 5 ) ) ),
    answer_to(p1_question,[])).