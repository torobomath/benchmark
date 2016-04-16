%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2013, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $C$ be the circle $(x - 1)^2 +(y - 1)^2 = 2$ on the coordinate
%% plane. Answer the following questions:
%%
%% (1) Prove that the straight line $y = x - 2$ is in contact with the
%% circle $C$. Find the coordinates of the point of contact.
%%
%% (2) Find the coordinates of all the common points of the circle $C$
%% and the parabola $y =\frac{1}{4} x^2 - 1$.
%%
%% (3) Let $D$ be the region defined by the inequality
%% $y\ge\frac{1}{4} x^2 - 1$. Let $A$ be the region defined by the
%% inequality $|x| + |y|\le 2$, and let $B$ be the region defined by the
%% inequality $(|x| - 1)^2 +(y - 1)^2\le 2$. Let $E$ be the union
%% $A\cup B$, that is, the combination of the regions $A$ and $B$. Then,
%% draw the intersection $D\cap E$ of the regions $D$ and $E$, and find
%% the area of the intersection.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    9 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  227 (  14 equality;  44 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :  190 (   0   ~;   2   |;   9   &; 179   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   0   !;   8   ?;  16   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    4 func;    8 numbers)

include('axioms.ax').

thf(a1_1,conjecture,
    ( '2d.tangent/2' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( 'sqrt/1' @ 2.0 ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ -2.0 ) @ ( '2d.point/2' @ 1.0 @ -1.0 ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( 'sqrt/1' @ 2.0 ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ -2.0 ) @ ( '2d.point/2' @ 1.0 @ -1.0 ) ) @ V_P ) )).

thf(a2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.on/2' @ V_P
        @ ( '2d.intersection/2' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( 'sqrt/1' @ 2.0 ) )
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( $difference @ ( $quotient @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ 4.0 ) @ 1.0 ) ) ) ) ) )).

thf(a3_1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_DE: '2d.Shape'] :
      ? [V_D: '2d.Shape',V_A: '2d.Shape',V_B: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( $greatereq @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ ( $difference @ ( $quotient @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2.0 ) @ 4.0 ) @ 1.0 ) ) ) )
        & ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_p_dot_0 ) ) ) @ 2.0 ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p ) ) @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ ( '2d.y-coord/1' @ V_p ) @ 1.0 ) @ 2.0 ) ) @ 2.0 ) ) )
        & ( V_E
          = ( '2d.union/2' @ V_A @ V_B ) )
        & ( V_DE
          = ( '2d.intersection/2' @ V_D @ V_E ) ) ) )).

thf(a3_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_D: '2d.Shape',V_A: '2d.Shape',V_B: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( $greatereq @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ ( $difference @ ( $quotient @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2.0 ) @ 4.0 ) @ 1.0 ) ) ) )
        & ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_p_dot_0 ) ) ) @ 2.0 ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p ) ) @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ ( '2d.y-coord/1' @ V_p ) @ 1.0 ) @ 2.0 ) ) @ 2.0 ) ) )
        & ( V_E
          = ( '2d.union/2' @ V_A @ V_B ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ V_D @ V_E ) ) ) ) )).

thf(a1_2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2.0 @ 0.0 ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2.0 @ 0.0 ) ) ),
    answer_to(a2_question,[])).

thf(a3_1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ V_x @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ 1.0 ) @ 2.0 ) ) @ 2.0 )
        | ( $lesseq @ ( $sum @ ( '^/2' @ ( $sum @ V_x @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ 1.0 ) @ 2.0 ) ) @ 2.0 )
        | ( ( $greatereq @ V_y @ ( $difference @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 4.0 ) @ 1.0 ) )
          & ( $lesseq @ V_y @ 0.0 ) ) ) ),
    answer_to(a3_1_question,[])).

thf(a3_2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $sum @ ( $product @ 2.0 @ 'Pi/0' ) @ ( $quotient @ 20.0 @ 3.0 ) ) ) ),
    answer_to(a3_2_question,[])).

