%% DOMAIN:    Geometry, lines and planes in 3D space
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1979, Problem 4
%% SCORE:     6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-19
%%
%% <PROBLEM-TEXT>
%% Given a plane $\pi$, a point $P$ in this plane and a point $Q$ not in $\pi$,
%% find all points $R$ in $\pi$ such that the ratio $\frac{QP + PR}{QR}$ is a maximum.
%% </PROBLEM-TEXT>
%%@ NOTE: pi is set to xy-plane

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (   7 equality;  54 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   95 (   2   ~;   1   |;  10   &;  81   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   20 (   7 sgn;   1   !;   5   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_R_max: '3d.Point'] :
      ? [V_pi: '3d.Shape',V_P: '3d.Point',V_Q_dot_0: '3d.Point'] :
        ( ( V_pi = '3d.xy-plane/0' )
        & ( V_P
          = ( '3d.point/3' @ V_Px @ V_Py @ 0 ) )
        & ( V_Q_dot_0
          = ( '3d.point/3' @ V_Qx @ V_Qy @ V_Qz ) )
        & ~ ( '3d.on/2' @ V_Q_dot_0 @ V_pi )
        & ( '3d.on/2' @ V_R_max @ V_pi )
        & ! [V_R_dot_0: '3d.Point'] :
            ( ( '3d.on/2' @ V_R_dot_0 @ V_pi )
           => ( '<=/2' @ ( '//2' @ ( '+/2' @ ( '3d.distance/2' @ V_Q_dot_0 @ V_P ) @ ( '3d.distance/2' @ V_P @ V_R_dot_0 ) ) @ ( '3d.distance/2' @ V_Q_dot_0 @ V_R_dot_0 ) ) @ ( '//2' @ ( '+/2' @ ( '3d.distance/2' @ V_Q_dot_0 @ V_P ) @ ( '3d.distance/2' @ V_P @ V_R_max ) ) @ ( '3d.distance/2' @ V_Q_dot_0 @ V_R_max ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_R_max_dot_0: '3d.Point'] :
    ? [V_T: '3d.Point',V_S: '3d.Point'] :
      ( ( V_T
        = ( '3d.foot-of-perpendicular-line-from-to/2' @ ( '3d.point/3' @ V_Qx @ V_Qy @ V_Qz ) @ '3d.xy-plane/0' ) )
      & ( ( ( V_T
           != ( '3d.point/3' @ V_Px @ V_Py @ 0 ) )
          & ( '3d.point-symmetry/3' @ V_S @ ( '3d.point/3' @ V_Px @ V_Py @ 0 ) @ V_T )
          & ( '3d.on/2' @ V_R_max_dot_0 @ ( '3d.line/2' @ V_S @ V_T ) )
          & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_S @ V_Q @ V_R ) )
            = ( '//2' @ 'Pi/0' @ 2 ) ) )
        | ( ( V_T
            = ( '3d.point/3' @ V_Px @ V_Py @ 0 ) )
          & ( '3d.on/2' @ V_R_max_dot_0 @ ( '3d.circle/3' @ ( '3d.point/3' @ V_Px @ V_Py @ 0 ) @ ( '3d.distance/2' @ ( '3d.point/3' @ V_Qx @ V_Qy @ V_Qz ) @ ( '3d.point/3' @ V_Px @ V_Py @ 0 ) ) @ ( '3d.vec3d/3' @ 0 @ 0 @ 1 ) ) ) ) ) ) ),
    answer_to(p_question,[])).
