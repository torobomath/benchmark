%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1985, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-17
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers that satisfy $a^2 + b^2\not= 0$, and
%% define
%%
%%
%% $A =\frac{1}{a^2+b^2}(\begin{matrix} a^2 & a b\\ a b & b^2\end{matrix})$
%% and $I =(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$.
%%
%% Let $Q$ and $R$ be the image of $P(x, y)$ by the linear
%% transformations defined by the matrices $A^3$ and $(I-A)^2$,
%% respectively, where neither $Q$ nor $R$ matches $P$.
%%
%% (1) Find the magnitude of $\angle QPR$.
%%
%% (2) Represent the area of $\triangle PQR$ using $a$, $b$, $x$, and
%% $y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  272 (  29 equality;  65 variable)
%            Maximal formula depth :   26 (  11 average)
%            Number of connectives :  219 (   9   ~;   0   |;  25   &; 185   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   4   :;   0   =)
%            Number of variables   :   23 (   0 sgn;   0   !;  19   ?;   4   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_QPR: $real] :
      ? [V_A: '2d.Matrix',V_I: '2d.Matrix',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_a: $real,V_b: $real,V_x: $real,V_y: $real] :
        ( ( ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) )
         != 0.0 )
        & ( V_A
          = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ V_a @ V_b ) @ ( $product @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2.0 ) ) ) )
        & ( V_I = '2d.identity-matrix/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_Q
          = ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.m^/2' @ V_A @ 3 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) ) )
        & ( V_R
          = ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.m^/2' @ ( '2d.m-/2' @ V_I @ V_A ) @ 2 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) ) )
        & ( V_P != V_Q )
        & ( V_P != V_R )
        & ( V_QPR
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_P @ V_R ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '2d.Matrix',V_I: '2d.Matrix',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) )
         != 0.0 )
        & ( V_A
          = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ 0.0 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) @ ( $product @ 'a/0' @ 'b/0' ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) )
        & ( V_I = '2d.identity-matrix/0' )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_Q )
          = ( '2d.mv*/2' @ ( '2d.m^/2' @ V_A @ 3 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_R )
          = ( '2d.mv*/2' @ ( '2d.m^/2' @ ( '2d.m-/2' @ V_I @ V_A ) @ 2 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) )
        & ( V_P != V_Q )
        & ( V_P != V_R )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_QPR_dot_0: $real] :
      ( V_QPR_dot_0
      = ( $quotient @ 'Pi/0' @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
    ? [V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point',V_R_dot_0: '2d.Point',V_A_dot_0: '2d.Matrix',V_I_dot_0: '2d.Matrix'] :
      ( ( V_P_dot_0
        = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
      & ( V_A_dot_0
        = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) @ ( $product @ 'a/0' @ 'b/0' ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) )
      & ( V_I_dot_0 = '2d.identity-matrix/0' )
      & ( V_P_dot_0
        = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
      & ( ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 )
        = ( '2d.mv*/2' @ ( '2d.m^/2' @ V_A_dot_0 @ 3 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P_dot_0 ) ) )
      & ( ( '2d.vec/2' @ '2d.origin/0' @ V_R_dot_0 )
        = ( '2d.mv*/2' @ ( '2d.m^/2' @ ( '2d.m-/2' @ V_I_dot_0 @ V_A_dot_0 ) @ 2 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P_dot_0 ) ) )
      & ( V_P_dot_0 != V_Q_dot_0 )
      & ( V_P_dot_0 != V_R_dot_0 )
      & ( 0.0
       != ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) )
      & ( V_S_dot_0
        = ( $quotient @ ( 'abs/1' @ ( $product @ ( $difference @ ( $product @ 'b/0' @ 'x/0' ) @ ( $product @ 'a/0' @ 'y/0' ) ) @ ( $sum @ ( $product @ 'a/0' @ 'x/0' ) @ ( $product @ 'b/0' @ 'y/0' ) ) ) ) @ ( $product @ 2.0 @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

