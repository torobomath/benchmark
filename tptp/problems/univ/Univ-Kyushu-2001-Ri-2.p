%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Let $G$ be the graph of the cubic function
%% $y = x^3 + a x^2 + b x + c$.
%%
%% (1) Find the coordinates of the point symmetric to the point $(X, Y)$
%% with respect to the point $(p, q)$ on the $x y$ plane.
%%
%% (2) Prove that the $G$ is point-symmetric with respect to a certain
%% point on it.
%%
%% (3) Find the coordinates of the point symmetric to the point $(X, Y)$
%% with respect to the straight line $m x + n y = 0$, where neither $m$
%% nor $n$ is $0$.
%%
%% (4) Prove that $G$ is not line-symmetric with respect to any straight
%% line that passes through the origin.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   15 (   0 unit;   9 type;   0 defn)
%            Number of atoms       :  154 (   8 equality;  15 variable)
%            Maximal formula depth :   17 (   6 average)
%            Number of connectives :  137 (   5   ~;   0   |;   7   &; 124   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   9   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   5   !;   2   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('X/0_type',type,(
    'X/0': $real )).

thf('Y/0_type',type,(
    'Y/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('m/0_type',type,(
    'm/0': $real )).

thf('n/0_type',type,(
    'n/0': $real )).

thf('p/0_type',type,(
    'p/0': $real )).

thf('q/0_type',type,(
    'q/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
        ( '2d.point-symmetry/3' @ V_P @ ( '2d.point/2' @ 'X/0' @ 'Y/0' ) @ ( '2d.point/2' @ 'p/0' @ 'q/0' ) ) )).

thf(p2,conjecture,(
    ? [V_G: '2d.Shape',V_Q: '2d.Point'] :
      ( ( V_G
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      & ( '2d.point-symmetry-shape/2' @ V_G @ V_Q ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_R: '2d.Point'] :
        ( ( 'n/0' != 0.0 )
        & ( 'm/0' != 0.0 )
        & ( '2d.line-symmetry/3' @ ( '2d.point/2' @ 'X/0' @ 'Y/0' ) @ V_R @ ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ ( $quotient @ ( $uminus @ 'm/0' ) @ 'n/0' ) ) ) ) ) )).

thf(p4,conjecture,(
    ! [V_G: '2d.Shape',V_a: $real,V_b: $real,V_c: $real,V_m: '2d.Shape'] :
      ( ( ( V_G
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ V_m ) )
     => ~ ( '2d.line-symmetry-shape/2' @ V_G @ V_m ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( $difference @ ( $product @ 2.0 @ 'p/0' ) @ 'X/0' ) @ ( $difference @ ( $product @ 2.0 @ 'q/0' ) @ 'Y/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( ( 'n/0' != 0.0 )
      & ( 'm/0' != 0.0 )
      & ( V_R_dot_0
        = ( '2d.point/2' @ ( $quotient @ ( $difference @ ( $product @ ( $difference @ ( '^/2' @ 'n/0' @ 2.0 ) @ ( '^/2' @ 'm/0' @ 2.0 ) ) @ 'X/0' ) @ ( $product @ 2.0 @ ( $product @ 'm/0' @ ( $product @ 'n/0' @ 'Y/0' ) ) ) ) @ ( $sum @ ( '^/2' @ 'm/0' @ 2.0 ) @ ( '^/2' @ 'n/0' @ 2.0 ) ) ) @ ( $quotient @ ( $sum @ ( $product @ -2.0 @ ( $product @ 'm/0' @ ( $product @ 'n/0' @ 'X/0' ) ) ) @ ( $product @ ( $difference @ ( '^/2' @ 'm/0' @ 2.0 ) @ ( '^/2' @ 'n/0' @ 2.0 ) ) @ 'Y/0' ) ) @ ( $sum @ ( '^/2' @ 'm/0' @ 2.0 ) @ ( '^/2' @ 'n/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p3_question,[])).

