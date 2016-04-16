%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2009, Science Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Assume that the magnitudes of the second-order column vectors $X$,
%% $Y$, and $Z$ are all $1$, and define
%% $X =(\begin{matrix} 1\\ 0\end{matrix})$ and $Y\not= X$, where the
%% magnitude of a second-order column vector
%% $(\begin{matrix} x\\ y\end{matrix})$ is defined as $\sqrt{x^2+y^2}$
%% in general. Assume that the second-order square matrix $A$ satisfies
%% $A X = Y$, $A Y = Z$, and $A Z = X$. Answer the following questions:
%%
%% (1) Prove that $Y\not= - X$.
%%
%% (2) Prove that $Z$ is uniquely defined as $Z = s X + t Y$, where $s$
%% and $t$ are real numbers.
%%
%% (3) Prove that $X + Y + Z =(\begin{matrix} 0\\ 0\end{matrix})$.
%%
%% (4) Find the matrix $A$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  230 (  40 equality;  81 variable)
%            Maximal formula depth :   17 (  15 average)
%            Number of connectives :  150 (   5   ~;   1   |;  30   &; 110   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;  14   !;   5   ?;   2   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1.0 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ( V_Y
       != ( '2d.sv*/2' @ -1.0 @ V_X ) ) ) )).

thf(p2,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1.0 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ? [V_s: $real,V_t: $real] :
          ( ( V_Z
            = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ V_X ) @ ( '2d.sv*/2' @ V_t @ V_Y ) ) )
          & ! [V_u: $real,V_v: $real] :
              ( ( V_Z
                = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_u @ V_X ) @ ( '2d.sv*/2' @ V_v @ V_Y ) ) )
             => ( ( V_u = V_s )
                & ( V_v = V_t ) ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1.0 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ( '2d.zero-vector/0'
        = ( '2d.v+/2' @ V_X @ ( '2d.v+/2' @ V_Y @ V_Z ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_A: '2d.Matrix'] :
      ? [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector'] :
        ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1.0 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1.0 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) ) )).

thf(p4_answer,answer,(
    ^ [V_A_dot_0: '2d.Matrix'] :
      ( ( V_A_dot_0
        = ( '2d.matrix/4' @ ( $quotient @ -1.0 @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( $quotient @ ( $uminus @ ( 'sqrt/1' @ 3.0 ) ) @ 2.0 ) @ ( $quotient @ -1.0 @ 2.0 ) ) )
      | ( V_A_dot_0
        = ( '2d.matrix/4' @ ( $quotient @ -1.0 @ 2.0 ) @ ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( $quotient @ -1.0 @ 2.0 ) ) ) ) ),
    answer_to(p4_question,[])).

