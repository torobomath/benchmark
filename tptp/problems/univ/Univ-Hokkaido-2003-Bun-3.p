%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Consider the tetrahedron $PABC$ whose base is the equilateral
%% triangle $ABC$ with the side length of $3$. Define
%% $PA = PB = PC = 2$.
%%
%% (1) Find the volume of the tetrahedron $PABC$.
%%
%% (2) When the point $E$ on the side $AB$ and the point $F$ on the side
%% $AC$ satisfy $AE = AF$ and $\cos\angle EPF =\frac{4}{5}$, find the
%% length $AE$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  105 (  14 equality;  45 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   73 (   0   ~;   0   |;  14   &;  59   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = 3 )
        & ( ( '3d.distance/2' @ V_P @ V_A )
          = 2 )
        & ( ( '3d.distance/2' @ V_P @ V_B )
          = 2 )
        & ( ( '3d.distance/2' @ V_P @ V_C )
          = 2 )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_P @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_AE: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = 3 )
        & ( ( '3d.distance/2' @ V_P @ V_A )
          = 2 )
        & ( ( '3d.distance/2' @ V_P @ V_B )
          = 2 )
        & ( ( '3d.distance/2' @ V_P @ V_C )
          = 2 )
        & ( '3d.on/2' @ V_E @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( '3d.on/2' @ V_F @ ( '3d.seg/2' @ V_A @ V_C ) )
        & ( ( '3d.distance/2' @ V_A @ V_E )
          = ( '3d.distance/2' @ V_A @ V_F ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_E @ V_P @ V_F ) )
          = ( '//2' @ 4 @ 5 ) )
        & ( V_AE
          = ( '3d.distance/2' @ V_A @ V_E ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 3 @ 4 ) @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AE_dot_0: 'R'] :
      ( V_AE_dot_0
      = ( '//2' @ ( '+/2' @ -3 @ ( 'sqrt/1' @ 33 ) ) @ 3 ) ) ),
    answer_to(p2_question,[])).
