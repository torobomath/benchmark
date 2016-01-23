%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Consider the point $P(2, 0, 1)$ in the $xyz$ space and the curve
%% $z=y^2$ on the $yz$ plane. When the point $Q$ moves on this curve,
%% let $F$ be the figure formed by the point $R$ that the straight line
%% $PQ$ meets on the $xy$ plane. Draw $F$ on the $xy$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   82 (   8 equality;  21 variable)
%            Maximal formula depth :   17 (  16 average)
%            Number of connectives :   64 (   0   ~;   1   |;   7   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_F: '3d.Shape'] :
        ( V_F
        = ( '3d.shape-of-cpfun/1'
          @ ^ [V_R: '3d.Point'] :
            ? [V_y: 'R',V_z: 'R',V_P: '3d.Point',V_Q: '3d.Point'] :
              ( ( V_z
                = ( '^/2' @ V_y @ 2 ) )
              & ( V_P
                = ( '3d.point/3' @ 2 @ 0 @ 1 ) )
              & ( V_Q
                = ( '3d.point/3' @ 0 @ V_y @ V_z ) )
              & ( '3d.on/2' @ V_R @ ( '3d.line/2' @ V_P @ V_Q ) )
              & ( '3d.on/2' @ V_R @ '3d.xy-plane/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_F_dot_0: '3d.Shape'] :
      ( V_F_dot_0
      = ( '3d.shape-of-cpfun/1'
        @ ^ [V_P_dot_0: '3d.Point'] :
            ( ( ( '3d.z-coord/1' @ V_P_dot_0 )
              = 0 )
            & ( ( ( '<=/2' @ ( '3d.x-coord/1' @ V_P_dot_0 ) @ 0 )
                & ( ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '3d.x-coord/1' @ V_P_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '3d.x-coord/1' @ V_P_dot_0 ) ) @ ( '*/2' @ 4 @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2 ) ) ) )
                  = 0 ) )
              | ( ( '</2' @ 2 @ ( '3d.x-coord/1' @ V_P_dot_0 ) )
                & ( ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '3d.x-coord/1' @ V_P_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '3d.x-coord/1' @ V_P_dot_0 ) ) @ ( '*/2' @ 4 @ ( '^/2' @ ( '3d.y-coord/1' @ V_P_dot_0 ) @ 2 ) ) ) )
                  = 0 ) ) ) ) ) ) ),
    answer_to(p_question,[])).
