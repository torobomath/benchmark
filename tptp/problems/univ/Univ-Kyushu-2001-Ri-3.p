%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Science Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% In a space, consider a cylinder and a square prism such as follows:
%% The center axis of the cylinder is the $x$ axis, and the cross
%% section of the cylinder by the plane perpendicular to the center axis
%% is a circle with a radius of $r$. The center axis of the square prism
%% is the $z$ axis, the cross section of the square prism by the $x y$
%% plane is a square with the side length of $\frac{2\sqrt{2}}{r}$, and
%% the diagonals of the square are the $x$ and $y$ axes. Define
%% $0 < r\le\sqrt{2}$, and let $K$ be the intersection of the cylinder
%% and the square prism.
%%
%% (1) Find the area of the intersection of $K$ and the plane with a
%% height of $z = t$ ( $- r\le t\le r$) and parallel to the $x y$ plane.
%%
%% (2) Find the volume $V(r)$ of $K$.
%%
%% (3) Find the maximum value of $V(r)$ when $0 < r\le\sqrt{2}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  229 (  16 equality;  42 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :  191 (   0   ~;   0   |;  21   &; 170   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   2   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   0   !;  10   ?;  14   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    5 func;    6 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_area: $real] :
      ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'r/0' )
        & ( $lesseq @ 'r/0' @ ( 'sqrt/1' @ 2.0 ) )
        & ( $lesseq @ ( $uminus @ 'r/0' ) @ 't/0' )
        & ( $lesseq @ 't/0' @ 'r/0' )
        & ( V_C
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_1: '3d.Point'] :
                ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_1 ) @ 2.0 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_1 ) @ 2.0 ) ) @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '3d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P_dot_0 ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P_dot_0 ) ) ) @ ( $quotient @ 2.0 @ 'r/0' ) ) ) )
        & ( V_K
          = ( '3d.intersection/2' @ V_C @ V_D ) )
        & ( V_area
          = ( '3d.area-of/1'
            @ ( '3d.intersection/2'
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_P: '3d.Point'] :
                    ( ( '3d.z-coord/1' @ V_P )
                    = 't/0' ) )
              @ V_K ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'r/0' )
        & ( $lesseq @ 'r/0' @ ( 'sqrt/1' @ 2.0 ) )
        & ( V_C
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '3d.Point'] :
                ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2.0 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_0 ) @ 2.0 ) ) @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P: '3d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P ) ) ) @ ( $quotient @ 2.0 @ 'r/0' ) ) ) )
        & ( V_K
          = ( '3d.intersection/2' @ V_C @ V_D ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_K ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_maxV: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_V: $real] :
            ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape',V_r: $real] :
              ( ( $less @ 0.0 @ V_r )
              & ( $lesseq @ V_r @ ( 'sqrt/1' @ 2.0 ) )
              & ( V_C
                = ( '3d.shape-of-cpfun/1'
                  @ ^ [V_P_dot_0: '3d.Point'] :
                      ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2.0 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_0 ) @ 2.0 ) ) @ ( '^/2' @ V_r @ 2.0 ) ) ) )
              & ( V_D
                = ( '3d.shape-of-cpfun/1'
                  @ ^ [V_P: '3d.Point'] :
                      ( $lesseq @ ( $sum @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P ) ) ) @ ( $quotient @ 2.0 @ V_r ) ) ) )
              & ( V_K
                = ( '3d.intersection/2' @ V_C @ V_D ) )
              & ( V_V
                = ( '3d.volume-of/1' @ V_K ) ) ) )
        @ V_maxV ) )).

thf(p1_answer,answer,(
    ^ [V_area_dot_0: $real] :
      ( ( V_area_dot_0
        = ( $sum @ ( $product @ ( $quotient @ 8.0 @ 'r/0' ) @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ 'r/0' @ 2.0 ) @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $product @ -2.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) ) )
      & ( $less @ 0.0 @ 'r/0' )
      & ( $lesseq @ 'r/0' @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( V_V_dot_0
        = ( $difference @ ( $product @ 4.0 @ ( $product @ 'Pi/0' @ 'r/0' ) ) @ ( $product @ ( $quotient @ 8.0 @ 3.0 ) @ ( '^/2' @ 'r/0' @ 3.0 ) ) ) )
      & ( $less @ 0.0 @ 'r/0' )
      & ( $lesseq @ 'r/0' @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_maxV_dot_0: $real] :
      ( V_maxV_dot_0
      = ( $product @ ( $quotient @ ( $product @ 4.0 @ ( 'sqrt/1' @ 2.0 ) ) @ 3.0 ) @ ( $product @ 'Pi/0' @ ( 'sqrt/1' @ 'Pi/0' ) ) ) ) ),
    answer_to(p3_question,[])).

