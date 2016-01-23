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
%            Number of atoms       :  255 (  42 equality;  91 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :  173 (   5   ~;   1   |;  32   &; 131   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   26 (   0 sgn;  14   !;  10   ?;   2   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ 0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ( V_Y
       != ( '2d.sv*/2' @ -1 @ V_X ) ) ) )).

thf(p2,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ 0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ? [V_s: 'R',V_t: 'R'] :
          ( ( V_Z
            = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ V_X ) @ ( '2d.sv*/2' @ V_t @ V_Y ) ) )
          & ! [V_u: 'R',V_v: 'R'] :
              ( ( V_Z
                = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_u @ V_X ) @ ( '2d.sv*/2' @ V_v @ V_Y ) ) )
             => ( ( V_u = V_s )
                & ( V_v = V_t ) ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix'] :
      ( ( ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ 0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X ) )
     => ( '2d.zero-vector/0'
        = ( '2d.v+/2' @ V_X @ ( '2d.v+/2' @ V_Y @ V_Z ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_Als: 'ListOf' @ 'R'] :
      ? [V_X: '2d.Vector',V_Y: '2d.Vector',V_Z: '2d.Vector',V_A: '2d.Matrix',V_A11: 'R',V_A12: 'R',V_A21: 'R',V_A22: 'R'] :
        ( ( V_A
          = ( '2d.matrix/4' @ V_A11 @ V_A12 @ V_A21 @ V_A22 ) )
        & ( V_X
          = ( '2d.vec/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 0 @ 0 ) ) )
        & ( V_Y != V_X )
        & ( ( '2d.radius/1' @ V_X )
          = 1 )
        & ( ( '2d.radius/1' @ V_Y )
          = 1 )
        & ( ( '2d.radius/1' @ V_Z )
          = 1 )
        & ( ( '2d.mv*/2' @ V_A @ V_X )
          = V_Y )
        & ( ( '2d.mv*/2' @ V_A @ V_Y )
          = V_Z )
        & ( ( '2d.mv*/2' @ V_A @ V_Z )
          = V_X )
        & ( V_Als
          = ( 'cons/2' @ V_A11 @ ( 'cons/2' @ V_A12 @ ( 'cons/2' @ V_A21 @ ( 'cons/2' @ V_A22 @ 'nil/0' ) ) ) ) ) ) )).

thf(p4_answer,answer,(
    ^ [V_Als_dot_0: 'ListOf' @ 'R'] :
      ( ( V_Als_dot_0
        = ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( 'cons/2' @ ( '//2' @ ( '-/1' @ ( 'sqrt/1' @ 3 ) ) @ 2 ) @ ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ 'nil/0' ) ) ) ) )
      | ( V_Als_dot_0
        = ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p4_question,[])).
