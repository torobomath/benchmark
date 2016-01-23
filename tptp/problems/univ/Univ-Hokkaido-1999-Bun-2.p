%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 1999, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-09
%%
%% <PROBLEM-TEXT>
%% Define $0 < a < 1$. Let $A$ be the intersection of the curves
%% $y = 1 - x^2$ and $y =(\frac{1}{a^2} - 1)x^2$ in the first quadrant,
%% and let $B$ be the foot of the perpendicular drawn from $A$ to the
%% $x$ axis. Let $O$ be the origin, and let $S$ be the area of the
%% region enclosed by the line segments $OB$, $AB$, and the curve
%% $y =(\frac{1}{a^2} - 1)x^2$. Answer the following questions:
%%
%% (1) Find the coordinates of the point $B$.
%%
%% (2) Represent the area $S$ using $a$.
%%
%% (3) Find the value of $a$ that gives the maximum value of the area
%% $S$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  240 (  14 equality;  67 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :  206 (   0   ~;   0   |;  35   &; 171   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   26 (   0 sgn;   0   !;  14   ?;   6   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_simpl_qustion,question,
    ( 'Find/1'
    @ ^ [V_B: '2d.Point'] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ ( '//2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) @ ( '-/1' @ 1 ) ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' ) ) )).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_B: '2d.Point'] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point',V_S: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ ( '//2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) @ ( '-/1' @ 1 ) ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ V_O @ V_B ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ V_G @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point',V_B: '2d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ ( '//2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) @ ( '-/1' @ 1 ) ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ V_O @ V_B ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ V_G @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_simpl_answer,answer,(
    ^ [V_B_dot_0: '2d.Point'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( V_B_dot_0
        = ( '2d.point/2' @ V_a @ 0 ) ) ) ),
    answer_to(p1_simpl_question,[])).

thf(p1_answer,answer,(
    ^ [V_B_dot_0: '2d.Point'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( V_B_dot_0
        = ( '2d.point/2' @ V_a @ 0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( V_S_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 3 ) @ ( '-/2' @ V_a @ ( '^/2' @ V_a @ 3 ) ) ) ) ) ),
    answer_to(p2_question,[])).
