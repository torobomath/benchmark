%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2009, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Consider the isosceles triangle $ABC$ with $\angle A$ as the right
%% angle. Let $M$ be the middle point of the side $BC$, and $P$, the
%% point that internally divides the side $BC$ in a ratio of $1 : 3$.
%% Let $Q$ and $R$ be the intersections of the sides $AB$ and $AC$ and
%% the straight line passing through the point $P$ and parallel to the
%% side $BC$, respectively. Answer the following questions:
%%
%% (1) Find $\cos\angle QMR$.
%%
%% (2) Judge which is larger, twice $\angle QMR$ or $\angle QMB$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  120 (   4 equality;  67 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  109 (   0   ~;   0   |;  21   &;  87   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   18 (   0 sgn;   8   !;   8   ?;   2   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosQMR: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( '2d.is-isosceles-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_M ) @ 1 @ 3 )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.parallel/2' @ V_l @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( V_cosQMR
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_M @ V_R ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
      ( ( ( '2d.is-isosceles-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_M ) @ 1 @ 3 )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.parallel/2' @ V_l @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ V_A @ V_C ) ) )
     => ( '>/2' @ ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_M @ V_R ) ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_M @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosQMR_dot_0: 'R'] :
      ( V_cosQMR_dot_0
      = ( '//2' @ 4 @ 5 ) ) ),
    answer_to(p1_question,[])).
