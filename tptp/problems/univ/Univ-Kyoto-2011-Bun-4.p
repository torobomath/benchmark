%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-08
%%
%% <PROBLEM-TEXT>
%% Find the area of the region that satisfies the simultaneous
%% inequalities
%% $\{\begin{matrix} |x|\le 2\\ y\ge x\\ y\le |\frac{3}{4} x^2 - 3|-2\end{matrix}$
%% on the $xy$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   39 (   2 equality;   7 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   33 (   0   ~;   0   |;   2   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_xy: '2d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_xy ) ) @ 2.0 )
                & ( $greatereq @ ( '2d.y-coord/1' @ V_xy ) @ ( '2d.x-coord/1' @ V_xy ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_xy ) @ ( $sum @ ( 'abs/1' @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 4.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_xy ) @ 2.0 ) ) @ ( $uminus @ 3.0 ) ) ) @ ( $uminus @ 2.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 64.0 @ 27.0 ) ) ),
    answer_to(p1_question,[])).

