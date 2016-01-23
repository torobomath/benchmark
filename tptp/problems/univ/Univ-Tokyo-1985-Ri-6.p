%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1985, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% In the $x y z$ space, let $A$ be the point $(0, 0, 0)$, $B$ the point
%% $(8, 0, 0)$, and $C$ the point $(6, 2\sqrt{3}, 0)$. When the point
%% $P$ makes a circuit on the sides of $\triangle ABC$, let $K$ be the
%% solid formed by the sphere with the center at $P$ and the radius $1$.
%%
%% (1) Find the area of the cross section of $K$ cut by the plane
%% $z = 0$.
%%
%% (2) Find the volume of $K$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  121 (  13 equality;  27 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   91 (   0   ~;   0   |;  10   &;  81   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;  10   ?;   7   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_K: '3d.Shape'] :
        ( ( V_A = '3d.origin/0' )
        & ( V_B
          = ( '3d.point/3' @ 8 @ 0 @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 6 @ ( '*/2' @ 2 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) @ 0 ) )
        & ( V_K
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '3d.Point'] :
              ? [V_P: '3d.Point'] :
                ( ( '3d.on/2' @ V_P @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
                & ( '>=/2' @ 1 @ ( '3d.distance/2' @ V_p_dot_0 @ V_P ) ) ) ) )
        & ( V_S
          = ( '3d.area-of/1'
            @ ( '3d.intersection/2' @ V_K
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                    ( ( '3d.z-coord/1' @ V_p )
                    = 0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_K: '3d.Shape'] :
        ( ( V_A = '3d.origin/0' )
        & ( V_B
          = ( '3d.point/3' @ 8 @ 0 @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 6 @ ( '*/2' @ 2 @ ( '^/2' @ 3 @ ( '//2' @ 1 @ 2 ) ) ) @ 0 ) )
        & ( V_K
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_P: '3d.Point'] :
                ( ( '3d.on/2' @ V_P @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
                & ( '>=/2' @ 1 @ ( '3d.distance/2' @ V_p @ V_P ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_K ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ 'Pi/0' @ ( '+/2' @ 21 @ ( '*/2' @ 6 @ ( 'sqrt/1' @ 3 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '-/2' @ ( '*/2' @ ( '//2' @ ( '*/2' @ 4 @ ( '+/2' @ 10 @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 3 ) ) ) ) @ 3 ) @ 'Pi/0' ) @ ( '//2' @ ( '*/2' @ 4 @ ( '+/2' @ 3 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) ) ) @ 3 ) ) ) ),
    answer_to(p2_question,[])).
