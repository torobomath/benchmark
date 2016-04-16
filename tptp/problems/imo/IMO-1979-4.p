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

% Syntax   : Number of formulae    :    7 (   0 unit;   5 type;   0 defn)
%            Number of atoms       :  113 (   7 equality;  32 variable)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :   99 (   2   ~;   1   |;  10   &;  85   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   5   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   1   !;   5   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf('Px/0_type',type,(
    'Px/0': $real )).

thf('Py/0_type',type,(
    'Py/0': $real )).

thf('Qx/0_type',type,(
    'Qx/0': $real )).

thf('Qy/0_type',type,(
    'Qy/0': $real )).

thf('Qz/0_type',type,(
    'Qz/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_R_max: '3d.Point'] :
      ? [V_pi: '3d.Shape',V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( V_pi = '3d.xy-plane/0' )
        & ( V_P
          = ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) )
        & ( V_Q
          = ( '3d.point/3' @ 'Qx/0' @ 'Qy/0' @ 'Qz/0' ) )
        & ~ ( '3d.on/2' @ V_Q @ V_pi )
        & ( '3d.on/2' @ V_R_max @ V_pi )
        & ! [V_R: '3d.Point'] :
            ( ( '3d.on/2' @ V_R @ V_pi )
           => ( $lesseq @ ( $quotient @ ( $sum @ ( '3d.distance/2' @ V_Q @ V_P ) @ ( '3d.distance/2' @ V_P @ V_R ) ) @ ( '3d.distance/2' @ V_Q @ V_R ) ) @ ( $quotient @ ( $sum @ ( '3d.distance/2' @ V_Q @ V_P ) @ ( '3d.distance/2' @ V_P @ V_R_max ) ) @ ( '3d.distance/2' @ V_Q @ V_R_max ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_R_max_dot_0: '3d.Point'] :
    ? [V_T: '3d.Point',V_S: '3d.Point'] :
      ( ( V_T
        = ( '3d.foot-of-perpendicular-line-from-to/2' @ ( '3d.point/3' @ 'Qx/0' @ 'Qy/0' @ 'Qz/0' ) @ '3d.xy-plane/0' ) )
      & ( ( ( V_T
           != ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) )
          & ( '3d.point-symmetry/3' @ V_S @ ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) @ V_T )
          & ( '3d.on/2' @ V_R_max_dot_0 @ ( '3d.line/2' @ V_S @ V_T ) )
          & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_S @ ( '3d.point/3' @ 'Qx/0' @ 'Qy/0' @ 'Qz/0' ) @ V_R_max_dot_0 ) )
            = ( $quotient @ 'Pi/0' @ 2.0 ) ) )
        | ( ( V_T
            = ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) )
          & ( '3d.on/2' @ V_R_max_dot_0 @ ( '3d.circle/3' @ ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) @ ( '3d.distance/2' @ ( '3d.point/3' @ 'Qx/0' @ 'Qy/0' @ 'Qz/0' ) @ ( '3d.point/3' @ 'Px/0' @ 'Py/0' @ 0.0 ) ) @ ( '3d.vec3d/3' @ 0.0 @ 0.0 @ 1.0 ) ) ) ) ) ) ),
    answer_to(p_question,[])).

