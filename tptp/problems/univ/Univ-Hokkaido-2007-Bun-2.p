%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Consider the circle $C$ defined by the equation
%% $x^2 + y^2 - 4 y + 2 = 0$.
%%
%% (1) Prove that the $2$ circles passing through the points
%% $A(-\sqrt{2}, 0)$ and $O(0, 0)$ and centered at the points
%% $(-\frac{\sqrt{2}}{2}, 0)$ and $(-\frac{\sqrt{2}}{2}, 2)$ are both in
%% contact with the circle $C$.
%%
%% (2) When the point $P$ moves on the circle $C$, find the maximum and
%% minimum values of $\cos\angle APO$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  175 (  18 equality;  51 variable)
%            Maximal formula depth :   26 (  15 average)
%            Number of connectives :  134 (   0   ~;   0   |;  25   &; 108   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   20 (   0 sgn;   5   !;   8   ?;   7   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_O: '2d.Point',V_C: '2d.Shape',V_C1: '2d.Shape',V_C2: '2d.Shape'] :
      ( ( ( V_A
          = ( '2d.point/2' @ ( '-/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) @ 0 ) )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( '2d.circle-type/1' @ V_C )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ ( '2d.y-coord/1' @ V_p ) ) ) @ 2 ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_C1 )
        & ( '2d.on/2' @ V_A @ V_C2 )
        & ( '2d.on/2' @ V_O @ V_C1 )
        & ( '2d.on/2' @ V_O @ V_C2 )
        & ( '2d.on/2' @ V_O @ V_C2 )
        & ( ( '2d.center-of/1' @ V_C1 )
          = ( '2d.point/2' @ ( '-/2' @ 0 @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) @ 0 ) )
        & ( ( '2d.center-of/1' @ V_C2 )
          = ( '2d.point/2' @ ( '-/2' @ 0 @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) @ 2 ) ) )
     => ( ( '2d.tangent/2' @ V_C @ V_C1 )
        & ( '2d.tangent/2' @ V_C @ V_C2 ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_zmax: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_A: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_C: '2d.Shape'] :
              ( ( V_A
                = ( '2d.point/2' @ ( '-/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) @ 0 ) )
              & ( V_O
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( V_z
                = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_O ) ) )
              & ( '2d.circle-type/1' @ V_C )
              & ( ( '2d.center-of/1' @ V_C )
                = ( '2d.point/2' @ 0 @ 2 ) )
              & ( ( '2d.radius-of/1' @ V_C )
                = ( 'sqrt/1' @ 2 ) )
              & ( '2d.on/2' @ V_P @ V_C ) ) )
        @ V_zmax ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_zmin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_A: '2d.Point',V_O: '2d.Point',V_P: '2d.Point',V_C: '2d.Shape'] :
              ( ( V_A
                = ( '2d.point/2' @ ( '-/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) @ 0 ) )
              & ( V_O
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( V_z
                = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_O ) ) )
              & ( '2d.circle-type/1' @ V_C )
              & ( ( '2d.center-of/1' @ V_C )
                = ( '2d.point/2' @ 0 @ 2 ) )
              & ( ( '2d.radius-of/1' @ V_C )
                = ( 'sqrt/1' @ 2 ) )
              & ( '2d.on/2' @ V_P @ V_C ) ) )
        @ V_zmin ) )).

thf(p2_1_answer,answer,(
    ^ [V_zmax_dot_0: 'R'] :
      ( V_zmax_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ 3 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_zmin_dot_0: 'R'] : ( V_zmin_dot_0 = 0 ) ),
    answer_to(p2_2_question,[])).
