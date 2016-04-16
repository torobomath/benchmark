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

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  275 (  14 equality;  48 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :  241 (   0   ~;   0   |;  35   &; 206   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   1   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  14   ?;   6   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_simpl_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_B: '2d.Point'] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ ( $quotient @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' ) ) )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_B: '2d.Point'] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point',V_S: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ ( $quotient @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_O @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ V_G @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '2d.Point',V_F: '2d.Shape',V_G: '2d.Shape',V_O: '2d.Point',V_B: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ ( $quotient @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ V_F )
        & ( '2d.on/2' @ V_A @ V_G )
        & ( '2d.on/2' @ V_A @ '2d.1st-quadrant/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ '2d.x-axis/0' )
        & ( V_O = '2d.origin/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_O @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ V_G @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_simpl_answer,answer,(
    ^ [V_B_dot_0: '2d.Point'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'a/0' @ 0.0 ) ) ) ),
    answer_to(p1_simpl_question,[])).

thf(p1_answer,answer,(
    ^ [V_B_dot_0: '2d.Point'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'a/0' @ 0.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( V_S_dot_0
        = ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ ( $difference @ 'a/0' @ ( '^/2' @ 'a/0' @ 3.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

