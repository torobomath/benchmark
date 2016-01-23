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
%            Number of atoms       :  113 (  11 equality;  52 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   88 (   0   ~;   0   |;  14   &;  73   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   11 (   0 sgn;   5   !;   4   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_sintheta: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_C ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 5 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) )
          = 3 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 4 )
        & ( V_sintheta
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_theta: 'R'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_C ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 5 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) )
          = 3 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 4 )
        & ( V_theta
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) )
     => ( '</2' @ V_theta @ ( '//2' @ ( '*/2' @ 5 @ 'Pi/0' ) @ 12 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_sintheta_dot_0: 'R'] :
      ( V_sintheta_dot_0
      = ( '//2' @ 24 @ 25 ) ) ),
    answer_to(p1_question,[])).
