%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2013, Humanities Course, Problem 4
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let ${\alpha}$ and ${\beta}$ be real numbers. On the $xy$ plane, the
%% circle $C$ centered at the point $(0, 3)$ and the parabola
%% $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$ share the point
%% $P(\sqrt{3}, 0)$ and the tangent at $P$. Answer the following
%% questions:
%%
%% (1) Find the values of ${\alpha}$ and ${\beta}$.
%%
%% (2) Find the area of the region enclosed by the circle $C$, the
%% parabola $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$, and the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (   4 equality;  28 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :  175 (   0   ~;   0   |;   4   &; 171   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_Ans: ( 'ListOf' @ $real )] :
      ? [V_a1: $real,V_a2: $real,V_b1: $real,V_b2: $real,V_alpha: $real,V_beta: $real] :
        ( ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ V_beta ) @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) )
        & ( V_Ans
          = ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ V_beta @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_a1: $real,V_a2: $real,V_b1: $real,V_b2: $real,V_alpha: $real,V_beta: $real] :
        ( ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ V_beta ) @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 3.0 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3.0 ) @ 0.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ V_beta ) @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Ans_dot_0: ( 'ListOf' @ $real )] :
      ( V_Ans_dot_0
      = ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'cons/2' @ $real @ 2.0 @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $sum @ ( $product @ ( $quotient @ 7.0 @ 3.0 ) @ ( 'sqrt/1' @ 3.0 ) ) @ ( $uminus @ 'Pi/0' ) ) ) ),
    answer_to(p2_question,[])).

