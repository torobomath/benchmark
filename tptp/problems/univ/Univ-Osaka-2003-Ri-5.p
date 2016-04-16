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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  204 (  14 equality;  60 variable)
%            Maximal formula depth :   45 (  18 average)
%            Number of connectives :  174 (   2   ~;   1   |;  22   &; 148   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   31 (   0 sgn;   4   !;  15   ?;  12   ^)
%                                         (  31   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_b: $real,V_s: $real,V_t: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_x @ V_a ) @ 2.0 ) @ ( '^/2' @ V_s @ 2.0 ) ) @ ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_y @ V_b ) @ 2.0 ) @ ( '^/2' @ V_t @ 2.0 ) ) @ -1.0 ) ) ) )
        & ( '2d.tangent/2' @ V_C @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_C @ '2d.y-axis/0' )
        & ( '2d.on/2' @ V_A @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_G: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_s: $real,V_t: $real,V_u: $real,V_v: $real,V_oval_B: '2d.Shape',V_oval_C: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( ( '2d.x-coord/1' @ V_B )
          = 'a/0' )
        & ( ( '2d.x-coord/1' @ V_C )
          = 'a/0' )
        & ( V_oval_B
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_x_dot_1 @ ( '2d.x-coord/1' @ V_B ) ) @ 2.0 ) @ ( '^/2' @ V_s @ 2.0 ) ) @ ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_y_dot_1 @ ( '2d.y-coord/1' @ V_B ) ) @ 2.0 ) @ ( '^/2' @ V_t @ 2.0 ) ) @ -1.0 ) ) ) )
        & ( V_oval_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_x_dot_0 @ ( '2d.x-coord/1' @ V_C ) ) @ 2.0 ) @ ( '^/2' @ V_u @ 2.0 ) ) @ ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_y_dot_0 @ ( '2d.y-coord/1' @ V_C ) ) @ 2.0 ) @ ( '^/2' @ V_v @ 2.0 ) ) @ -1.0 ) ) ) )
        & ( '2d.tangent/2' @ V_oval_B @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_oval_B @ '2d.y-axis/0' )
        & ( '2d.tangent/2' @ V_oval_C @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_oval_C @ '2d.y-axis/0' )
        & ( '2d.on/2' @ V_A @ V_oval_B )
        & ( '2d.on/2' @ V_A @ V_oval_C )
        & ( V_oval_B != V_oval_C )
        & ! [V_w: $real,V_x: $real,V_y: $real,V_z: $real] :
          ? [V_oval: '2d.Shape'] :
            ( ( ( V_oval
                = ( '2d.graph-of-implicit-function/1'
                  @ ^ [V_Px: $real,V_Py: $real] :
                      ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_Px @ V_x ) @ 2.0 ) @ ( '^/2' @ V_w @ 2.0 ) ) @ ( $sum @ ( $quotient @ ( '^/2' @ ( $difference @ V_Py @ V_y ) @ 2.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) @ -1.0 ) ) ) )
              & ( '2d.tangent/2' @ V_oval @ '2d.x-axis/0' )
              & ( '2d.tangent/2' @ V_oval @ '2d.y-axis/0' )
              & ( '2d.on/2' @ V_A @ V_oval ) )
           => ( ( V_oval = V_oval_B )
              | ( V_oval = V_oval_C ) ) )
        & ( V_G
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greatereq @ V_a_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_G_dot_0: $real] :
      ( ( $less @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' )
      & ( 'a/0' != 1.0 )
      & ( V_G_dot_0
        = ( $quotient @ ( $product @ 2.0 @ ( $product @ 'a/0' @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) ) ) ) @ ( 'abs/1' @ ( $difference @ 'a/0' @ 1.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

