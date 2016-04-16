%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1989, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-19
%%
%% <PROBLEM-TEXT>
%% In an acute-angled triangle $ABC$ the internal bisector of angle $A$ meets the
%% circumcircle of the triangle again at $A_1$. Points $B_1$ and $C_1$ are defined
%% similarly. Let $A_0$ be the point of intersection of the line $AA_1$ with the
%% external bisectors of angles $B$ and $C$. Points $B_0$ and $C_0$ are defined
%% similarly. Prove that:
%% ¥begin{flushleft}
%% (i) The area of the triangle $A_0B_0C_0$ is twice the area of the hexagon
%% $AC_1BA_1CB_1$.¥¥
%% (ii) The area of the triangle $A_0B_0C_0$ is at least four times the area of the
%% triangle $ABC$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  235 (   1 equality; 133 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :  231 (   0   ~;   0   |;  28   &; 201   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;  20   !;   0   ?;   0   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_S: '2d.Shape',V_A0: '2d.Point',V_B0: '2d.Point',V_C0: '2d.Point',V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_S )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_S )
        & ( '2d.on/2' @ V_A1 @ V_S )
        & ( '2d.on/2' @ V_B1 @ V_S )
        & ( '2d.on/2' @ V_C1 @ V_S )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_A1 ) @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_B1 ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C @ V_C1 ) @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_A0 @ ( '2d.line/2' @ V_A @ V_A1 ) )
        & ( '2d.on/2' @ V_B0 @ ( '2d.line/2' @ V_B @ V_B1 ) )
        & ( '2d.on/2' @ V_C0 @ ( '2d.line/2' @ V_C @ V_C1 ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A0 @ V_B ) @ ( '2d.angle/3' @ V_C @ V_B @ ( '2d.vec-translate/2' @ V_B @ ( '2d.vec/2' @ V_A @ V_B ) ) ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B0 @ V_C ) @ ( '2d.angle/3' @ V_A @ V_C @ ( '2d.vec-translate/2' @ V_C @ ( '2d.vec/2' @ V_B @ V_C ) ) ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C0 @ V_A ) @ ( '2d.angle/3' @ V_B @ V_A @ ( '2d.vec-translate/2' @ V_A @ ( '2d.vec/2' @ V_C @ V_A ) ) ) ) )
     => ( ( $product @ 2.0 @ ( '2d.area-of/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_C1 @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_A1 @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_B1 @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) ) )
        = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A0 @ V_B0 @ V_C0 ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_S: '2d.Shape',V_A0: '2d.Point',V_B0: '2d.Point',V_C0: '2d.Point',V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_S )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_S )
        & ( '2d.on/2' @ V_A1 @ V_S )
        & ( '2d.on/2' @ V_B1 @ V_S )
        & ( '2d.on/2' @ V_C1 @ V_S )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_A1 ) @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_B1 ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C @ V_C1 ) @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_A0 @ ( '2d.line/2' @ V_A @ V_A1 ) )
        & ( '2d.on/2' @ V_B0 @ ( '2d.line/2' @ V_B @ V_B1 ) )
        & ( '2d.on/2' @ V_C0 @ ( '2d.line/2' @ V_C @ V_C1 ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A0 @ V_B ) @ ( '2d.angle/3' @ V_C @ V_B @ ( '2d.vec-translate/2' @ V_B @ ( '2d.vec/2' @ V_A @ V_B ) ) ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B0 @ V_C ) @ ( '2d.angle/3' @ V_A @ V_C @ ( '2d.vec-translate/2' @ V_C @ ( '2d.vec/2' @ V_B @ V_C ) ) ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C0 @ V_A ) @ ( '2d.angle/3' @ V_B @ V_A @ ( '2d.vec-translate/2' @ V_A @ ( '2d.vec/2' @ V_C @ V_A ) ) ) ) )
     => ( $lesseq @ ( $product @ 4.0 @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A0 @ V_B0 @ V_C0 ) ) ) ) )).

