%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-15
%%
%% <PROBLEM-TEXT>
%% Assume that the straight line $y = 2 x + 1$ is transformed to the
%% straight line $y = - 3 x - 1$ by the linear transformation on the
%% $x y$ plane defined by the matrix
%% $A =(\begin{matrix} a & -b\\ b & a\end{matrix})$. Let $Q$ be the
%% transformed point of the point $P(1, 2)$, and $O$ the origin, then
%% find the magnitude of the angle formed by the two straight lines $OP$
%% and $OQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (  10 equality;  25 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   48 (   0   ~;   0   |;   7   &;  41   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_theta: $real] :
      ? [V_a: $real,V_b: $real,V_A: '2d.Matrix',V_l: '2d.Shape',V_m: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_O: '2d.Point'] :
        ( ( V_A
          = ( '2d.matrix/4' @ V_a @ ( $uminus @ V_b ) @ V_b @ V_a ) )
        & ( V_l
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ 1.0 ) ) ) )
        & ( V_m
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '2d.x-coord/1' @ V_p ) ) ) @ -1.0 ) ) ) )
        & ( V_m
          = ( '2d.mat-shape*/2' @ V_A @ V_l ) )
        & ( V_P
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_Q )
          = ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) )
        & ( V_O = '2d.origin/0' )
        & ( '2d.lines-intersect-angle/3' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_O @ V_Q ) @ V_theta ) ) )).

thf(p_answer,answer,(
    ^ [V_theta_dot_0: $real] :
      ( V_theta_dot_0
      = ( $quotient @ 'Pi/0' @ 4.0 ) ) ),
    answer_to(p_question,[])).

