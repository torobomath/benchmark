%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2007, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% For the right triangle $ABC$ with $\angle C$ as the right angle, let
%% $D$ be the intersection of the bisector of $\angle A$ and the line
%% segment $BC$. Let the lengths of the line segments $AD$, $DC$, and
%% $CA$ be $5$, $3$, and $4$, respectively, assume that
%% $\angle A = {\theta}$, then answer the following questions:
%%
%% (1) Find the value of $\sin {\theta}$.
%%
%% (2) Prove that ${\theta} <\frac{5}{12} {\pi}$. However, you can use
%% $\sqrt{2} = 1.414\cdots$ and $\sqrt{3} = 1.732\cdots$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (  11 equality;  52 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   89 (   0   ~;   0   |;  14   &;  74   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   5   !;   4   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_sintheta: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_C ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) )
          = 3.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 4.0 )
        & ( V_sintheta
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_theta: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_C ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) )
          = 3.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 4.0 )
        & ( V_theta
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) )
     => ( $less @ V_theta @ ( $quotient @ ( $product @ 5.0 @ 'Pi/0' ) @ 12.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_sintheta_dot_0: $real] :
      ( V_sintheta_dot_0
      = ( $quotient @ 24.0 @ 25.0 ) ) ),
    answer_to(p1_question,[])).

