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
%            Number of atoms       :  185 (  15 equality;  98 variable)
%            Maximal formula depth :   26 (  19 average)
%            Number of connectives :  152 (   0   ~;   0   |;  24   &; 127   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   8   !;   6   ?;   2   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_r: $real,V_alpha: '2d.Angle',V_beta: '2d.Angle'] :
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
          = ( $product @ 2.0 @ V_r ) )
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
    ( 'find/1' @ $real
    @ ^ [V_sin_CAE: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_r: $real] :
        ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( $less @ 0.0 @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( $less @ 0.0 @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) ) )
        & ( $less @ 0.0 @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) ) )
        & ( $less @ 0.0 @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = V_r )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = V_r )
        & ( ( '2d.distance/2' @ V_A @ V_D )
          = ( $product @ 2.0 @ V_r ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_C @ V_E ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_D @ V_E ) ) )
        & ( ( $quotient @ 3.0 @ 5.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
        & ( V_sin_CAE
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_E ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_sin_CAE_dot_0: $real] :
      ( V_sin_CAE_dot_0
      = ( $quotient @ 1.0 @ ( 'sqrt/1' @ 17.0 ) ) ) ),
    answer_to(p2_question,[])).

