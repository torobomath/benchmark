%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Let $T$ be the linear transformation defined by the matrix
%% $(\begin{matrix} a & 1\\ b & c\end{matrix})$ on the coordinate plane
%% with $O$ as the origin, where $a$, $b$, and $c$ are real numbers. If
%% the linear transformation $T$ satisfies the two conditions: (i) the
%% point $(1, 2)$ is transformed to the point $(1, 2)$ and (ii) when the
%% points $(1, 0)$ and $(0, 1)$ are respectively transformed to the
%% points $A$ and $B$ by $T$, the area of $\triangle OAB$ is
%% $\frac{1}{2}$, then find $a$, $b$, and $c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   5 equality;  15 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   75 (   0   ~;   1   |;   2   &;  72   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_S: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_c: $real] :
        ( ( V_S
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) )
        & ( ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1.0 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 1.0 @ 2.0 ) )
          = ( '2d.vec2d/2' @ 1.0 @ 2.0 ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1.0 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) ) ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1.0 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 0.0 @ 1.0 ) ) ) ) )
          = ( $quotient @ 1.0 @ 2.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_S_dot_0
        = ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ 4.0 ) @ ( 'cons/2' @ $real @ 3.0 @ ( 'nil/0' @ $real ) ) ) ) )
      | ( V_S_dot_0
        = ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p_question,[])).

