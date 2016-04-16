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

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  139 (   8 equality;  31 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :  124 (   1   ~;   0   |;  15   &; 108   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   8   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   4 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('k/0_type',type,(
    'k/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_uv: ( 'ListOf' @ $real )] :
      ? [V_S: '3d.Shape',V_A: '3d.Point'] :
        ( ( V_S
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( $sum @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '3d.y-coord/1' @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '3d.z-coord/1' @ V_p ) @ 2.0 ) ) )
                = 1.0 ) ) )
        & ( V_A
          = ( '3d.point/3' @ 0.0 @ 0.0 @ 1.0 ) )
        & ? [V_P: '3d.Point',V_Q: '3d.Point',V_u: $real,V_v: $real] :
            ( ( V_P != V_A )
            & ( '3d.on/2' @ V_P @ V_S )
            & ( '3d.on/2' @ V_Q @ ( '3d.intersection/2' @ ( '3d.line/2' @ V_A @ V_P ) @ '3d.xy-plane/0' ) )
            & ( V_u
              = ( '3d.x-coord/1' @ V_Q ) )
            & ( V_v
              = ( '3d.y-coord/1' @ V_Q ) )
            & ( $less @ 0.0 @ 'k/0' )
            & ( V_uv
              = ( 'cons/2' @ $real @ V_u @ ( 'cons/2' @ $real @ V_v @ ( 'nil/0' @ $real ) ) ) )
            & ( $greatereq @ ( '3d.x-coord/1' @ V_P ) @ ( $quotient @ 1.0 @ 'k/0' ) )
            & ( $greatereq @ ( '3d.y-coord/1' @ V_P ) @ ( $quotient @ 1.0 @ 'k/0' ) )
            & ( $greatereq @ ( '3d.z-coord/1' @ V_P ) @ ( $quotient @ 1.0 @ 'k/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_uv_dot_0: ( 'ListOf' @ $real )] :
    ? [V_u_dot_0: $real,V_v_dot_0: $real] :
      ( ( V_uv_dot_0
        = ( 'cons/2' @ $real @ V_u_dot_0 @ ( 'cons/2' @ $real @ V_v_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ V_u_dot_0 @ 'k/0' ) @ 2.0 ) @ ( '^/2' @ V_v_dot_0 @ 2.0 ) ) @ ( $difference @ ( '^/2' @ 'k/0' @ 2.0 ) @ 1.0 ) )
      & ( $lesseq @ ( $sum @ ( '^/2' @ V_u_dot_0 @ 2.0 ) @ ( $uminus @ ( '^/2' @ ( $difference @ V_v_dot_0 @ 'k/0' ) @ 2.0 ) ) ) @ ( $difference @ ( '^/2' @ 'k/0' @ 2.0 ) @ 1.0 ) )
      & ( $greatereq @ ( $sum @ ( '^/2' @ V_u_dot_0 @ 2.0 ) @ ( '^/2' @ V_v_dot_0 @ 2.0 ) ) @ ( $quotient @ ( $sum @ 'k/0' @ 1.0 ) @ ( $difference @ 'k/0' @ 1.0 ) ) )
      & ( $greater @ 'k/0' @ 1.0 ) ) ),
    answer_to(p_question,[])).

