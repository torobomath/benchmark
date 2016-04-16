%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2009, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-06
%%
%% <PROBLEM-TEXT>
%% Assume that $a > 0$ and $b > 0$. Assume that the circle with the
%% center at the point $A(0, a)$ and the radius $r$ is in contact with
%% the hyperbola $x^2 -\frac{y^2}{b^2} = 1$ at the points $B(s, t)$ and
%% $C(-s, t)$, where $s > 0$. Here, the fact the hyperbola and the
%% circle are in contact with each other at the point $P$ means that $P$
%% is a common point of the hyperbola and the circle, and the tangents
%% to the hyperbola at the point $P$ matches the tangent to the circle
%% at the point $P$.
%%
%% (1) Represent $r$, $s$, and $t$ using $a$ and $b$.
%%
%% (2) Find the range of the value of $b$ such that there exist $a$ and
%% $r$ such that $\triangle ABC$ is an equilateral triangle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  373 (   2 equality;  93 variable)
%            Maximal formula depth :   31 (  15 average)
%            Number of connectives :  367 (   0   ~;   0   |;  30   &; 337   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   2   :;   0   =)
%            Number of variables   :   31 (   0 sgn;   0   !;  11   ?;  20   ^)
%                                         (  31   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_rst: ( 'ListOf' @ $real )] :
      ? [V_r: $real,V_s: $real,V_t: $real] :
        ( ( $greater @ V_r @ 0.0 )
        & ( $greater @ V_s @ 0.0 )
        & ( $greater @ 'a/0' @ 0.0 )
        & ( $greater @ 'b/0' @ 0.0 )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'a/0' ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_2: $real,V_y_dot_2: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_2 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_2 @ 2.0 ) ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ -1.0 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'a/0' ) @ V_r ) @ V_l @ ( '2d.point/2' @ V_s @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ -1.0 ) )
              @ V_l
              @ ( '2d.point/2' @ V_s @ V_t ) ) )
        & ? [V_m: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_m )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'a/0' ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ -1.0 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 'a/0' ) @ V_r ) @ V_m @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x: $real,V_y: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y @ 2.0 ) ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ -1.0 ) )
              @ V_m
              @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) ) )
        & ( V_rst
          = ( 'cons/2' @ $real @ V_r @ ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_r: $real,V_s: $real,V_t: $real,V_a: $real] :
        ( ( $greater @ V_s @ 0.0 )
        & ( $greater @ V_a @ 0.0 )
        & ( $greater @ V_b @ 0.0 )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_2: $real,V_y_dot_2: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_2 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_2 @ 2.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ -1.0 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_r ) @ V_l @ ( '2d.point/2' @ V_s @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ -1.0 ) )
              @ V_l
              @ ( '2d.point/2' @ V_s @ V_t ) ) )
        & ? [V_m: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_m )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ -1.0 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_r ) @ V_m @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x: $real,V_y: $real] :
                    ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $quotient @ ( $uminus @ ( '^/2' @ V_y @ 2.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) @ -1.0 ) )
              @ V_m
              @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) ) )
        & ( '2d.is-equilateral-triangle/1' @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0.0 @ V_a ) @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.point/2' @ ( $uminus @ V_s ) @ V_t ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_rst_dot_0: ( 'ListOf' @ $real )] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( $greater @ 'b/0' @ 0.0 )
      & ( V_rst_dot_0
        = ( 'cons/2' @ $real @ ( 'sqrt/1' @ ( $quotient @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ 1.0 ) ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'b/0' @ 4.0 ) @ ( $sum @ ( $product @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ 1.0 ) ) ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 'a/0' @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( $less @ 0.0 @ V_b_dot_0 )
      & ( $less @ V_b_dot_0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ),
    answer_to(p2_question,[])).

