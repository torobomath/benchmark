%% DOMAIN:    DUP
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Humanities Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-13
%%
%% <PROBLEM-TEXT>
%% When the points $P$ and $Q$ move on the parabola $y=x^2$, and the
%% area of the region enclosed by this parabola and the line segment
%% $PQ$ is always $1$, find the equation of the figure formed by the
%% middle point $R$ of $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   5 equality;  15 variable)
%            Maximal formula depth :   18 (  14 average)
%            Number of connectives :   49 (   1   ~;   0   |;   5   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_R: '2d.Point'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( V_P != V_Q )
        & ( 1.0
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_P @ V_Q ) @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_R
          = ( '2d.midpoint-of/2' @ V_P @ V_Q ) ) ) )).

thf(p_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( ( '2d.y-coord/1' @ V_R_dot_0 )
      = ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_R_dot_0 ) @ 2.0 ) @ ( $quotient @ ( '^/2' @ 36.0 @ ( $quotient @ 1.0 @ 3.0 ) ) @ 4.0 ) ) ) ),
    answer_to(p_question,[])).

