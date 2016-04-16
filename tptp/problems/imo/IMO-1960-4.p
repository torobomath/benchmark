%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 4
%% SCORE:     5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Construct triangle $ABC$, given $h_a$, $h_b$ (the altitudes from $A$ and $B$)
%% and $m_a$, the median from vertex $A$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   91 (   8 equality;  40 variable)
%            Maximal formula depth :   20 (   9 average)
%            Number of connectives :   73 (   0   ~;   0   |;  13   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   3   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;  10   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    1 func;    2 numbers)

include('axioms.ax').

thf('ha/0_type',type,(
    'ha/0': $real )).

thf('hb/0_type',type,(
    'hb/0': $real )).

thf('ma/0_type',type,(
    'ma/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_X: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_X
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( $greater @ 'ha/0' @ 0.0 )
        & ( $greater @ 'hb/0' @ 0.0 )
        & ( $greater @ 'ma/0' @ 0.0 )
        & ( 'ha/0'
          = ( '2d.point-shape-distance/2' @ V_A @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( 'hb/0'
          = ( '2d.point-shape-distance/2' @ V_B @ ( '2d.line/2' @ V_A @ V_C ) ) )
        & ( 'ma/0'
          = ( '2d.distance/2' @ V_A @ ( '2d.midpoint-of/2' @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_X_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_M: '2d.Point',V_G: '2d.Shape',V_H: '2d.Point',V_T: '2d.Point'] :
      ( ( V_X_dot_0
        = ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( ( '2d.distance/2' @ V_A_dot_0 @ V_M )
        = 'ma/0' )
      & ( V_G
        = ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ V_A_dot_0 @ V_M ) @ ( $quotient @ 'ma/0' @ 2.0 ) ) )
      & ( '2d.intersect/3' @ V_G @ ( '2d.circle/2' @ V_A_dot_0 @ 'ha/0' ) @ V_H )
      & ( '2d.intersect/3' @ V_G @ ( '2d.circle/2' @ V_M @ ( $quotient @ 'hb/0' @ 2.0 ) ) @ V_T )
      & ( '2d.intersect/3' @ ( '2d.line/2' @ V_H @ V_M ) @ ( '2d.line/2' @ V_A_dot_0 @ V_T ) @ V_C_dot_0 )
      & ( ( '2d.distance/2' @ V_M @ V_B_dot_0 )
        = ( '2d.distance/2' @ V_M @ V_C_dot_0 ) ) ) ),
    answer_to(p_question,[])).

