%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2005, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Consider the quadrilateral $ABCD$ whose interior angles are all
%% smaller than $180^{\circ}$. Let the side lengths $AB = BC = r$, and
%% $AD = 2 r$. Assume that the point $E$ is on the side $CD$, and the
%% areas of the three triangles $\triangle ABC$, $\triangle ACE$, and
%% $\triangle ADE$ are all the same. Let ${\alpha} =\angle BAC$ and
%% ${\beta} =\angle CAD$.
%%
%% (1) Prove that ${\alpha} = {\beta}$.
%%
%% (2) Assuming that $\cos\angle DAB =\frac{3}{5}$, find the value of
%% $\sin\angle CAE$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  167 (  14 equality;  95 variable)
%            Maximal formula depth :   26 (  19 average)
%            Number of connectives :  136 (   0   ~;   0   |;  23   &; 112   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   16 (   0 sgn;   8   !;   6   ?;   2   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_r: 'R',V_alpha: '2d.Angle',V_beta: '2d.Angle'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = V_r )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = V_r )
        & ( ( '2d.distance/2' @ V_A @ V_D )
          = ( '*/2' @ 2 @ V_r ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_D @ V_E ) ) )
        & ( V_alpha
          = ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_beta
          = ( '2d.angle/3' @ V_C @ V_A @ V_D ) ) )
     => ( '2d.same-angle/2' @ V_alpha @ V_beta ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_CAE: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_r: 'R'] :
        ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = V_r )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = V_r )
        & ( ( '2d.distance/2' @ V_A @ V_D )
          = ( '*/2' @ 2 @ V_r ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_D @ V_E ) ) )
        & ( V_CAE
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_E ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_CAE_dot_0: 'R'] :
      ( V_CAE_dot_0
      = ( '//2' @ 1 @ ( 'sqrt/1' @ 17 ) ) ) ),
    answer_to(p2_question,[])).
