%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Consider the spherical surface
%% $S=\{(x, y, z)| x^2+y^2+z^2=1, where x, y, and z are real numbers\}$
%% with the center at the origin and the radius $1$ in the $xyz$ space,
%% and let $A$ be the fixed point $(0, 0, 1)$ on $S$. For the point
%% $P(x, y, z)$ on $S$ other than $A$, let $Q(u, v, 0)$ be the
%% intersection of the straight line $AP$ and the $xy$ plane. When the
%% point $P$ moves satisfying
%% $x^2+y^2+z^2=1, x\ge\frac{1}{k}, y\ge\frac{1}{k}, z\ge\frac{1}{k}$,
%% where $k$ is a positive constant, draw the moving range of the
%% corresponding point $Q$ on the $uv$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  131 (   8 equality;  42 variable)
%            Maximal formula depth :   23 (  19 average)
%            Number of connectives :  116 (   1   ~;   0   |;  15   &; 100   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   13 (   0 sgn;   0   !;   8   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_uv: 'ListOf' @ 'R'] :
      ? [V_S: '3d.Shape',V_A: '3d.Point'] :
        ( ( V_S
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( '+/2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_p ) @ 2 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_p ) @ 2 ) ) )
                = 1 ) ) )
        & ( V_A
          = ( '3d.point/3' @ 0 @ 0 @ 1 ) )
        & ? [V_P: '3d.Point',V_Q: '3d.Point',V_u: 'R',V_v: 'R'] :
            ( ( V_P != V_A )
            & ( '3d.on/2' @ V_P @ V_S )
            & ( '3d.on/2' @ V_Q @ ( '3d.intersection/2' @ ( '3d.line/2' @ V_A @ V_P ) @ '3d.xy-plane/0' ) )
            & ( V_u
              = ( '3d.x-coord/1' @ V_Q ) )
            & ( V_v
              = ( '3d.y-coord/1' @ V_Q ) )
            & ( '</2' @ 0 @ V_k )
            & ( V_uv
              = ( 'cons/2' @ V_u @ ( 'cons/2' @ V_v @ 'nil/0' ) ) )
            & ( '>=/2' @ ( '3d.x-coord/1' @ V_P ) @ ( '//2' @ 1 @ V_k ) )
            & ( '>=/2' @ ( '3d.y-coord/1' @ V_P ) @ ( '//2' @ 1 @ V_k ) )
            & ( '>=/2' @ ( '3d.z-coord/1' @ V_P ) @ ( '//2' @ 1 @ V_k ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_uv_dot_0: 'ListOf' @ 'R'] :
    ? [V_u_dot_0: 'R',V_v_dot_0: 'R'] :
      ( ( V_uv_dot_0
        = ( 'cons/2' @ V_u_dot_0 @ ( 'cons/2' @ V_v_dot_0 @ 'nil/0' ) ) )
      & ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_u_dot_0 @ V_k ) @ 2 ) @ ( '^/2' @ V_v_dot_0 @ 2 ) ) @ ( '-/2' @ ( '^/2' @ V_k @ 2 ) @ 1 ) )
      & ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_u_dot_0 @ 2 ) @ ( '-/1' @ ( '^/2' @ ( '-/2' @ V_v_dot_0 @ V_k ) @ 2 ) ) ) @ ( '-/2' @ ( '^/2' @ V_k @ 2 ) @ 1 ) )
      & ( '>=/2' @ ( '+/2' @ ( '^/2' @ V_u_dot_0 @ 2 ) @ ( '^/2' @ V_v_dot_0 @ 2 ) ) @ ( '//2' @ ( '+/2' @ V_k @ 1 ) @ ( '-/2' @ V_k @ 1 ) ) )
      & ( '>/2' @ V_k @ 1 ) ) ),
    answer_to(p_question,[])).
