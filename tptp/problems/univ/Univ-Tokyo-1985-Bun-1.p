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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  270 (  29 equality; 101 variable)
%            Maximal formula depth :   26 (  20 average)
%            Number of connectives :  217 (   9   ~;   0   |;  25   &; 183   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   31 (   2 sgn;   0   !;  19   ?;   4   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_QPR: 'R'] :
      ? [V_A: '2d.Matrix',V_I: '2d.Matrix',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_a: 'R',V_b: 'R',V_x: 'R',V_y: 'R'] :
        ( ( ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) )
         != 0 )
        & ( V_A
          = ( '2d.sm*/2' @ ( '//2' @ 1 @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ V_a @ V_b ) @ ( '*/2' @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2 ) ) ) )
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
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '2d.Matrix',V_I: '2d.Matrix',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) )
         != 0 )
        & ( V_A
          = ( '2d.sm*/2' @ ( '//2' @ 1 @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ 0 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ V_a @ V_b ) @ ( '*/2' @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2 ) ) ) )
        & ( V_I = '2d.identity-matrix/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_Q )
          = ( '2d.mv*/2' @ ( '2d.m^/2' @ V_A @ 3 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) )
        & ( ( '2d.vec/2' @ '2d.origin/0' @ V_R )
          = ( '2d.mv*/2' @ ( '2d.m^/2' @ ( '2d.m-/2' @ V_I @ V_A ) @ 2 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P ) ) )
        & ( V_P != V_Q )
        & ( V_P != V_R )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_QPR_dot_0: 'R'] :
      ( V_QPR_dot_0
      = ( '//2' @ 'Pi/0' @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
    ? [V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point',V_R_dot_0: '2d.Point',V_A_dot_0: '2d.Matrix',V_I_dot_0: '2d.Matrix'] :
      ( ( V_P_dot_0
        = ( '2d.point/2' @ V_x @ V_y ) )
      & ( V_A_dot_0
        = ( '2d.sm*/2' @ ( '//2' @ 1 @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '2d.matrix/4' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ V_a @ V_b ) @ ( '*/2' @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2 ) ) ) )
      & ( V_I_dot_0 = '2d.identity-matrix/0' )
      & ( V_P_dot_0
        = ( '2d.point/2' @ V_x @ V_y ) )
      & ( ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 )
        = ( '2d.mv*/2' @ ( '2d.m^/2' @ V_A_dot_0 @ 3 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P_dot_0 ) ) )
      & ( ( '2d.vec/2' @ '2d.origin/0' @ V_R_dot_0 )
        = ( '2d.mv*/2' @ ( '2d.m^/2' @ ( '2d.m-/2' @ V_I_dot_0 @ V_A_dot_0 ) @ 2 ) @ ( '2d.vec/2' @ '2d.origin/0' @ V_P_dot_0 ) ) )
      & ( V_P_dot_0 != V_Q_dot_0 )
      & ( V_P_dot_0 != V_R_dot_0 )
      & ( 0
       != ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) )
      & ( V_S_dot_0
        = ( '//2' @ ( 'abs/1' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ V_b @ V_x ) @ ( '*/2' @ V_a @ V_y ) ) @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ ( '*/2' @ V_b @ V_y ) ) ) ) @ ( '*/2' @ 2 @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
