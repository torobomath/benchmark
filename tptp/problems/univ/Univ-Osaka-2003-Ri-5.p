%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2003, Science Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% (1) Consider an ellipse on a plane that has principal axes (major and
%% minor axes) parallel to the coordinate axes and is in contact with
%% both the $x$ and $y$ axes. Let $a$ be the $x$ coordinate of the
%% center of the ellipse. Find the range of the value of $a$ such that
%% there exists such an ellipse that passes through the point $A(1, 2)$,
%% where circles are regarded as special cases of ellipses.
%%
%% (2) For $a$ that gives just two ellipses satisfying the description
%% in (1), let $B$ and $C$ be the centers of the $2$ ellipses and let
%% the function $S(a)$ be the area of $\triangle ABC$. Then, draw the
%% graph of $S(a)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  202 (  14 equality;  67 variable)
%            Maximal formula depth :   45 (  22 average)
%            Number of connectives :  172 (   2   ~;   1   |;  22   &; 146   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   33 (   0 sgn;   4   !;  15   ?;  12   ^)
%                                         (  31   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_b: 'R',V_s: 'R',V_t: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_x @ V_a ) @ 2 ) @ ( '^/2' @ V_s @ 2 ) ) @ ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_y @ V_b ) @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) @ -1 ) ) ) )
        & ( '2d.tangent/2' @ V_C @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_C @ '2d.y-axis/0' )
        & ( '2d.on/2' @ V_A @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_G: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R',V_oval_B: '2d.Shape',V_oval_C: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( ( '2d.x-coord/1' @ V_B )
          = V_a )
        & ( ( '2d.x-coord/1' @ V_C )
          = V_a )
        & ( V_oval_B
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_x_dot_1 @ ( '2d.x-coord/1' @ V_B ) ) @ 2 ) @ ( '^/2' @ V_s @ 2 ) ) @ ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_y_dot_1 @ ( '2d.y-coord/1' @ V_B ) ) @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) @ -1 ) ) ) )
        & ( V_oval_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ ( '2d.x-coord/1' @ V_C ) ) @ 2 ) @ ( '^/2' @ V_u @ 2 ) ) @ ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ ( '2d.y-coord/1' @ V_C ) ) @ 2 ) @ ( '^/2' @ V_v @ 2 ) ) @ -1 ) ) ) )
        & ( '2d.tangent/2' @ V_oval_B @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_oval_B @ '2d.y-axis/0' )
        & ( '2d.tangent/2' @ V_oval_C @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_oval_C @ '2d.y-axis/0' )
        & ( '2d.on/2' @ V_A @ V_oval_B )
        & ( '2d.on/2' @ V_A @ V_oval_C )
        & ( V_oval_B != V_oval_C )
        & ! [V_w: 'R',V_x: 'R',V_y: 'R',V_z: 'R'] :
          ? [V_oval: '2d.Shape'] :
            ( ( ( V_oval
                = ( '2d.graph-of-implicit-function/1'
                  @ ^ [V_Px: 'R',V_Py: 'R'] :
                      ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_Px @ V_x ) @ 2 ) @ ( '^/2' @ V_w @ 2 ) ) @ ( '+/2' @ ( '//2' @ ( '^/2' @ ( '-/2' @ V_Py @ V_y ) @ 2 ) @ ( '^/2' @ V_z @ 2 ) ) @ -1 ) ) ) )
              & ( '2d.tangent/2' @ V_oval @ '2d.x-axis/0' )
              & ( '2d.tangent/2' @ V_oval @ '2d.y-axis/0' )
              & ( '2d.on/2' @ V_A @ V_oval ) )
           => ( ( V_oval = V_oval_B )
              | ( V_oval = V_oval_C ) ) )
        & ( V_G
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( '>=/2' @ V_a_dot_0 @ ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_G_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 1 @ 2 ) @ V_a )
      & ( V_a != 1 )
      & ( V_G_dot_0
        = ( '//2' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) ) ) ) @ ( 'abs/1' @ ( '-/2' @ V_a @ 1 ) ) ) ) ) ),
    answer_to(p2_question,[])).
