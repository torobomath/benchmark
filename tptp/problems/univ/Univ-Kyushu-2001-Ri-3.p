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

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  211 (  16 equality;  62 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :  173 (   0   ~;   0   |;  17   &; 156   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   30 (   0 sgn;   0   !;  10   ?;  14   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_area: 'R'] :
      ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '<=/2' @ V_r @ ( 'sqrt/1' @ 2 ) )
        & ( '<=/2' @ ( '-/1' @ V_r ) @ V_t )
        & ( '<=/2' @ V_t @ V_r )
        & ( V_C
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_1: '3d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_1 ) @ 2 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_1 ) @ 2 ) ) @ ( '^/2' @ V_r @ 2 ) ) ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '3d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P_dot_0 ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P_dot_0 ) ) ) @ ( '//2' @ 2 @ V_r ) ) ) )
        & ( V_K
          = ( '3d.intersection/2' @ V_C @ V_D ) )
        & ( V_area
          = ( '3d.area-of/1'
            @ ( '3d.intersection/2'
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_P: '3d.Point'] :
                    ( ( '3d.z-coord/1' @ V_P )
                    = V_t ) )
              @ V_K ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '<=/2' @ V_r @ ( 'sqrt/1' @ 2 ) )
        & ( V_C
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '3d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_0 ) @ 2 ) ) @ ( '^/2' @ V_r @ 2 ) ) ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_P: '3d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P ) ) ) @ ( '//2' @ 2 @ V_r ) ) ) )
        & ( V_K
          = ( '3d.intersection/2' @ V_C @ V_D ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_K ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_maxV: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_V: 'R'] :
            ? [V_C: '3d.Shape',V_K: '3d.Shape',V_D: '3d.Shape',V_r: 'R'] :
              ( ( '</2' @ 0 @ V_r )
              & ( '<=/2' @ V_r @ ( 'sqrt/1' @ 2 ) )
              & ( V_C
                = ( '3d.shape-of-cpfun/1'
                  @ ^ [V_P_dot_0: '3d.Point'] :
                      ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_P_dot_0 ) @ 2 ) ) @ ( '^/2' @ V_r @ 2 ) ) ) )
              & ( V_D
                = ( '3d.shape-of-cpfun/1'
                  @ ^ [V_P: '3d.Point'] :
                      ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_P ) ) @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_P ) ) ) @ ( '//2' @ 2 @ V_r ) ) ) )
              & ( V_K
                = ( '3d.intersection/2' @ V_C @ V_D ) )
              & ( V_V
                = ( '3d.volume-of/1' @ V_K ) ) ) )
        @ V_maxV ) )).

thf(p1_answer,answer,(
    ^ [V_area_dot_0: 'R'] :
      ( V_area_dot_0
      = ( '+/2' @ ( '*/2' @ ( '//2' @ 8 @ V_r ) @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_r @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_t @ 2 ) ) @ ( '*/2' @ -2 @ ( '^/2' @ V_r @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '-/2' @ ( '*/2' @ 4 @ ( '*/2' @ 'Pi/0' @ V_r ) ) @ ( '*/2' @ ( '//2' @ 8 @ 3 ) @ ( '^/2' @ V_r @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_maxV_dot_0: 'R'] :
      ( V_maxV_dot_0
      = ( '*/2' @ ( '//2' @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 2 ) ) @ 3 ) @ ( '*/2' @ 'Pi/0' @ ( 'sqrt/1' @ 'Pi/0' ) ) ) ) ),
    answer_to(p3_question,[])).
