%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-02-18
%%
%% <PROBLEM-TEXT>
%% Consider the point $P(\frac{1}{2}, \frac{1}{4})$ on the coordinate
%% plane. When $Q({\alpha}, {\alpha}^2)$ and $R({\beta}, {\beta}^2)$ on
%% the parabola $y=x^2$ move so that the points $P$, $Q$, and $R$ form
%% an isosceles triangle taking $QR$ as the base, find the locus of the
%% centroid $G(X, Y)$ of $\triangle PQR$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   9 equality;  29 variable)
%            Maximal formula depth :   24 (  20 average)
%            Number of connectives :   79 (   1   ~;   0   |;  10   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_T: '2d.Shape'] :
        ( V_T
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_G: '2d.Point'] :
            ? [V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_C: '2d.Shape',V_a: $real,V_b: $real] :
              ( ( V_P
                = ( '2d.point/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ 1.0 @ 4.0 ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( V_Q
                = ( '2d.point/2' @ V_a @ ( '^/2' @ V_a @ 2.0 ) ) )
              & ( V_R
                = ( '2d.point/2' @ V_b @ ( '^/2' @ V_b @ 2.0 ) ) )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_R @ V_C )
              & ( '2d.is-triangle/3' @ V_P @ V_Q @ V_R )
              & ( ( '2d.distance/2' @ V_P @ V_Q )
                = ( '2d.distance/2' @ V_P @ V_R ) )
              & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_T_dot_0: '2d.Shape'] :
      ( V_T_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_G_dot_0: '2d.Point'] :
            ( ( ( '2d.x-coord/1' @ V_G_dot_0 )
             != ( $quotient @ 1.0 @ 6.0 ) )
            & ( ( '2d.y-coord/1' @ V_G_dot_0 )
              = ( $difference @ ( $quotient @ 1.0 @ ( $product @ 9.0 @ ( $difference @ ( '2d.x-coord/1' @ V_G_dot_0 ) @ ( $quotient @ 1.0 @ 6.0 ) ) ) ) @ ( $quotient @ 1.0 @ 12.0 ) ) )
            & ( $less @ ( $quotient @ 1.0 @ 4.0 ) @ ( '2d.y-coord/1' @ V_G_dot_0 ) ) ) ) ) ),
    answer_to(p_question,[])).

