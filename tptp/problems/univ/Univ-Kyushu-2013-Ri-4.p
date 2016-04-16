%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2013, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $S$ be the circle centered at the origin $O$ and passing through
%% the point $A(0, 1)$. When the circle $T$ inscribed in the circle $S$
%% at the point $B(\frac{1}{2}, \frac{\sqrt{3}}{2})$ is in contact with
%% the $y$ axis at the point $C$, answer the following questions:
%%
%% (1) Find the coordinates of the center $D$ and the radius of the
%% circle $T$.
%%
%% (2) Let $l$ be the straight line passing through the point $D$ and
%% parallel to the $x$ axis. Find the volume of the solid obtained by
%% rotating the figure enclosed by the shorter arc
%% $\stackrel{\frown}{AB}$ of the $S$, the shorter arc
%% $\stackrel{\frown}{BC}$ of the circle $T$, and the line segment $AC$
%% around $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  208 (  19 equality;  71 variable)
%            Maximal formula depth :   35 (  16 average)
%            Number of connectives :  164 (   0   ~;   0   |;  34   &; 130   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :;   0   =)
%            Number of variables   :   26 (   0 sgn;   0   !;  20   ?;   6   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_D: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_S: '2d.Shape',V_T: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( '2d.circle-type/1' @ V_S )
        & ( ( '2d.center-of/1' @ V_S )
          = '2d.origin/0' )
        & ( '2d.on/2' @ V_A @ V_S )
        & ( '2d.circle-type/1' @ V_T )
        & ( '2d.is-inscribed-in/2' @ V_T @ V_S )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
        & ( '2d.tangent/3' @ V_S @ V_T @ V_B )
        & ( '2d.tangent/3' @ V_T @ '2d.y-axis/0' @ V_C )
        & ( V_D
          = ( '2d.center-of/1' @ V_T ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_S: '2d.Shape',V_T: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( '2d.circle-type/1' @ V_S )
        & ( ( '2d.center-of/1' @ V_S )
          = '2d.origin/0' )
        & ( '2d.on/2' @ V_A @ V_S )
        & ( '2d.circle-type/1' @ V_T )
        & ( '2d.is-inscribed-in/2' @ V_T @ V_S )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
        & ( '2d.tangent/3' @ V_S @ V_T @ V_B )
        & ( '2d.tangent/3' @ V_T @ '2d.y-axis/0' @ V_C )
        & ( V_r
          = ( '2d.radius-of/1' @ V_T ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_K: '2d.Shape',V_S: '2d.Shape',V_T: '2d.Shape',V_l: '2d.Shape',V_arcAB: '2d.Shape',V_arcBC: '2d.Shape'] :
        ( ( V_K
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( 'cons/2' @ '2d.Shape' @ V_arcAB @ ( 'cons/2' @ '2d.Shape' @ V_arcBC @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( '2d.circle-type/1' @ V_S )
        & ( ( '2d.center-of/1' @ V_S )
          = '2d.origin/0' )
        & ( '2d.on/2' @ V_A @ V_S )
        & ( '2d.circle-type/1' @ V_T )
        & ( '2d.is-inscribed-in/2' @ V_T @ V_S )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
        & ( '2d.tangent/3' @ V_S @ V_T @ V_B )
        & ( '2d.tangent/3' @ V_T @ '2d.y-axis/0' @ V_C )
        & ( V_D
          = ( '2d.center-of/1' @ V_T ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.parallel/2' @ V_l @ '2d.x-axis/0' )
        & ( '2d.on/2' @ V_D @ V_l )
        & ( V_arcAB
          = ( '2d.minor-arc/1' @ ( '2d.arc/3' @ ( '2d.center-of/1' @ V_S ) @ V_A @ V_B ) ) )
        & ( V_arcBC
          = ( '2d.minor-arc/1' @ ( '2d.arc/3' @ ( '2d.center-of/1' @ V_T ) @ V_B @ V_C ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_K ) @ ( '3d.import-2d-shape/1' @ V_l ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_D_dot_0: '2d.Point'] :
      ( V_D_dot_0
      = ( '2d.point/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 3.0 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( $quotient @ 1.0 @ 3.0 ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $difference @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ 'Pi/0' ) @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 18.0 ) @ ( '^/2' @ 'Pi/0' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

