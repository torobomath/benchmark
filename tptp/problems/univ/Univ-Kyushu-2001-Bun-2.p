%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Let $G$ be the graph of the cubic function
%% $y = x^3 + a x^2 + b x + c$.
%%
%% (1) Find the coordinates of the point symmetric to the point $(X, Y)$
%% with respect to the point $(p, q)$ on the $x y$ plane.
%%
%% (2) Prove that $G$ is point-symmetric with respect to a certain point
%% on it.
%%
%% (3) Find the coordinates of the point symmetric to the point $(X, Y)$
%% with respect to the straight line $x = p$ that is parallel to the $y$
%% axis.
%%
%% (4) Prove that $G$ is not line-symmetric with respect to any straight
%% line that is parallel to the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   13 (   0 unit;   7 type;   0 defn)
%            Number of atoms       :   94 (   4 equality;  11 variable)
%            Maximal formula depth :   13 (   6 average)
%            Number of connectives :   81 (   1   ~;   0   |;   2   &;  78   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   7   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   1   !;   3   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    2 func;    3 numbers)

include('axioms.ax').

thf('X/0_type',type,(
    'X/0': $real )).

thf('Y/0_type',type,(
    'Y/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('p/0_type',type,(
    'p/0': $real )).

thf('q/0_type',type,(
    'q/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.point-symmetry/3' @ V_P @ ( '2d.point/2' @ 'X/0' @ 'Y/0' ) @ ( '2d.point/2' @ 'p/0' @ 'q/0' ) ) )).

thf(p2,conjecture,(
    ? [V_G: '2d.Shape',V_Q: '2d.Point'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      & ( '2d.point-symmetry-shape/2' @ V_G @ V_Q ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_R: '2d.Point'] :
        ( '2d.line-symmetry/3' @ ( '2d.point/2' @ 'X/0' @ 'Y/0' ) @ V_R @ ( '2d.line/2' @ ( '2d.point/2' @ 'p/0' @ 0.0 ) @ ( '2d.point/2' @ 'p/0' @ 1.0 ) ) ) )).

thf(p4,conjecture,(
    ? [V_G: '2d.Shape'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      & ! [V_x: $real] :
          ~ ( '2d.line-symmetry-shape/2' @ V_G @ ( '2d.line/2' @ ( '2d.point/2' @ V_x @ 0.0 ) @ ( '2d.point/2' @ V_x @ 1.0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( $difference @ ( $product @ 2.0 @ 'p/0' ) @ 'X/0' ) @ ( $difference @ ( $product @ 2.0 @ 'q/0' ) @ 'Y/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( V_R_dot_0
      = ( '2d.point/2' @ ( $difference @ ( $product @ 2.0 @ 'p/0' ) @ 'X/0' ) @ 'Y/0' ) ) ),
    answer_to(p3_question,[])).

