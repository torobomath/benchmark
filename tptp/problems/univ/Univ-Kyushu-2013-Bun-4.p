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
%            Number of atoms       :  223 (  14 equality;  44 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :  186 (   0   ~;   2   |;   9   &; 175   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;   8   ?;  16   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1,conjecture,
    ( '2d.tangent/2' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 1 ) @ ( 'sqrt/1' @ 2 ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ -2 ) @ ( '2d.point/2' @ 1 @ -1 ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 1 ) @ ( 'sqrt/1' @ 2 ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ -2 ) @ ( '2d.point/2' @ 1 @ -1 ) ) @ V_P ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.on/2' @ V_P
        @ ( '2d.intersection/2' @ ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 1 ) @ ( 'sqrt/1' @ 2 ) )
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( '-/2' @ ( '//2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ 4 ) @ 1 ) ) ) ) ) )).

thf(p3_1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_DE: '2d.Shape'] :
      ? [V_D: '2d.Shape',V_A: '2d.Shape',V_B: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( '>=/2' @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ ( '-/2' @ ( '//2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2 ) @ 4 ) @ 1 ) ) ) )
        & ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_p_dot_0 ) ) ) @ 2 ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p ) ) @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ 1 ) @ 2 ) ) @ 2 ) ) )
        & ( V_E
          = ( '2d.union/2' @ V_A @ V_B ) )
        & ( V_DE
          = ( '2d.intersection/2' @ V_D @ V_E ) ) ) )).

thf(p3_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_D: '2d.Shape',V_A: '2d.Shape',V_B: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( '>=/2' @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ ( '-/2' @ ( '//2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2 ) @ 4 ) @ 1 ) ) ) )
        & ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_p_dot_0 ) ) ) @ 2 ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_p ) ) @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ 1 ) @ 2 ) ) @ 2 ) ) )
        & ( V_E
          = ( '2d.union/2' @ V_A @ V_B ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ V_D @ V_E ) ) ) ) )).

thf(p1_2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2 @ 0 ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2 @ 0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 1 ) @ 2 ) ) @ 2 )
        | ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 1 ) @ 2 ) ) @ 2 )
        | ( ( '>=/2' @ V_y @ ( '-/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 4 ) @ 1 ) )
          & ( '<=/2' @ V_y @ 0 ) ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ ( '//2' @ 20 @ 3 ) ) ) ),
    answer_to(p3_2_question,[])).
