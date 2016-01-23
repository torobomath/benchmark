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

% Syntax   : Number of formulae    :    7 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (   5 equality;  40 variable)
%            Maximal formula depth :   12 (  10 average)
%            Number of connectives :   88 (   2   ~;   0   |;   4   &;  81   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   33 (  22 sgn;   2   !;   4   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.point-symmetry/3' @ V_P @ ( '2d.point/2' @ V_X @ V_Y ) @ ( '2d.point/2' @ V_p @ V_q ) ) )).

thf(p2,conjecture,(
    ? [V_G: '2d.Shape',V_Q: '2d.Point'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) )
      & ( '2d.point-symmetry-shape/2' @ V_G @ V_Q ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_R: '2d.Point'] :
        ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_X @ V_Y ) @ V_R @ ( '2d.line/2' @ ( '2d.point/2' @ V_p @ 0 ) @ ( '2d.point/2' @ V_p @ 1 ) ) ) )).

thf(p4,conjecture,(
    ? [V_G: '2d.Shape'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) )
      & ! [V_x: 'R'] :
          ~ ( '2d.line-symmetry-shape/2' @ V_G @ ( '2d.line/2' @ ( '2d.point/2' @ V_x @ 0 ) @ ( '2d.point/2' @ V_x @ 1 ) ) ) ) )).

thf(p4_1,conjecture,(
    ? [V_G: '2d.Shape'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) )
      & ! [V_l: '2d.Shape'] :
          ( ( ( '2d.line-type/1' @ V_l )
            & ( '2d.parallel/2' @ '2d.y-axis/0' @ V_l ) )
         => ~ ( '2d.line-symmetry-shape/2' @ V_G @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_p ) @ V_X ) @ ( '-/2' @ ( '*/2' @ 2 @ V_q ) @ V_Y ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( V_R_dot_0
      = ( '2d.point/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_p ) @ V_X ) @ V_Y ) ) ),
    answer_to(p3_question,[])).
