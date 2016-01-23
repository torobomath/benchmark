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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   87 (   9 equality;  44 variable)
%            Maximal formula depth :   23 (  21 average)
%            Number of connectives :   67 (   0   ~;   0   |;  17   &;  50   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   18 (   3 sgn;   0   !;  10   ?;   3   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: '2d.Shape'] :
      ? [V_L: '2d.Shape',V_C_dot_0: '2d.Shape',V_M: '2d.Point'] :
        ( ( V_L = '2d.x-axis/0' )
        & ( V_C_dot_0
          = ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_r ) @ V_r ) )
        & ( '</2' @ 0 @ V_r )
        & ( V_M
          = ( '2d.point/2' @ V_Mx @ 0 ) )
        & ( V_answer
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_Q: '2d.Point',V_R: '2d.Point'] :
                ( ( '2d.on/2' @ V_Q @ V_L )
                & ( '2d.on/2' @ V_R @ V_L )
                & ( V_M
                  = ( '2d.midpoint-of/2' @ V_Q @ V_R ) )
                & ( '2d.is-triangle/3' @ V_P @ V_Q @ V_R )
                & ( '2d.is-inscribed-in/2' @ V_C_dot_0 @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: '2d.Shape'] :
    ? [V_L_dot_0: '2d.Shape',V_O: '2d.Point',V_lp: '2d.Shape',V_U: '2d.Point',V_Q_dot_0: '2d.Point'] :
      ( ( V_C
        = ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_r ) @ V_r ) )
      & ( V_answer_dot_0
        = ( '2d.half-line/2' @ V_U @ V_Q_dot_0 ) )
      & ( V_L_dot_0 = '2d.x-axis/0' )
      & ( V_O
        = ( '2d.point/2' @ 0 @ V_r ) )
      & ( '2d.line-symmetry/3' @ V_O @ V_U @ V_L_dot_0 )
      & ( '2d.on/2' @ V_U @ V_lp )
      & ( '2d.parallel/2' @ ( '2d.line/2' @ V_O @ ( '2d.point/2' @ V_Mx @ 0 ) ) @ V_lp )
      & ( '2d.line-type/1' @ V_lp )
      & ( '2d.on/2' @ V_Q_dot_0 @ V_lp )
      & ( '>/2' @ ( '2d.y-coord/1' @ V_Q_dot_0 ) @ ( '2d.y-coord/1' @ V_U ) ) ) ),
    answer_to(p_question,[])).
