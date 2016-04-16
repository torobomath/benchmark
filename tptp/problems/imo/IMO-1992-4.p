%% DOMAIN:    Geometry, transformational geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1992, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% In the plane let $C$ be a circle, $L$ a line tangent to the circle $C$, and $M$ a
%% point on $L$. Find the locus of all points $P$ with the following property: there
%% exists two points $Q$, $R$ on $L$ such that $M$ is the midpoint of $QR$ and $C$ is
%% the inscribed circle of triangle $PQR$.
%% </PROBLEM-TEXT>
%%@ NOTE:
%%@ L is set to the x-axis.
%%@ C is set to x^2 + (y - r)^2 = r^2 where r > 0.
%%@ M is set to (Mx, 0).

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   99 (  10 equality;  42 variable)
%            Maximal formula depth :   24 (  13 average)
%            Number of connectives :   77 (   0   ~;   0   |;  19   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   2   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  13   ?;   4   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   1 pred;    0 func;    1 numbers)

include('axioms.ax').

thf('Mx/0_type',type,(
    'Mx/0': $real )).

thf('r/0_type',type,(
    'r/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_answer: '2d.Shape'] :
        ( ( $less @ 0.0 @ 'r/0' )
        & ? [V_L: '2d.Shape',V_C: '2d.Shape',V_M: '2d.Point'] :
            ( ( V_L = '2d.x-axis/0' )
            & ( V_C
              = ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'r/0' ) @ 'r/0' ) )
            & ( $less @ 0.0 @ 'r/0' )
            & ( V_M
              = ( '2d.point/2' @ 'Mx/0' @ 0.0 ) )
            & ( V_answer
              = ( '2d.shape-of-cpfun/1'
                @ ^ [V_P: '2d.Point'] :
                  ? [V_Q: '2d.Point',V_R: '2d.Point'] :
                    ( ( '2d.on/2' @ V_Q @ V_L )
                    & ( '2d.on/2' @ V_R @ V_L )
                    & ( V_M
                      = ( '2d.midpoint-of/2' @ V_Q @ V_R ) )
                    & ( '2d.is-triangle/3' @ V_P @ V_Q @ V_R )
                    & ( '2d.is-inscribed-in/2' @ V_C @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: '2d.Shape'] :
      ( ( $less @ 0.0 @ 'r/0' )
      & ? [V_C_dot_0: '2d.Shape',V_L_dot_0: '2d.Shape',V_lp: '2d.Shape',V_M_dot_0: '2d.Point',V_X: '2d.Point',V_Y: '2d.Point',V_Z: '2d.Point',V_U: '2d.Point'] :
          ( ( V_C_dot_0
            = ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'r/0' ) @ 'r/0' ) )
          & ( V_answer_dot_0
            = ( '2d.shape-of-cpfun/1'
              @ ^ [V_p: '2d.Point'] :
                  ( '2d.on/2' @ V_p @ ( '2d.inner-part-of/1' @ ( '2d.half-line/2' @ V_Z @ V_U ) ) ) ) )
          & ( V_L_dot_0 = '2d.x-axis/0' )
          & ( '2d.tangent/3' @ V_L_dot_0 @ V_C_dot_0 @ V_X )
          & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_X @ V_Z ) @ V_C_dot_0 )
          & ( V_M_dot_0
            = ( '2d.point/2' @ 'Mx/0' @ 0.0 ) )
          & ( '2d.on/2' @ V_Y @ V_L_dot_0 )
          & ( '2d.point-symmetry/3' @ V_X @ V_Y @ V_M_dot_0 )
          & ( V_lp
            = ( '2d.line/2' @ V_Y @ V_Z ) )
          & ( '2d.point-symmetry/3' @ V_Y @ V_U @ V_Z ) ) ) ),
    answer_to(p_question,[])).

